import 'package:pulumi/pulumi.dart' as pulumi;
import 'phone_number_args.dart';
import 'phone_number_state.dart';

/// Provides an Amazon Connect Phone Number resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.PhoneNumber("example", {
///     targetArn: exampleAwsConnectInstance.arn,
///     countryCode: "US",
///     type: "DID",
///     tags: {
///         hello: "world",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.PhoneNumber("example",
///     target_arn=example_aws_connect_instance["arn"],
///     country_code="US",
///     type="DID",
///     tags={
///         "hello": "world",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Connect.PhoneNumber("example", new()
///     {
///         TargetArn = exampleAwsConnectInstance.Arn,
///         CountryCode = "US",
///         Type = "DID",
///         Tags =
///         {
///             { "hello", "world" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewPhoneNumber(ctx, "example", &connect.PhoneNumberArgs{
/// 			TargetArn:   pulumi.Any(exampleAwsConnectInstance.Arn),
/// 			CountryCode: pulumi.String("US"),
/// 			Type:        pulumi.String("DID"),
/// 			Tags: pulumi.StringMap{
/// 				"hello": pulumi.String("world"),
/// 			},
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
/// import com.pulumi.aws.connect.PhoneNumber;
/// import com.pulumi.aws.connect.PhoneNumberArgs;
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
///         var example = new PhoneNumber("example", PhoneNumberArgs.builder()
///             .targetArn(exampleAwsConnectInstance.arn())
///             .countryCode("US")
///             .type("DID")
///             .tags(Map.of("hello", "world"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:PhoneNumber
///     properties:
///       targetArn: ${exampleAwsConnectInstance.arn}
///       countryCode: US
///       type: DID
///       tags:
///         hello: world
/// ```
///
///
/// ### Description
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.PhoneNumber("example", {
///     targetArn: exampleAwsConnectInstance.arn,
///     countryCode: "US",
///     type: "DID",
///     description: "example description",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.PhoneNumber("example",
///     target_arn=example_aws_connect_instance["arn"],
///     country_code="US",
///     type="DID",
///     description="example description")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Connect.PhoneNumber("example", new()
///     {
///         TargetArn = exampleAwsConnectInstance.Arn,
///         CountryCode = "US",
///         Type = "DID",
///         Description = "example description",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewPhoneNumber(ctx, "example", &connect.PhoneNumberArgs{
/// 			TargetArn:   pulumi.Any(exampleAwsConnectInstance.Arn),
/// 			CountryCode: pulumi.String("US"),
/// 			Type:        pulumi.String("DID"),
/// 			Description: pulumi.String("example description"),
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
/// import com.pulumi.aws.connect.PhoneNumber;
/// import com.pulumi.aws.connect.PhoneNumberArgs;
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
///         var example = new PhoneNumber("example", PhoneNumberArgs.builder()
///             .targetArn(exampleAwsConnectInstance.arn())
///             .countryCode("US")
///             .type("DID")
///             .description("example description")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:PhoneNumber
///     properties:
///       targetArn: ${exampleAwsConnectInstance.arn}
///       countryCode: US
///       type: DID
///       description: example description
/// ```
///
///
/// ### Prefix to filter phone numbers
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.PhoneNumber("example", {
///     targetArn: exampleAwsConnectInstance.arn,
///     countryCode: "US",
///     type: "DID",
///     prefix: "+18005",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.PhoneNumber("example",
///     target_arn=example_aws_connect_instance["arn"],
///     country_code="US",
///     type="DID",
///     prefix="+18005")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Connect.PhoneNumber("example", new()
///     {
///         TargetArn = exampleAwsConnectInstance.Arn,
///         CountryCode = "US",
///         Type = "DID",
///         Prefix = "+18005",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewPhoneNumber(ctx, "example", &connect.PhoneNumberArgs{
/// 			TargetArn:   pulumi.Any(exampleAwsConnectInstance.Arn),
/// 			CountryCode: pulumi.String("US"),
/// 			Type:        pulumi.String("DID"),
/// 			Prefix:      pulumi.String("+18005"),
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
/// import com.pulumi.aws.connect.PhoneNumber;
/// import com.pulumi.aws.connect.PhoneNumberArgs;
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
///         var example = new PhoneNumber("example", PhoneNumberArgs.builder()
///             .targetArn(exampleAwsConnectInstance.arn())
///             .countryCode("US")
///             .type("DID")
///             .prefix("+18005")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:PhoneNumber
///     properties:
///       targetArn: ${exampleAwsConnectInstance.arn}
///       countryCode: US
///       type: DID
///       prefix: '+18005'
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the connect phone number.
///
/// #### Optional
///
/// - `account_id` (String) AWS Account where this resource is managed.
/// - `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Amazon Connect Phone Numbers using its `id`. For example:
///
/// ```sh
/// $ pulumi import aws:connect/phoneNumber:PhoneNumber example 12345678-abcd-1234-efgh-9876543210ab
/// ```
class PhoneNumber extends pulumi.CustomResource {
  /// The ARN of the phone number.
  late final pulumi.Output<String> arn;

  /// The ISO country code. For a list of Valid values, refer to [PhoneNumberCountryCode](https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchAvailablePhoneNumbers.html#connect-SearchAvailablePhoneNumbers-request-PhoneNumberCountryCode).
  late final pulumi.Output<String> countryCode;

  /// The description of the phone number.
  late final pulumi.Output<String?> description;

  /// The phone number. Phone numbers are formatted `[+] [country code] [subscriber number including area code]`.
  late final pulumi.Output<String> phoneNumber;

  /// The prefix of the phone number that is used to filter available phone numbers. If provided, it must contain `+` as part of the country code. Do not specify this argument when importing the resource.
  late final pulumi.Output<String?> prefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The status of the phone number. Valid Values: `CLAIMED` | `IN_PROGRESS` | `FAILED`.
  late final pulumi.Output<List<Map<String, dynamic>>> statuses;

  /// Tags to apply to the Phone Number. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to.
  late final pulumi.Output<String> targetArn;

  /// The type of phone number. Valid Values: `TOLL_FREE` | `DID`.
  late final pulumi.Output<String> type;

  /// Creates a new [PhoneNumber].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PhoneNumber]. {@macro pulumi_connect_phone_number_phone_number_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PhoneNumber(
    String name, {
    PhoneNumberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:connect/phoneNumber:PhoneNumber',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    countryCode = registerOutput<String>('countryCode');
    description = registerOutput<String?>('description');
    phoneNumber = registerOutput<String>('phoneNumber');
    prefix = registerOutput<String?>('prefix');
    region = registerOutput<String>('region');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetArn = registerOutput<String>('targetArn');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [PhoneNumber] resource's state with the given [name] and [id].
  static PhoneNumber get(
    String name,
    pulumi.Input<String> id, {
    PhoneNumberState? state,
  }) {
    return PhoneNumber._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PhoneNumber._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:connect/phoneNumber:PhoneNumber',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    countryCode = registerOutput<String>('countryCode');
    description = registerOutput<String?>('description');
    phoneNumber = registerOutput<String>('phoneNumber');
    prefix = registerOutput<String?>('prefix');
    region = registerOutput<String>('region');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetArn = registerOutput<String>('targetArn');
    type = registerOutput<String>('type');
  }
}
