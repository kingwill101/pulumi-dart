import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_configuration_provisioning_args.dart';
import 'access_configuration_provisioning_state.dart';

/// Provides a Cloud SSO Access Configuration Provisioning resource.
///
/// For information about Cloud SSO Access Configuration Provisioning and how to use it, see [What is Access Configuration Provisioning](https://www.alibabacloud.com/help/en/cloudsso/latest/api-cloudsso-2021-05-15-addpermissionpolicytoaccessconfiguration).
///
/// > **NOTE:** Available since v1.148.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.cloudsso.getDirectories({});
/// const defaultGetResourceDirectories = alicloud.resourcemanager.getResourceDirectories({});
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
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultUser = new alicloud.cloudsso.User("default", {
///     directoryId: directoryId,
///     userName: `${name}-${defaultInteger.result}`,
/// });
/// const defaultAccessConfiguration = new alicloud.cloudsso.AccessConfiguration("default", {
///     accessConfigurationName: `${name}-${defaultInteger.result}`,
///     directoryId: directoryId,
/// });
/// const defaultAccessConfigurationProvisioning = new alicloud.cloudsso.AccessConfigurationProvisioning("default", {
///     directoryId: directoryId,
///     accessConfigurationId: defaultAccessConfiguration.accessConfigurationId,
///     targetType: "RD-Account",
///     targetId: defaultGetResourceDirectories.then(defaultGetResourceDirectories => defaultGetResourceDirectories.directories?.[0]?.masterAccountId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.cloudsso.get_directories()
/// default_get_resource_directories = alicloud.resourcemanager.get_resource_directories()
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
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_user = alicloud.cloudsso.User("default",
///     directory_id=directory_id,
///     user_name=f"{name}-{default_integer['result']}")
/// default_access_configuration = alicloud.cloudsso.AccessConfiguration("default",
///     access_configuration_name=f"{name}-{default_integer['result']}",
///     directory_id=directory_id)
/// default_access_configuration_provisioning = alicloud.cloudsso.AccessConfigurationProvisioning("default",
///     directory_id=directory_id,
///     access_configuration_id=default_access_configuration.access_configuration_id,
///     target_type="RD-Account",
///     target_id=default_get_resource_directories.directories[0].master_account_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.CloudSso.GetDirectories.Invoke();
///
///     var defaultGetResourceDirectories = AliCloud.ResourceManager.GetResourceDirectories.Invoke();
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
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultUser = new AliCloud.CloudSso.User("default", new()
///     {
///         DirectoryId = directoryId,
///         UserName = $"{name}-{defaultInteger.Result}",
///     });
///
///     var defaultAccessConfiguration = new AliCloud.CloudSso.AccessConfiguration("default", new()
///     {
///         AccessConfigurationName = $"{name}-{defaultInteger.Result}",
///         DirectoryId = directoryId,
///     });
///
///     var defaultAccessConfigurationProvisioning = new AliCloud.CloudSso.AccessConfigurationProvisioning("default", new()
///     {
///         DirectoryId = directoryId,
///         AccessConfigurationId = defaultAccessConfiguration.AccessConfigurationId,
///         TargetType = "RD-Account",
///         TargetId = defaultGetResourceDirectories.Apply(getResourceDirectoriesResult => getResourceDirectoriesResult.Directories[0]?.MasterAccountId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudsso"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// defaultGetResourceDirectories, err := resourcemanager.GetResourceDirectories(ctx, &resourcemanager.GetResourceDirectoriesArgs{
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
/// %!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:14,12-34),
/// []string{
/// "",
/// },
/// },
/// }, nil).Result[0]
/// }
/// directoryId := len(_default.Ids).ApplyT(func(length int) (*interface{}, error) {
/// return &tmp1, nil
/// }).(pulumi.Interface{}PtrOutput)
/// defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// Min: 10000,
/// Max: 99999,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudsso.NewUser(ctx, "default", &cloudsso.UserArgs{
/// DirectoryId: pulumi.Any(directoryId),
/// UserName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// })
/// if err != nil {
/// return err
/// }
/// defaultAccessConfiguration, err := cloudsso.NewAccessConfiguration(ctx, "default", &cloudsso.AccessConfigurationArgs{
/// AccessConfigurationName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// DirectoryId: pulumi.Any(directoryId),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudsso.NewAccessConfigurationProvisioning(ctx, "default", &cloudsso.AccessConfigurationProvisioningArgs{
/// DirectoryId: pulumi.Any(directoryId),
/// AccessConfigurationId: defaultAccessConfiguration.AccessConfigurationId,
/// TargetType: pulumi.String("RD-Account"),
/// TargetId: pulumi.String(defaultGetResourceDirectories.Directories[0].MasterAccountId),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceDirectoriesArgs;
/// import com.pulumi.alicloud.cloudsso.Directory;
/// import com.pulumi.alicloud.cloudsso.DirectoryArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ConcatArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.cloudsso.User;
/// import com.pulumi.alicloud.cloudsso.UserArgs;
/// import com.pulumi.alicloud.cloudsso.AccessConfiguration;
/// import com.pulumi.alicloud.cloudsso.AccessConfigurationArgs;
/// import com.pulumi.alicloud.cloudsso.AccessConfigurationProvisioning;
/// import com.pulumi.alicloud.cloudsso.AccessConfigurationProvisioningArgs;
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
///         final var defaultGetResourceDirectories = ResourcemanagerFunctions.getResourceDirectories(GetResourceDirectoriesArgs.builder()
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultUser = new User("defaultUser", UserArgs.builder()
///             .directoryId(directoryId)
///             .userName(String.format("%s-%s", name,defaultInteger.result()))
///             .build());
///
///         var defaultAccessConfiguration = new AccessConfiguration("defaultAccessConfiguration", AccessConfigurationArgs.builder()
///             .accessConfigurationName(String.format("%s-%s", name,defaultInteger.result()))
///             .directoryId(directoryId)
///             .build());
///
///         var defaultAccessConfigurationProvisioning = new AccessConfigurationProvisioning("defaultAccessConfigurationProvisioning", AccessConfigurationProvisioningArgs.builder()
///             .directoryId(directoryId)
///             .accessConfigurationId(defaultAccessConfiguration.accessConfigurationId())
///             .targetType("RD-Account")
///             .targetId(defaultGetResourceDirectories.directories()[0].masterAccountId())
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
/// Cloud SSO Access Configuration Provisioning can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudsso/accessConfigurationProvisioning:AccessConfigurationProvisioning example <directory_id>:<access_configuration_id>:<target_type>:<target_id>
/// ```
class AccessConfigurationProvisioning extends pulumi.CustomResource {
  /// The Access configuration ID.
  late final pulumi.Output<String> accessConfigurationId;
  /// The ID of the Directory.
  late final pulumi.Output<String> directoryId;
  /// The status of the resource. Valid values: `Provisioned`, `ReprovisionRequired` and `DeprovisionFailed`.
  late final pulumi.Output<String> status;
  /// The ID of the target to create the resource range.
  late final pulumi.Output<String> targetId;
  /// The type of the resource range target to be accessed. Valid values: `RD-Account`.
  late final pulumi.Output<String> targetType;

  /// Creates a new [AccessConfigurationProvisioning].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessConfigurationProvisioning]. {@macro pulumi_cloudsso_access_configuration_provisioning_access_configuration_provisioning_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessConfigurationProvisioning(
    String name, {
    AccessConfigurationProvisioningArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudsso/accessConfigurationProvisioning:AccessConfigurationProvisioning',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessConfigurationId = registerOutput<String>('accessConfigurationId');
    this.directoryId = registerOutput<String>('directoryId');
    this.status = registerOutput<String>('status');
    this.targetId = registerOutput<String>('targetId');
    this.targetType = registerOutput<String>('targetType');
  }

  /// Gets an existing [AccessConfigurationProvisioning] resource's state with the given [name] and [id].
  static AccessConfigurationProvisioning get(
    String name,
    pulumi.Input<String> id, {
    AccessConfigurationProvisioningState? state,
  }) {
    return AccessConfigurationProvisioning._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessConfigurationProvisioning._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudsso/accessConfigurationProvisioning:AccessConfigurationProvisioning',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessConfigurationId = registerOutput<String>('accessConfigurationId');
    this.directoryId = registerOutput<String>('directoryId');
    this.status = registerOutput<String>('status');
    this.targetId = registerOutput<String>('targetId');
    this.targetType = registerOutput<String>('targetType');
  }
}
