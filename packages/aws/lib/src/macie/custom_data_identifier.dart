import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_data_identifier_args.dart';

/// Provides a resource to manage an [AWS Macie Custom Data Identifier](https://docs.aws.amazon.com/macie/latest/APIReference/custom-data-identifiers-id.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.macie2.Account("example", {});
/// const exampleCustomDataIdentifier = new aws.macie.CustomDataIdentifier("example", {
///     name: "NAME OF CUSTOM DATA IDENTIFIER",
///     regex: "[0-9]{3}-[0-9]{2}-[0-9]{4}",
///     description: "DESCRIPTION",
///     maximumMatchDistance: 10,
///     keywords: ["keyword"],
///     ignoreWords: ["ignore"],
/// }, {
///     dependsOn: [test],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.macie2.Account("example")
/// example_custom_data_identifier = aws.macie.CustomDataIdentifier("example",
///     name="NAME OF CUSTOM DATA IDENTIFIER",
///     regex="[0-9]{3}-[0-9]{2}-[0-9]{4}",
///     description="DESCRIPTION",
///     maximum_match_distance=10,
///     keywords=["keyword"],
///     ignore_words=["ignore"],
///     opts = pulumi.ResourceOptions(depends_on=[test]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Macie2.Account("example");
///
///     var exampleCustomDataIdentifier = new Aws.Macie.CustomDataIdentifier("example", new()
///     {
///         Name = "NAME OF CUSTOM DATA IDENTIFIER",
///         Regex = "[0-9]{3}-[0-9]{2}-[0-9]{4}",
///         Description = "DESCRIPTION",
///         MaximumMatchDistance = 10,
///         Keywords = new[]
///         {
///             "keyword",
///         },
///         IgnoreWords = new[]
///         {
///             "ignore",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             test,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/macie"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/macie2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := macie2.NewAccount(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = macie.NewCustomDataIdentifier(ctx, "example", &macie.CustomDataIdentifierArgs{
/// 			Name:                 pulumi.String("NAME OF CUSTOM DATA IDENTIFIER"),
/// 			Regex:                pulumi.String("[0-9]{3}-[0-9]{2}-[0-9]{4}"),
/// 			Description:          pulumi.String("DESCRIPTION"),
/// 			MaximumMatchDistance: pulumi.Int(10),
/// 			Keywords: pulumi.StringArray{
/// 				pulumi.String("keyword"),
/// 			},
/// 			IgnoreWords: pulumi.StringArray{
/// 				pulumi.String("ignore"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			test,
/// 		}))
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
/// import com.pulumi.aws.macie2.Account;
/// import com.pulumi.aws.macie.CustomDataIdentifier;
/// import com.pulumi.aws.macie.CustomDataIdentifierArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Account("example");
///
///         var exampleCustomDataIdentifier = new CustomDataIdentifier("exampleCustomDataIdentifier", CustomDataIdentifierArgs.builder()
///             .name("NAME OF CUSTOM DATA IDENTIFIER")
///             .regex("[0-9]{3}-[0-9]{2}-[0-9]{4}")
///             .description("DESCRIPTION")
///             .maximumMatchDistance(10)
///             .keywords("keyword")
///             .ignoreWords("ignore")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(test)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:macie2:Account
///   exampleCustomDataIdentifier:
///     type: aws:macie:CustomDataIdentifier
///     name: example
///     properties:
///       name: NAME OF CUSTOM DATA IDENTIFIER
///       regex: '[0-9]{3}-[0-9]{2}-[0-9]{4}'
///       description: DESCRIPTION
///       maximumMatchDistance: 10
///       keywords:
///         - keyword
///       ignoreWords:
///         - ignore
///     options:
///       dependsOn:
///         - ${test}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.macie.CustomDataIdentifier` using the id. For example:
///
/// ```sh
/// $ pulumi import aws:macie/customDataIdentifier:CustomDataIdentifier example abcd1
/// ```
class CustomDataIdentifier extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the custom data identifier.
  late final pulumi.Output<String> arn;

  /// The date and time, in UTC and extended RFC 3339 format, when the Amazon Macie account was created.
  late final pulumi.Output<String> createdAt;

  /// A custom description of the custom data identifier. The description can contain as many as 512 characters.
  late final pulumi.Output<String?> description;

  /// An array that lists specific character sequences (ignore words) to exclude from the results. If the text matched by the regular expression is the same as any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4 - 90 characters. Ignore words are case sensitive.
  late final pulumi.Output<List<String>?> ignoreWords;

  /// An array that lists specific character sequences (keywords), one of which must be within proximity (`maximum_match_distance`) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 3 - 90 characters. Keywords aren't case sensitive.
  late final pulumi.Output<List<String>?> keywords;

  /// The maximum number of characters that can exist between text that matches the regex pattern and the character sequences specified by the keywords array. Macie includes or excludes a result based on the proximity of a keyword to text that matches the regex pattern. The distance can be 1 - 300 characters. The default value is 50.
  late final pulumi.Output<int> maximumMatchDistance;

  /// A custom name for the custom data identifier. The name can contain as many as 128 characters. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// The regular expression (regex) that defines the pattern to match. The expression can contain as many as 512 characters.
  late final pulumi.Output<String?> regex;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [CustomDataIdentifier].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomDataIdentifier]. {@macro pulumi_macie_custom_data_identifier_custom_data_identifier_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomDataIdentifier(
    String name, {
    CustomDataIdentifierArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:macie/customDataIdentifier:CustomDataIdentifier',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.description = registerOutput<String?>('description');
    this.ignoreWords = registerOutput<List<String>?>('ignoreWords');
    this.keywords = registerOutput<List<String>?>('keywords');
    this.maximumMatchDistance = registerOutput<int>('maximumMatchDistance');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.regex = registerOutput<String?>('regex');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
