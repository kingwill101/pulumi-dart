import 'package:pulumi/pulumi.dart';
import 'random_password_args.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as random from "@pulumi/random";
///
/// const password = new random.RandomPassword("password", {
/// length: 16,
/// special: true,
/// overrideSpecial: "!#$%&*()-_=+[]{}<>:?",
/// });
/// const example = new aws.index.DbInstance("example", {
/// instanceClass: "db.t3.micro",
/// allocatedStorage: 64,
/// engine: "mysql",
/// username: "someone",
/// password: password.result,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_random as random
///
/// password = random.RandomPassword("password",
/// length=16,
/// special=True,
/// override_special="!#$%&*()-_=+[]{}<>:?")
/// example = aws.index.DbInstance("example",
/// instance_class=db.t3.micro,
/// allocated_storage=64,
/// engine=mysql,
/// username=someone,
/// password=password.result)
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
/// var password = new Random.RandomPassword("password", new()
/// {
/// Length = 16,
/// Special = true,
/// OverrideSpecial = "!#$%&*()-_=+[]{}<>:?",
/// });
///
/// var example = new Aws.Index.DbInstance("example", new()
/// {
/// InstanceClass = "db.t3.micro",
/// AllocatedStorage = 64,
/// Engine = "mysql",
/// Username = "someone",
/// Password = password.Result,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// password, err := random.NewRandomPassword(ctx, "password", &random.RandomPasswordArgs{
/// Length:          pulumi.Int(16),
/// Special:         pulumi.Bool(true),
/// OverrideSpecial: pulumi.String("!#$%&*()-_=+[]{}<>:?"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = aws.NewDbInstance(ctx, "example", &aws.DbInstanceArgs{
/// InstanceClass:    "db.t3.micro",
/// AllocatedStorage: 64,
/// Engine:           "mysql",
/// Username:         "someone",
/// Password:         password.Result,
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
/// import com.pulumi.random.RandomPassword;
/// import com.pulumi.random.RandomPasswordArgs;
/// import com.pulumi.aws.DbInstance;
/// import com.pulumi.aws.DbInstanceArgs;
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
/// var password = new RandomPassword("password", RandomPasswordArgs.builder()
/// .length(16)
/// .special(true)
/// .overrideSpecial("!#$%&*()-_=+[]{}<>:?")
/// .build());
///
/// var example = new DbInstance("example", DbInstanceArgs.builder()
/// .instanceClass("db.t3.micro")
/// .allocatedStorage(64)
/// .engine("mysql")
/// .username("someone")
/// .password(password.result())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// password:
/// type: random:RandomPassword
/// properties:
/// length: 16
/// special: true
/// overrideSpecial: '!#$%&*()-_=+[]{}<>:?'
/// example:
/// type: aws:DbInstance
/// properties:
/// instanceClass: db.t3.micro
/// allocatedStorage: 64
/// engine: mysql
/// username: someone
/// password: ${password.result}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// You can import external passwords into your Pulumi programs as follows:
///
/// ```sh<break>
/// $ import random:index/randomPassword:RandomPassword newPassword supersecret
/// <break>```
///
/// This command will encode the `supersecret` token in Pulumi state and generate a code suggestion to
/// include a new RandomPassword resource in your Pulumi program. Include the suggested code and do a
/// `pulumi up`. Your secret password is now securely stored in Pulumi, and you can reference it in your
/// Pulumi program as `newPassword.result`.
/// ```
class RandomPassword extends CustomResource {
  /// A bcrypt hash of the generated random string. **NOTE**: If the generated random string is greater than 72 bytes in length, <span pulumi-lang-nodejs="`bcryptHash`" pulumi-lang-dotnet="`BcryptHash`" pulumi-lang-go="`bcryptHash`" pulumi-lang-python="`bcrypt_hash`" pulumi-lang-yaml="`bcryptHash`" pulumi-lang-java="`bcryptHash`">`bcrypt_hash`</span> will contain a hash of the first 72 bytes.
  late final Output<String> bcryptHash;

  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  late final Output<Map<String, String>?> keepers;

  /// The length of the string desired. The minimum value for length is 1 and, length must also be >= (<span pulumi-lang-nodejs="`minUpper`" pulumi-lang-dotnet="`MinUpper`" pulumi-lang-go="`minUpper`" pulumi-lang-python="`min_upper`" pulumi-lang-yaml="`minUpper`" pulumi-lang-java="`minUpper`">`min_upper`</span> + <span pulumi-lang-nodejs="`minLower`" pulumi-lang-dotnet="`MinLower`" pulumi-lang-go="`minLower`" pulumi-lang-python="`min_lower`" pulumi-lang-yaml="`minLower`" pulumi-lang-java="`minLower`">`min_lower`</span> + <span pulumi-lang-nodejs="`minNumeric`" pulumi-lang-dotnet="`MinNumeric`" pulumi-lang-go="`minNumeric`" pulumi-lang-python="`min_numeric`" pulumi-lang-yaml="`minNumeric`" pulumi-lang-java="`minNumeric`">`min_numeric`</span> + <span pulumi-lang-nodejs="`minSpecial`" pulumi-lang-dotnet="`MinSpecial`" pulumi-lang-go="`minSpecial`" pulumi-lang-python="`min_special`" pulumi-lang-yaml="`minSpecial`" pulumi-lang-java="`minSpecial`">`min_special`</span>).
  late final Output<int> length;

