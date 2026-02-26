import 'package:pulumi/pulumi.dart';
import 'random_string_args.dart';

/// The resource <span pulumi-lang-nodejs="`random.RandomString`" pulumi-lang-dotnet="`random.RandomString`" pulumi-lang-go="`RandomString`" pulumi-lang-python="`RandomString`" pulumi-lang-yaml="`random.RandomString`" pulumi-lang-java="`random.RandomString`">`random.RandomString`</span> generates a random permutation of alphanumeric characters and optionally special characters.
///
/// This resource *does* use a cryptographic random number generator.
///
/// Historically this resource's intended usage has been ambiguous as the original example used it in a password. For backwards compatibility it will continue to exist. For unique ids please use random_id, for sensitive random values please use random_password.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as random from "@pulumi/random";
///
/// const random = new random.RandomString("random", {
/// length: 16,
/// special: true,
/// overrideSpecial: "/@£$",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_random as random
///
/// random = random.RandomString("random",
/// length=16,
/// special=True,
/// override_special="/@£$")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var random = new Random.RandomString("random", new()
/// {
/// Length = 16,
/// Special = true,
/// OverrideSpecial = "/@£$",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := random.NewRandomString(ctx, "random", &random.RandomStringArgs{
/// Length:          pulumi.Int(16),
/// Special:         pulumi.Bool(true),
/// OverrideSpecial: pulumi.String("/@£$"),
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
/// import com.pulumi.random.RandomString;
/// import com.pulumi.random.RandomStringArgs;
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
/// var random = new RandomString("random", RandomStringArgs.builder()
/// .length(16)
/// .special(true)
/// .overrideSpecial("/@£$")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// random:
/// type: random:RandomString
/// properties:
/// length: 16
/// special: true
/// overrideSpecial: /@£$
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// You can import external strings into your Pulumi programs as RandomString resources as follows:
///
/// ```sh<break>
/// $ import random:index/randomString:RandomString newString myspecialdata
/// <break>```
///
/// This command will encode the `myspecialdata` token in Pulumi state and generate a code suggestion to
/// include a new RandomString resource in your Pulumi program. Include the suggested code and do a
/// `pulumi up`. Your data is now stored in Pulumi, and you can reference it in your Pulumi program as
/// `newString.result`.
///
/// If the data needs to be stored securily as a secret, consider using the RandomPassword resource
/// instead.
///
/// ```
class RandomString extends CustomResource {
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

  RandomString(
    String name, {
    RandomStringArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'random:index/randomString:RandomString',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
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
