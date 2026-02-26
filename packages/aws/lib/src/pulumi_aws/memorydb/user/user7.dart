import 'package:pulumi/pulumi.dart';
import '../user_authentication_mode/user_authentication_mode2.dart';
import 'user_args7.dart';

/// Provides a MemoryDB User.
///
/// More information about users and ACL-s can be found in the [MemoryDB User Guide](https://docs.aws.amazon.com/memorydb/latest/devguide/clusters.acls.html).
///
/// > **Note:** All arguments including the username and passwords will be stored in the raw state as plain-text.
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as random from "@pulumi/random";
///
/// const example = new random.index.Password("example", {length: 16});
/// const exampleUser = new aws.memorydb.User("example", {
/// userName: "my-user",
/// accessString: "on ~* &* +@all",
/// authenticationMode: {
/// type: "password",
/// passwords: [example.result],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_random as random
///
/// example = random.index.Password("example", length=16)
/// example_user = aws.memorydb.User("example",
/// user_name="my-user",
/// access_string="on ~* &* +@all",
/// authentication_mode={
/// "type": "password",
/// "passwords": [example["result"]],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Random.Index.Password("example", new()
/// {
/// Length = 16,
/// });
///
/// var exampleUser = new Aws.MemoryDb.User("example", new()
/// {
/// UserName = "my-user",
/// AccessString = "on ~* &* +@all",
/// AuthenticationMode = new Aws.MemoryDb.Inputs.UserAuthenticationModeArgs
/// {
/// Type = "password",
/// Passwords = new[]
/// {
/// example.Result,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/memorydb"
/// "github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := random.NewPassword(ctx, "example", &random.PasswordArgs{
/// Length: 16,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = memorydb.NewUser(ctx, "example", &memorydb.UserArgs{
/// UserName:     pulumi.String("my-user"),
/// AccessString: pulumi.String("on ~* &* +@all"),
/// AuthenticationMode: &memorydb.UserAuthenticationModeArgs{
/// Type: pulumi.String("password"),
/// Passwords: pulumi.StringArray{
/// example.Result,
/// },
/// },
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
/// import com.pulumi.random.Password;
/// import com.pulumi.random.PasswordArgs;
/// import com.pulumi.aws.memorydb.User;
/// import com.pulumi.aws.memorydb.UserArgs;
/// import com.pulumi.aws.memorydb.inputs.UserAuthenticationModeArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Password("example", PasswordArgs.builder()
/// .length(16)
/// .build());
///
/// var exampleUser = new User("exampleUser", UserArgs.builder()
/// .userName("my-user")
/// .accessString("on ~* &* +@all")
/// .authenticationMode(UserAuthenticationModeArgs.builder()
/// .type("password")
/// .passwords(example.result())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: random:Password
/// properties:
/// length: 16
/// exampleUser:
/// type: aws:memorydb:User
/// name: example
/// properties:
/// userName: my-user
/// accessString: on ~* &* +@all
/// authenticationMode:
/// type: password
/// passwords:
/// - ${example.result}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import a user using the <span pulumi-lang-nodejs="`userName`" pulumi-lang-dotnet="`UserName`" pulumi-lang-go="`userName`" pulumi-lang-python="`user_name`" pulumi-lang-yaml="`userName`" pulumi-lang-java="`userName`">`user_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/user:User example my-user
/// ```
///
/// The <span pulumi-lang-nodejs="`passwords`" pulumi-lang-dotnet="`Passwords`" pulumi-lang-go="`passwords`" pulumi-lang-python="`passwords`" pulumi-lang-yaml="`passwords`" pulumi-lang-java="`passwords`">`passwords`</span> are not available for imported resources, as this information cannot be read back from the MemoryDB API.
class User7 extends CustomResource {
  /// Access permissions string used for this user.
  late final Output<String> accessString;

  /// ARN of the user.
  late final Output<String> arn;

  /// Denotes the user's authentication properties. Detailed below.
  late final Output<UserAuthenticationMode2> authenticationMode;

  /// Minimum engine version supported for the user.
  late final Output<String> minimumEngineVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Name of the MemoryDB user. Up to 40 characters.
  ///
  /// The following arguments are optional:
  late final Output<String> userName;

  User7(
    String name, {
    UserArgs7? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/user:User',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessString = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.authenticationMode = Output.createUnknown<UserAuthenticationMode2>();
    this.minimumEngineVersion = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.userName = Output.createUnknown<String>();
  }
}
