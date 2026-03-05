import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_state.dart';

/// Provides a Cloud Sso User resource.
///
///
///
/// For information about Cloud Sso User and how to use it, see [What is User](https://www.alibabacloud.com/help/en/cloudsso/latest/api-cloudsso-2021-05-15-createuser).
///
/// &gt; **NOTE:** Available since v1.140.0.
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
/// import * as random from "@pulumi/random";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.cloudsso.getDirectories({});
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
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
/// const defaultUser = new alicloud.cloudsso.User("default", {
///     directoryId: directoryId,
///     userName: `${name}-${defaultInteger.result}`,
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
///     name = "terraform-example"
/// default = alicloud.cloudsso.get_directories()
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
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
/// default_user = alicloud.cloudsso.User("default",
///     directory_id=directory_id,
///     user_name=f"{name}-{default_integer['result']}")
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.CloudSso.GetDirectories.Invoke();
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
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
///     var defaultUser = new AliCloud.CloudSso.User("default", new()
///     {
///         DirectoryId = directoryId,
///         UserName = $"{name}-{defaultInteger.Result}",
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
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// _default, err := cloudsso.GetDirectories(ctx, &cloudsso.GetDirectoriesArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// Min: 10000,
/// Max: 99999,
/// })
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
/// %!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:26,12-34),
/// []string{
/// "",
/// },
/// },
/// }, nil).Result[0]
/// }
/// directoryId := len(_default.Ids).ApplyT(func(length int) (*interface{}, error) {
/// return &tmp1, nil
/// }).(pulumi.Interface{}PtrOutput)
/// _, err = cloudsso.NewUser(ctx, "default", &cloudsso.UserArgs{
/// DirectoryId: pulumi.Any(directoryId),
/// UserName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.cloudsso.Directory;
/// import com.pulumi.alicloud.cloudsso.DirectoryArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ConcatArgs;
/// import com.pulumi.alicloud.cloudsso.User;
/// import com.pulumi.alicloud.cloudsso.UserArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = CloudssoFunctions.getDirectories(GetDirectoriesArgs.builder()
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
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
///         var defaultUser = new User("defaultUser", UserArgs.builder()
///             .directoryId(directoryId)
///             .userName(String.format("%s-%s", name,defaultInteger.result()))
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
/// Cloud Sso User can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudsso/user:User example <directory_id>:<user_id>
/// ```
class User extends pulumi.CustomResource {
  /// (Available since v1.262.1) The time when the user was created.
  late final pulumi.Output<String> createTime;
  /// The description of the user. The description can be up to 1,024 characters in length.
  late final pulumi.Output<String?> description;
  /// The ID of the directory.
  late final pulumi.Output<String> directoryId;
  /// The display name of the user. The display name can be up to 256 characters in length.
  late final pulumi.Output<String?> displayName;
  /// The email address of the user. The email address must be unique within the directory. The email address can be up to 128 characters in length.
  late final pulumi.Output<String?> email;
  /// The first name of the user. The first name can be up to 64 characters in length.
  late final pulumi.Output<String?> firstName;
  /// The last name of the user. The last name can be up to 64 characters in length.
  late final pulumi.Output<String?> lastName;
  /// Specifies whether to enable MFA for the user. Default value: `Enabled`. Valid values: `Enabled`, `Disabled`.
  late final pulumi.Output<String> mfaAuthenticationSettings;
  /// The new password. The password must contain the following types of characters: uppercase letters, lowercase letters, digits, and special characters. The password must be 8 to 32 characters in length.
  late final pulumi.Output<String?> password;
  /// The status of the user. Default value: `Enabled`. Valid values: `Enabled`, `Disabled`.
  late final pulumi.Output<String> status;
  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the user.
  late final pulumi.Output<String> userId;
  /// The username of the user. The username can contain digits, letters, and the following special characters: @_-. The username can be up to 64 characters in length.
  late final pulumi.Output<String> userName;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_cloudsso_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudsso/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    directoryId = registerOutput<String>('directoryId');
    displayName = registerOutput<String?>('displayName');
    email = registerOutput<String?>('email');
    firstName = registerOutput<String?>('firstName');
    lastName = registerOutput<String?>('lastName');
    mfaAuthenticationSettings = registerOutput<String>('mfaAuthenticationSettings');
    password = registerOutput<String?>('password');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    userId = registerOutput<String>('userId');
    userName = registerOutput<String>('userName');
  }

  /// Gets an existing [User] resource's state with the given [name] and [id].
  static User get(
    String name,
    pulumi.Input<String> id, {
    UserState? state,
  }) {
    return User._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  User._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudsso/user:User',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    directoryId = registerOutput<String>('directoryId');
    displayName = registerOutput<String?>('displayName');
    email = registerOutput<String?>('email');
    firstName = registerOutput<String?>('firstName');
    lastName = registerOutput<String?>('lastName');
    mfaAuthenticationSettings = registerOutput<String>('mfaAuthenticationSettings');
    password = registerOutput<String?>('password');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    userId = registerOutput<String>('userId');
    userName = registerOutput<String>('userName');
  }
}
