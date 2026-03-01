import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';
import 'group_state.dart';

/// Provides a Cloud SSO Group resource.
///
/// For information about Cloud SSO Group and how to use it, see [What is Group](https://www.alibabacloud.com/help/en/cloudsso/latest/api-cloudsso-2021-05-15-creategroup).
///
/// > **NOTE:** Available since v1.138.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.cloudsso.getDirectories({});
/// const defaultDirectory: alicloud.cloudsso.Directory[] = [];
/// _default.then(_default => _default.ids).length.apply(length => {
///     for (const range = {value: 0}; range.value < (length > 0 ? 0 : 1); range.value++) {
///         defaultDirectory.push(new alicloud.cloudsso.Directory(`default-${range.value}`, {directoryName: name}));
///     }
/// });
/// const directoryId = pulumi.all([_default.then(_default => _default.ids).length, _default, std.concat({
///     input: [
///         defaultDirectory.map(__item => __item.id),
///         [""],
///     ],
/// })]).apply(([length, _default, invoke]) => length > 0 ? _default.ids?.[0] : invoke.result?.[0]);
/// const defaultGroup = new alicloud.cloudsso.Group("default", {
///     directoryId: directoryId,
///     groupName: name,
///     description: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.cloudsso.get_directories()
/// default_directory = []
/// def create_default(range_body):
///     for range in [{"value": i} for i in range(0, range_body)]:
///         default_directory.append(alicloud.cloudsso.Directory(f"default-{range['value']}", directory_name=name))
///
/// len(default.ids).apply(lambda resolved_outputs: create_default(0 if resolved_outputs['length'] > 0 else 1))
/// directory_id = len(default.ids).apply(lambda length: default.ids[0] if length > 0 else std.concat(input=[
///     [__item.id for __item in default_directory],
///     [""],
/// ]).result[0])
/// default_group = alicloud.cloudsso.Group("default",
///     directory_id=directory_id,
///     group_name=name,
///     description=name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.CloudSso.GetDirectories.Invoke();
///
///     var defaultDirectory = new List<AliCloud.CloudSso.Directory>();
///     for (var rangeIndex = 0; rangeIndex < @default.Apply(@default => @default.Apply(getDirectoriesResult => getDirectoriesResult.Ids)).Length.Apply(length => length > 0 ? 0 : 1); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultDirectory.Add(new AliCloud.CloudSso.Directory($"default-{range.Value}", new()
///         {
///             DirectoryName = name,
///         }));
///     }
///     var directoryId = Output.Tuple(@default.Apply(@default => @default.Apply(getDirectoriesResult => getDirectoriesResult.Ids)).Length, @default, Std.Concat.Invoke(new()
///     {
///         Input = new[]
///         {
///             defaultDirectory.Select(__item => __item.Id).ToList(),
///             new[]
///             {
///                 "",
///             },
///         },
///     })).Apply(values =>
///     {
///         var length = values.Item1;
///         var @default = values.Item2;
///         var invoke = values.Item3;
///         return length > 0 ? @default.Apply(getDirectoriesResult => getDirectoriesResult.Ids[0]) : invoke.Result[0];
///     });
///
///     var defaultGroup = new AliCloud.CloudSso.Group("default", new()
///     {
///         DirectoryId = directoryId,
///         GroupName = name,
///         Description = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudsso"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "tf-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// _default, err := cloudsso.GetDirectories(ctx, &cloudsso.GetDirectoriesArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// var tmp0 float64
/// if length > 0 {
/// tmp0 = 0
/// } else {
/// tmp0 = 1
/// }
/// var defaultDirectory []*cloudsso.Directory
/// for index := 0; index < float64(len(_default.Ids).ApplyT(func(length int) (float64, error) {
/// return tmp0, nil
/// }).(pulumi.Float64Output)); index++ {
///     key0 := index
///     _ := index
/// __res, err := cloudsso.NewDirectory(ctx, fmt.Sprintf("default-%v", key0), &cloudsso.DirectoryArgs{
/// DirectoryName: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// defaultDirectory = append(defaultDirectory, __res)
/// }
/// var tmp1 *interface{}
/// if length > 0 {
/// tmp1 = _default.Ids[0]
/// } else {
/// tmp1 = std.Concat(ctx, &std.ConcatArgs{
/// Input: pulumi.StringArrayArray{
/// %!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:13,12-34),
/// []string{
/// "",
/// },
/// },
/// }, nil).Result[0]
/// }
/// directoryId := len(_default.Ids).ApplyT(func(length int) (*interface{}, error) {
/// return &tmp1, nil
/// }).(pulumi.Interface{}PtrOutput)
/// _, err = cloudsso.NewGroup(ctx, "default", &cloudsso.GroupArgs{
/// DirectoryId: pulumi.Any(directoryId),
/// GroupName: pulumi.String(name),
/// Description: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.cloudsso.CloudssoFunctions;
/// import com.pulumi.alicloud.cloudsso.inputs.GetDirectoriesArgs;
/// import com.pulumi.alicloud.cloudsso.Directory;
/// import com.pulumi.alicloud.cloudsso.DirectoryArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ConcatArgs;
/// import com.pulumi.alicloud.cloudsso.Group;
/// import com.pulumi.alicloud.cloudsso.GroupArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf-example");
///         final var default = CloudssoFunctions.getDirectories(GetDirectoriesArgs.builder()
///             .build());
///
///         for (var i = 0; i < default_.ids().length().applyValue(_length -> _length > 0 ? 0 : 1); i++) {
///             new Directory("defaultDirectory-" + i, DirectoryArgs.builder()
///                 .directoryName(name)
///                 .build());
///
///
/// }
///         final var directoryId = default_.ids().length().applyValue(_length -> _length > 0 ? default_.ids()[0] : StdFunctions.concat(ConcatArgs.builder()
///             .input(
///                 defaultDirectory.stream().map(element -> element.id()).collect(toList()),
///                 "")
///             .build()).result()[0]);
///
///         var defaultGroup = new Group("defaultGroup", GroupArgs.builder()
///             .directoryId(directoryId)
///             .groupName(name)
///             .description(name)
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud SSO Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudsso/group:Group example <directory_id>:<group_id>
/// ```
class Group extends pulumi.CustomResource {
  /// The Description of the group. The description can be up to `1024` characters long.
  late final pulumi.Output<String?> description;
  /// The ID of the Directory.
  late final pulumi.Output<String> directoryId;
  /// The GroupId of the group.
  late final pulumi.Output<String> groupId;
  /// The Name of the group. The name must be `1` to `128` characters in length and can contain letters, digits, periods (.), underscores (_), and hyphens (-).
  late final pulumi.Output<String> groupName;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_cloudsso_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudsso/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.directoryId = registerOutput<String>('directoryId');
    this.groupId = registerOutput<String>('groupId');
    this.groupName = registerOutput<String>('groupName');
  }

  /// Gets an existing [Group] resource's state with the given [name] and [id].
  static Group get(
    String name,
    pulumi.Input<String> id, {
    GroupState? state,
  }) {
    return Group._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Group._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudsso/group:Group',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.directoryId = registerOutput<String>('directoryId');
    this.groupId = registerOutput<String>('groupId');
    this.groupName = registerOutput<String>('groupName');
  }
}