  /// Include lowercase alphabet characters in the result. Default value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool> lower;

  /// Minimum number of lowercase alphabet characters in the result. Default value is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  late final Output<int> minLower;

  /// Minimum number of numeric characters in the result. Default value is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  late final Output<int> minNumeric;

  /// Minimum number of special characters in the result. Default value is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  late final Output<int> minSpecial;

  /// Minimum number of uppercase alphabet characters in the result. Default value is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  late final Output<int> minUpper;

  /// Include numeric characters in the result. Default value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. If <span pulumi-lang-nodejs="`number`" pulumi-lang-dotnet="`Number`" pulumi-lang-go="`number`" pulumi-lang-python="`number`" pulumi-lang-yaml="`number`" pulumi-lang-java="`number`">`number`</span>, <span pulumi-lang-nodejs="`upper`" pulumi-lang-dotnet="`Upper`" pulumi-lang-go="`upper`" pulumi-lang-python="`upper`" pulumi-lang-yaml="`upper`" pulumi-lang-java="`upper`">`upper`</span>, <span pulumi-lang-nodejs="`lower`" pulumi-lang-dotnet="`Lower`" pulumi-lang-go="`lower`" pulumi-lang-python="`lower`" pulumi-lang-yaml="`lower`" pulumi-lang-java="`lower`">`lower`</span>, and <span pulumi-lang-nodejs="`special`" pulumi-lang-dotnet="`Special`" pulumi-lang-go="`special`" pulumi-lang-python="`special`" pulumi-lang-yaml="`special`" pulumi-lang-java="`special`">`special`</span> are all configured, at least one of them must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. **NOTE**: This is deprecated, use <span pulumi-lang-nodejs="`numeric`" pulumi-lang-dotnet="`Numeric`" pulumi-lang-go="`numeric`" pulumi-lang-python="`numeric`" pulumi-lang-yaml="`numeric`" pulumi-lang-java="`numeric`">`numeric`</span> instead.
  late final Output<bool> number;

  /// Include numeric characters in the result. Default value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. If <span pulumi-lang-nodejs="`numeric`" pulumi-lang-dotnet="`Numeric`" pulumi-lang-go="`numeric`" pulumi-lang-python="`numeric`" pulumi-lang-yaml="`numeric`" pulumi-lang-java="`numeric`">`numeric`</span>, <span pulumi-lang-nodejs="`upper`" pulumi-lang-dotnet="`Upper`" pulumi-lang-go="`upper`" pulumi-lang-python="`upper`" pulumi-lang-yaml="`upper`" pulumi-lang-java="`upper`">`upper`</span>, <span pulumi-lang-nodejs="`lower`" pulumi-lang-dotnet="`Lower`" pulumi-lang-go="`lower`" pulumi-lang-python="`lower`" pulumi-lang-yaml="`lower`" pulumi-lang-java="`lower`">`lower`</span>, and <span pulumi-lang-nodejs="`special`" pulumi-lang-dotnet="`Special`" pulumi-lang-go="`special`" pulumi-lang-python="`special`" pulumi-lang-yaml="`special`" pulumi-lang-java="`special`">`special`</span> are all configured, at least one of them must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool> numeric;

  /// Supply your own list of special characters to use for string generation.  This overrides the default character list in the special argument.  The <span pulumi-lang-nodejs="`special`" pulumi-lang-dotnet="`Special`" pulumi-lang-go="`special`" pulumi-lang-python="`special`" pulumi-lang-yaml="`special`" pulumi-lang-java="`special`">`special`</span> argument must still be set to true for any overwritten characters to be used in generation.
  late final Output<String?> overrideSpecial;

  /// The generated random string.
  late final Output<String> result;

  /// Include special characters in the result. These are `!@#$%&*()-_=+[]{}<>:?`. Default value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool> special;

  /// Include uppercase alphabet characters in the result. Default value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool> upper;

  RandomPassword(
    String name, {
    RandomPasswordArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'random:index/randomPassword:RandomPassword',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bcryptHash = Output.createUnknown<String>();
    this.keepers = Output.createUnknown<Map<String, String>?>();
    this.length = Output.createUnknown<int>();
    this.lower = Output.createUnknown<bool>();
    this.minLower = Output.createUnknown<int>();
    this.minNumeric = Output.createUnknown<int>();
    this.minSpecial = Output.createUnknown<int>();
    this.minUpper = Output.createUnknown<int>();
    this.number = Output.createUnknown<bool>();
    this.numeric = Output.createUnknown<bool>();
    this.overrideSpecial = Output.createUnknown<String?>();
    this.result = Output.createUnknown<String>();
    this.special = Output.createUnknown<bool>();
    this.upper = Output.createUnknown<bool>();
  }
}
