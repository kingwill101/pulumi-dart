import 'package:pulumi/pulumi.dart' as pulumi;
import 'smsvoicev2_resource_policy_args.dart';
import 'smsvoicev2_resource_policy_state.dart';

/// Manages an AWS End User Messaging SMS Resource Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleSmsvoicev2PhoneNumber = new aws.pinpoint.Smsvoicev2PhoneNumber("example", {
///     isoCountryCode: "US",
///     messageType: "TRANSACTIONAL",
///     numberType: "SIMULATOR",
///     numberCapabilities: ["SMS"],
/// });
/// const example = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         principals: [{
///             type: "AWS",
///             identifiers: ["123456789012"],
///         }],
///         effect: "Allow",
///         actions: ["sms-voice:SendTextMessage"],
///         resources: [exampleSmsvoicev2PhoneNumber.arn],
///     }],
/// });
/// const exampleSmsvoicev2ResourcePolicy = new aws.pinpoint.Smsvoicev2ResourcePolicy("example", {
///     resourceArn: exampleSmsvoicev2PhoneNumber.arn,
///     policy: example.json,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_smsvoicev2_phone_number = aws.pinpoint.Smsvoicev2PhoneNumber("example",
///     iso_country_code="US",
///     message_type="TRANSACTIONAL",
///     number_type="SIMULATOR",
///     number_capabilities=["SMS"])
/// example = aws.iam.get_policy_document_output(statements=[{
///     "principals": [{
///         "type": "AWS",
///         "identifiers": ["123456789012"],
///     }],
///     "effect": "Allow",
///     "actions": ["sms-voice:SendTextMessage"],
///     "resources": [example_smsvoicev2_phone_number.arn],
/// }])
/// example_smsvoicev2_resource_policy = aws.pinpoint.Smsvoicev2ResourcePolicy("example",
///     resource_arn=example_smsvoicev2_phone_number.arn,
///     policy=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleSmsvoicev2PhoneNumber = new Aws.Pinpoint.Smsvoicev2PhoneNumber("example", new()
///     {
///         IsoCountryCode = "US",
///         MessageType = "TRANSACTIONAL",
///         NumberType = "SIMULATOR",
///         NumberCapabilities = new[]
///         {
///             "SMS",
///         },
///     });
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "123456789012",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sms-voice:SendTextMessage",
///                 },
///                 Resources = new[]
///                 {
///                     exampleSmsvoicev2PhoneNumber.Arn,
///                 },
///             },
///         },
///     });
///
///     var exampleSmsvoicev2ResourcePolicy = new Aws.Pinpoint.Smsvoicev2ResourcePolicy("example", new()
///     {
///         ResourceArn = exampleSmsvoicev2PhoneNumber.Arn,
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleSmsvoicev2PhoneNumber, err := pinpoint.NewSmsvoicev2PhoneNumber(ctx, "example", &pinpoint.Smsvoicev2PhoneNumberArgs{
/// 			IsoCountryCode: pulumi.String("US"),
/// 			MessageType:    pulumi.String("TRANSACTIONAL"),
/// 			NumberType:     pulumi.String("SIMULATOR"),
/// 			NumberCapabilities: pulumi.StringArray{
/// 				pulumi.String("SMS"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("AWS"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("123456789012"),
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("sms-voice:SendTextMessage"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleSmsvoicev2PhoneNumber.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = pinpoint.NewSmsvoicev2ResourcePolicy(ctx, "example", &pinpoint.Smsvoicev2ResourcePolicyArgs{
/// 			ResourceArn: exampleSmsvoicev2PhoneNumber.Arn,
/// 			Policy:      example.Json(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_iam_getpolicydocument" "example" {
///   statements {
///     principals {
///       type        = "AWS"
///       identifiers = ["123456789012"]
///     }
///     effect    = "Allow"
///     actions   = ["sms-voice:SendTextMessage"]
///     resources = [aws_pinpoint_smsvoicev2phonenumber.example.arn]
///   }
/// }
///
/// resource "aws_pinpoint_smsvoicev2phonenumber" "example" {
///   iso_country_code    = "US"
///   message_type        = "TRANSACTIONAL"
///   number_type         = "SIMULATOR"
///   number_capabilities = ["SMS"]
/// }
/// resource "aws_pinpoint_smsvoicev2resourcepolicy" "example" {
///   resource_arn = aws_pinpoint_smsvoicev2phonenumber.example.arn
///   policy       = data.aws_iam_getpolicydocument.example.json
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.pinpoint.Smsvoicev2PhoneNumber;
/// import com.pulumi.aws.pinpoint.Smsvoicev2PhoneNumberArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.pinpoint.Smsvoicev2ResourcePolicy;
/// import com.pulumi.aws.pinpoint.Smsvoicev2ResourcePolicyArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var exampleSmsvoicev2PhoneNumber = new Smsvoicev2PhoneNumber("exampleSmsvoicev2PhoneNumber", Smsvoicev2PhoneNumberArgs.builder()
///             .isoCountryCode("US")
///             .messageType("TRANSACTIONAL")
///             .numberType("SIMULATOR")
///             .numberCapabilities("SMS")
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers("123456789012")
///                     .build())
///                 .effect("Allow")
///                 .actions("sms-voice:SendTextMessage")
///                 .resources(exampleSmsvoicev2PhoneNumber.arn())
///                 .build())
///             .build());
///
///         var exampleSmsvoicev2ResourcePolicy = new Smsvoicev2ResourcePolicy("exampleSmsvoicev2ResourcePolicy", Smsvoicev2ResourcePolicyArgs.builder()
///             .resourceArn(exampleSmsvoicev2PhoneNumber.arn())
///             .policy(example.applyValue(_example -> _example.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSmsvoicev2PhoneNumber:
///     type: aws:pinpoint:Smsvoicev2PhoneNumber
///     name: example
///     properties:
///       isoCountryCode: US
///       messageType: TRANSACTIONAL
///       numberType: SIMULATOR
///       numberCapabilities:
///         - SMS
///   exampleSmsvoicev2ResourcePolicy:
///     type: aws:pinpoint:Smsvoicev2ResourcePolicy
///     name: example
///     properties:
///       resourceArn: ${exampleSmsvoicev2PhoneNumber.arn}
///       policy: ${example.json}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: AWS
///                 identifiers:
///                   - '123456789012'
///             effect: Allow
///             actions:
///               - sms-voice:SendTextMessage
///             resources:
///               - ${exampleSmsvoicev2PhoneNumber.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `resourceArn` (String) ARN of the End User Messaging SMS resource the policy is attached to.
///
///
/// Using `pulumi import`, import the resource policy using the parent resource ARN. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/smsvoicev2ResourcePolicy:Smsvoicev2ResourcePolicy example arn:aws:sms-voice:us-east-1:123456789012:phone-number/phone-abcdef0123456789abcdef0123456789
/// ```
class Smsvoicev2ResourcePolicy extends pulumi.CustomResource {
  /// Resource-based policy document in JSON format.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-options.html#cli-configure-options-region). Defaults to the region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the End User Messaging SMS resource — phone number, opt-out list, pool, or sender ID — to attach the policy to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> resourceArn;

  /// Creates a new [Smsvoicev2ResourcePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Smsvoicev2ResourcePolicy]. {@macro pulumi_pinpoint_smsvoicev2_resource_policy_smsvoicev2_resource_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Smsvoicev2ResourcePolicy(
    String name, {
    Smsvoicev2ResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2ResourcePolicy:Smsvoicev2ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }

  /// Gets an existing [Smsvoicev2ResourcePolicy] resource's state with the given [name] and [id].
  static Smsvoicev2ResourcePolicy get(
    String name,
    pulumi.Input<String> id, {
    Smsvoicev2ResourcePolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Smsvoicev2ResourcePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Smsvoicev2ResourcePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2ResourcePolicy:Smsvoicev2ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }

  /// Creates a typed reference to an existing [Smsvoicev2ResourcePolicy] resource.
  Smsvoicev2ResourcePolicy.reference(String urn)
    : super(
        'aws:pinpoint/smsvoicev2ResourcePolicy:Smsvoicev2ResourcePolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }
}
