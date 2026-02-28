import 'package:pulumi/pulumi.dart' as pulumi;
import 'random_string_args.dart';

/// The resource `random.RandomString` generates a random permutation of alphanumeric characters and optionally special characters.
///
/// This resource *does* use a cryptographic random number generator.
///
/// Historically this resource's intended usage has been ambiguous as the original example used it in a password. For backwards compatibility it will continue to exist. For unique ids please use random_id, for sensitive random values please use random_password.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as random from "@pulumi/random";
///
/// const random = new random.RandomString("random", {
///     length: 16,
///     special: true,
///     overrideSpecial: "/@£$",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_random as random
///
/// random = random.RandomString("random",
///     length=16,
///     special=True,
///     override_special="/@£$")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var random = new Random.RandomString("random", new()
///     {
///         Length = 16,
///         Special = true,
///         OverrideSpecial = "/@£$",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := random.NewRandomString(ctx, "random", &random.RandomStringArgs{
/// 			Length:          pulumi.Int(16),
/// 			Special:         pulumi.Bool(true),
/// 			OverrideSpecial: pulumi.String("/@£$"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var random = new RandomString("random", RandomStringArgs.builder()
///             .length(16)
///             .special(true)
///             .overrideSpecial("/@£$")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   random:
///     type: random:RandomString
///     properties:
///       length: 16
///       special: true
///       overrideSpecial: /@£$
/// ```
///
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
class RandomString extends pulumi.CustomResource {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  late final pulumi.Output<Map<String, String>?> keepers;

  /// The length of the string desired. The minimum value for length is 1 and, length must also be >= (`min_upper` + `min_lower` + `min_numeric` + `min_special`).
  late final pulumi.Output<int> length;

  /// Include lowercase alphabet characters in the result. Default value is `true`.
  late final pulumi.Output<bool> lower;

  /// Minimum number of lowercase alphabet characters in the result. Default value is `0`.
  late final pulumi.Output<int> minLower;

  /// Minimum number of numeric characters in the result. Default value is `0`.
  late final pulumi.Output<int> minNumeric;

  /// Minimum number of special characters in the result. Default value is `0`.
  late final pulumi.Output<int> minSpecial;

  /// Minimum number of uppercase alphabet characters in the result. Default value is `0`.
  late final pulumi.Output<int> minUpper;

  /// Include numeric characters in the result. Default value is `true`. If `number`, `upper`, `lower`, and `special` are all configured, at least one of them must be set to `true`. **NOTE**: This is deprecated, use `numeric` instead.
  late final pulumi.Output<bool> number;

  /// Include numeric characters in the result. Default value is `true`. If `numeric`, `upper`, `lower`, and `special` are all configured, at least one of them must be set to `true`.
  late final pulumi.Output<bool> numeric;

  /// Supply your own list of special characters to use for string generation.  This overrides the default character list in the special argument.  The `special` argument must still be set to true for any overwritten characters to be used in generation.
  late final pulumi.Output<String?> overrideSpecial;

  /// The generated random string.
  late final pulumi.Output<String> result;

  /// Include special characters in the result. These are `!@#$%&*()-_=+[]{}<>:?`. Default value is `true`.
  late final pulumi.Output<bool> special;

  /// Include uppercase alphabet characters in the result. Default value is `true`.
  late final pulumi.Output<bool> upper;

  /// Creates a new [RandomString].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RandomString]. {@macro pulumi_index_random_string_random_string_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RandomString(
    String name, {
    RandomStringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'random:index/randomString:RandomString',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.length = registerOutput<int>('length');
    this.lower = registerOutput<bool>('lower');
    this.minLower = registerOutput<int>('minLower');
    this.minNumeric = registerOutput<int>('minNumeric');
    this.minSpecial = registerOutput<int>('minSpecial');
    this.minUpper = registerOutput<int>('minUpper');
    this.number = registerOutput<bool>('number');
    this.numeric = registerOutput<bool>('numeric');
    this.overrideSpecial = registerOutput<String?>('overrideSpecial');
    this.result = registerOutput<String>('result');
    this.special = registerOutput<bool>('special');
    this.upper = registerOutput<bool>('upper');
  }
}
