import 'package:pulumi/pulumi.dart' as pulumi;
import 'smsvoicev2_keyword_args.dart';
import 'smsvoicev2_keyword_state.dart';

/// Manages an AWS End User Messaging SMS Keyword.
///
/// &gt; **Note:** The mandatory keywords `HELP` and `STOP` exist on every origination identity and cannot be created or deleted independently of it. For these mandatory keywords only, this resource adopts and manages the `keywordMessage` in place, while `keywordAction` is managed by AWS and cannot be set. Destroying a resource that manages a mandatory keyword does not delete or reset it in AWS; the keyword remains on the origination identity with its last-applied message. Non-mandatory keywords are created and deleted normally.
///
/// ## Example Usage
///
/// ### Phone Number
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pinpoint.Smsvoicev2PhoneNumber("example", {
///     isoCountryCode: "US",
///     messageType: "TRANSACTIONAL",
///     numberType: "SIMULATOR",
///     numberCapabilities: ["SMS"],
/// });
/// const exampleSmsvoicev2Keyword = new aws.pinpoint.Smsvoicev2Keyword("example", {
///     originationIdentityArn: example.arn,
///     keyword: "EXAMPLE",
///     keywordMessage: "Thanks for messaging our example number.",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pinpoint.Smsvoicev2PhoneNumber("example",
///     iso_country_code="US",
///     message_type="TRANSACTIONAL",
///     number_type="SIMULATOR",
///     number_capabilities=["SMS"])
/// example_smsvoicev2_keyword = aws.pinpoint.Smsvoicev2Keyword("example",
///     origination_identity_arn=example.arn,
///     keyword="EXAMPLE",
///     keyword_message="Thanks for messaging our example number.")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Pinpoint.Smsvoicev2PhoneNumber("example", new()
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
///     var exampleSmsvoicev2Keyword = new Aws.Pinpoint.Smsvoicev2Keyword("example", new()
///     {
///         OriginationIdentityArn = example.Arn,
///         Keyword = "EXAMPLE",
///         KeywordMessage = "Thanks for messaging our example number.",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pinpoint.NewSmsvoicev2PhoneNumber(ctx, "example", &pinpoint.Smsvoicev2PhoneNumberArgs{
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
/// 		_, err = pinpoint.NewSmsvoicev2Keyword(ctx, "example", &pinpoint.Smsvoicev2KeywordArgs{
/// 			OriginationIdentityArn: example.Arn,
/// 			Keyword:                pulumi.String("EXAMPLE"),
/// 			KeywordMessage:         pulumi.String("Thanks for messaging our example number."),
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
/// resource "aws_pinpoint_smsvoicev2phonenumber" "example" {
///   iso_country_code    = "US"
///   message_type        = "TRANSACTIONAL"
///   number_type         = "SIMULATOR"
///   number_capabilities = ["SMS"]
/// }
/// resource "aws_pinpoint_smsvoicev2keyword" "example" {
///   origination_identity_arn = aws_pinpoint_smsvoicev2phonenumber.example.arn
///   keyword                  = "EXAMPLE"
///   keyword_message          = "Thanks for messaging our example number."
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
/// import com.pulumi.aws.pinpoint.Smsvoicev2Keyword;
/// import com.pulumi.aws.pinpoint.Smsvoicev2KeywordArgs;
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
///         var example = new Smsvoicev2PhoneNumber("example", Smsvoicev2PhoneNumberArgs.builder()
///             .isoCountryCode("US")
///             .messageType("TRANSACTIONAL")
///             .numberType("SIMULATOR")
///             .numberCapabilities("SMS")
///             .build());
///
///         var exampleSmsvoicev2Keyword = new Smsvoicev2Keyword("exampleSmsvoicev2Keyword", Smsvoicev2KeywordArgs.builder()
///             .originationIdentityArn(example.arn())
///             .keyword("EXAMPLE")
///             .keywordMessage("Thanks for messaging our example number.")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pinpoint:Smsvoicev2PhoneNumber
///     properties:
///       isoCountryCode: US
///       messageType: TRANSACTIONAL
///       numberType: SIMULATOR
///       numberCapabilities:
///         - SMS
///   exampleSmsvoicev2Keyword:
///     type: aws:pinpoint:Smsvoicev2Keyword
///     name: example
///     properties:
///       originationIdentityArn: ${example.arn}
///       keyword: EXAMPLE
///       keywordMessage: Thanks for messaging our example number.
/// ```
///
///
/// ### Pool
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pinpoint.Smsvoicev2PhoneNumber("example", {
///     isoCountryCode: "US",
///     messageType: "TRANSACTIONAL",
///     numberType: "SIMULATOR",
///     numberCapabilities: ["SMS"],
/// });
/// const exampleSmsvoicev2Pool = new aws.pinpoint.Smsvoicev2Pool("example", {
///     isoCountryCode: "US",
///     messageType: "TRANSACTIONAL",
///     originationIdentities: [example.arn],
/// });
/// const exampleSmsvoicev2Keyword = new aws.pinpoint.Smsvoicev2Keyword("example", {
///     originationIdentityArn: exampleSmsvoicev2Pool.arn,
///     keyword: "OPTOUT",
///     keywordMessage: "You have been unsubscribed.",
///     keywordAction: "OPT_OUT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pinpoint.Smsvoicev2PhoneNumber("example",
///     iso_country_code="US",
///     message_type="TRANSACTIONAL",
///     number_type="SIMULATOR",
///     number_capabilities=["SMS"])
/// example_smsvoicev2_pool = aws.pinpoint.Smsvoicev2Pool("example",
///     iso_country_code="US",
///     message_type="TRANSACTIONAL",
///     origination_identities=[example.arn])
/// example_smsvoicev2_keyword = aws.pinpoint.Smsvoicev2Keyword("example",
///     origination_identity_arn=example_smsvoicev2_pool.arn,
///     keyword="OPTOUT",
///     keyword_message="You have been unsubscribed.",
///     keyword_action="OPT_OUT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Pinpoint.Smsvoicev2PhoneNumber("example", new()
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
///     var exampleSmsvoicev2Pool = new Aws.Pinpoint.Smsvoicev2Pool("example", new()
///     {
///         IsoCountryCode = "US",
///         MessageType = "TRANSACTIONAL",
///         OriginationIdentities = new[]
///         {
///             example.Arn,
///         },
///     });
///
///     var exampleSmsvoicev2Keyword = new Aws.Pinpoint.Smsvoicev2Keyword("example", new()
///     {
///         OriginationIdentityArn = exampleSmsvoicev2Pool.Arn,
///         Keyword = "OPTOUT",
///         KeywordMessage = "You have been unsubscribed.",
///         KeywordAction = "OPT_OUT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pinpoint.NewSmsvoicev2PhoneNumber(ctx, "example", &pinpoint.Smsvoicev2PhoneNumberArgs{
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
/// 		exampleSmsvoicev2Pool, err := pinpoint.NewSmsvoicev2Pool(ctx, "example", &pinpoint.Smsvoicev2PoolArgs{
/// 			IsoCountryCode: pulumi.String("US"),
/// 			MessageType:    pulumi.String("TRANSACTIONAL"),
/// 			OriginationIdentities: pulumi.StringArray{
/// 				example.Arn,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pinpoint.NewSmsvoicev2Keyword(ctx, "example", &pinpoint.Smsvoicev2KeywordArgs{
/// 			OriginationIdentityArn: exampleSmsvoicev2Pool.Arn,
/// 			Keyword:                pulumi.String("OPTOUT"),
/// 			KeywordMessage:         pulumi.String("You have been unsubscribed."),
/// 			KeywordAction:          pulumi.String("OPT_OUT"),
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
/// resource "aws_pinpoint_smsvoicev2phonenumber" "example" {
///   iso_country_code    = "US"
///   message_type        = "TRANSACTIONAL"
///   number_type         = "SIMULATOR"
///   number_capabilities = ["SMS"]
/// }
/// resource "aws_pinpoint_smsvoicev2pool" "example" {
///   iso_country_code       = "US"
///   message_type           = "TRANSACTIONAL"
///   origination_identities = [aws_pinpoint_smsvoicev2phonenumber.example.arn]
/// }
/// resource "aws_pinpoint_smsvoicev2keyword" "example" {
///   origination_identity_arn = aws_pinpoint_smsvoicev2pool.example.arn
///   keyword                  = "OPTOUT"
///   keyword_message          = "You have been unsubscribed."
///   keyword_action           = "OPT_OUT"
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
/// import com.pulumi.aws.pinpoint.Smsvoicev2Pool;
/// import com.pulumi.aws.pinpoint.Smsvoicev2PoolArgs;
/// import com.pulumi.aws.pinpoint.Smsvoicev2Keyword;
/// import com.pulumi.aws.pinpoint.Smsvoicev2KeywordArgs;
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
///         var example = new Smsvoicev2PhoneNumber("example", Smsvoicev2PhoneNumberArgs.builder()
///             .isoCountryCode("US")
///             .messageType("TRANSACTIONAL")
///             .numberType("SIMULATOR")
///             .numberCapabilities("SMS")
///             .build());
///
///         var exampleSmsvoicev2Pool = new Smsvoicev2Pool("exampleSmsvoicev2Pool", Smsvoicev2PoolArgs.builder()
///             .isoCountryCode("US")
///             .messageType("TRANSACTIONAL")
///             .originationIdentities(example.arn())
///             .build());
///
///         var exampleSmsvoicev2Keyword = new Smsvoicev2Keyword("exampleSmsvoicev2Keyword", Smsvoicev2KeywordArgs.builder()
///             .originationIdentityArn(exampleSmsvoicev2Pool.arn())
///             .keyword("OPTOUT")
///             .keywordMessage("You have been unsubscribed.")
///             .keywordAction("OPT_OUT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pinpoint:Smsvoicev2PhoneNumber
///     properties:
///       isoCountryCode: US
///       messageType: TRANSACTIONAL
///       numberType: SIMULATOR
///       numberCapabilities:
///         - SMS
///   exampleSmsvoicev2Pool:
///     type: aws:pinpoint:Smsvoicev2Pool
///     name: example
///     properties:
///       isoCountryCode: US
///       messageType: TRANSACTIONAL
///       originationIdentities:
///         - ${example.arn}
///   exampleSmsvoicev2Keyword:
///     type: aws:pinpoint:Smsvoicev2Keyword
///     name: example
///     properties:
///       originationIdentityArn: ${exampleSmsvoicev2Pool.arn}
///       keyword: OPTOUT
///       keywordMessage: You have been unsubscribed.
///       keywordAction: OPT_OUT
/// ```
///
///
/// ### Mandatory Keyword
///
/// The mandatory `HELP` and `STOP` keywords are adopted rather than created. Omit `keywordAction`; AWS manages it.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pinpoint.Smsvoicev2PhoneNumber("example", {
///     isoCountryCode: "US",
///     messageType: "TRANSACTIONAL",
///     numberType: "SIMULATOR",
///     numberCapabilities: ["SMS"],
/// });
/// const help = new aws.pinpoint.Smsvoicev2Keyword("help", {
///     originationIdentityArn: example.arn,
///     keyword: "HELP",
///     keywordMessage: "Reply STOP to unsubscribe. Message and data rates may apply.",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pinpoint.Smsvoicev2PhoneNumber("example",
///     iso_country_code="US",
///     message_type="TRANSACTIONAL",
///     number_type="SIMULATOR",
///     number_capabilities=["SMS"])
/// help = aws.pinpoint.Smsvoicev2Keyword("help",
///     origination_identity_arn=example.arn,
///     keyword="HELP",
///     keyword_message="Reply STOP to unsubscribe. Message and data rates may apply.")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Pinpoint.Smsvoicev2PhoneNumber("example", new()
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
///     var help = new Aws.Pinpoint.Smsvoicev2Keyword("help", new()
///     {
///         OriginationIdentityArn = example.Arn,
///         Keyword = "HELP",
///         KeywordMessage = "Reply STOP to unsubscribe. Message and data rates may apply.",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pinpoint.NewSmsvoicev2PhoneNumber(ctx, "example", &pinpoint.Smsvoicev2PhoneNumberArgs{
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
/// 		_, err = pinpoint.NewSmsvoicev2Keyword(ctx, "help", &pinpoint.Smsvoicev2KeywordArgs{
/// 			OriginationIdentityArn: example.Arn,
/// 			Keyword:                pulumi.String("HELP"),
/// 			KeywordMessage:         pulumi.String("Reply STOP to unsubscribe. Message and data rates may apply."),
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
/// resource "aws_pinpoint_smsvoicev2phonenumber" "example" {
///   iso_country_code    = "US"
///   message_type        = "TRANSACTIONAL"
///   number_type         = "SIMULATOR"
///   number_capabilities = ["SMS"]
/// }
/// resource "aws_pinpoint_smsvoicev2keyword" "help" {
///   origination_identity_arn = aws_pinpoint_smsvoicev2phonenumber.example.arn
///   keyword                  = "HELP"
///   keyword_message          = "Reply STOP to unsubscribe. Message and data rates may apply."
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
/// import com.pulumi.aws.pinpoint.Smsvoicev2Keyword;
/// import com.pulumi.aws.pinpoint.Smsvoicev2KeywordArgs;
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
///         var example = new Smsvoicev2PhoneNumber("example", Smsvoicev2PhoneNumberArgs.builder()
///             .isoCountryCode("US")
///             .messageType("TRANSACTIONAL")
///             .numberType("SIMULATOR")
///             .numberCapabilities("SMS")
///             .build());
///
///         var help = new Smsvoicev2Keyword("help", Smsvoicev2KeywordArgs.builder()
///             .originationIdentityArn(example.arn())
///             .keyword("HELP")
///             .keywordMessage("Reply STOP to unsubscribe. Message and data rates may apply.")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pinpoint:Smsvoicev2PhoneNumber
///     properties:
///       isoCountryCode: US
///       messageType: TRANSACTIONAL
///       numberType: SIMULATOR
///       numberCapabilities:
///         - SMS
///   help:
///     type: aws:pinpoint:Smsvoicev2Keyword
///     properties:
///       originationIdentityArn: ${example.arn}
///       keyword: HELP
///       keywordMessage: Reply STOP to unsubscribe. Message and data rates may apply.
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `originationIdentityArn` (String) ARN of the origination identity the keyword is attached to.
/// * `keyword` (String) Keyword text.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import a keyword using the `originationIdentityArn` and `keyword`, separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/smsvoicev2Keyword:Smsvoicev2Keyword example "arn:aws:sms-voice:us-east-1:123456789012:phone-number/phone-abcdef0123456789abcdef0123456789,EXAMPLE"
/// ```
class Smsvoicev2Keyword extends pulumi.CustomResource {
  /// Keyword to configure. Must be upper-case; AWS stores keywords in upper-case. 1-30 characters and cannot start or end with a space. Changing this forces a new resource.
  late final pulumi.Output<String> keyword;
  /// Action to perform when the keyword is received. Valid values: `AUTOMATIC_RESPONSE`, `OPT_OUT`, `OPT_IN`. Defaults to `AUTOMATIC_RESPONSE`. Must not be set for mandatory keywords, whose action is managed by AWS.
  late final pulumi.Output<String> keywordAction;
  /// Message to send when the keyword is received.
  late final pulumi.Output<String> keywordMessage;
  /// ARN of the origination identity (phone number or pool) to attach the keyword to. Changing this forces a new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> originationIdentityArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [Smsvoicev2Keyword].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Smsvoicev2Keyword]. {@macro pulumi_pinpoint_smsvoicev2_keyword_smsvoicev2_keyword_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Smsvoicev2Keyword(
    String name, {
    Smsvoicev2KeywordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2Keyword:Smsvoicev2Keyword',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    keyword = registerOutput<String>('keyword');
    keywordAction = registerOutput<String>('keywordAction');
    keywordMessage = registerOutput<String>('keywordMessage');
    originationIdentityArn = registerOutput<String>('originationIdentityArn');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [Smsvoicev2Keyword] resource's state with the given [name] and [id].
  static Smsvoicev2Keyword get(
    String name,
    pulumi.Input<String> id, {
    Smsvoicev2KeywordState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Smsvoicev2Keyword._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Smsvoicev2Keyword._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2Keyword:Smsvoicev2Keyword',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    keyword = registerOutput<String>('keyword');
    keywordAction = registerOutput<String>('keywordAction');
    keywordMessage = registerOutput<String>('keywordMessage');
    originationIdentityArn = registerOutput<String>('originationIdentityArn');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [Smsvoicev2Keyword] resource.
  Smsvoicev2Keyword.reference(String urn)
    : super(
        'aws:pinpoint/smsvoicev2Keyword:Smsvoicev2Keyword',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    keyword = registerOutput<String>('keyword');
    keywordAction = registerOutput<String>('keywordAction');
    keywordMessage = registerOutput<String>('keywordMessage');
    originationIdentityArn = registerOutput<String>('originationIdentityArn');
    region = registerOutput<String>('region');
  }
}
