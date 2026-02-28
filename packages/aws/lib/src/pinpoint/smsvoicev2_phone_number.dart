import 'package:pulumi/pulumi.dart' as pulumi;
import 'smsvoicev2_phone_number_args.dart';
import 'smsvoicev2_phone_number_timeouts.dart';

/// Manages an AWS End User Messaging SMS phone number.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pinpoint.Smsvoicev2PhoneNumber("example", {
///     isoCountryCode: "US",
///     messageType: "TRANSACTIONAL",
///     numberType: "TOLL_FREE",
///     numberCapabilities: ["SMS"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pinpoint.Smsvoicev2PhoneNumber("example",
///     iso_country_code="US",
///     message_type="TRANSACTIONAL",
///     number_type="TOLL_FREE",
///     number_capabilities=["SMS"])
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
///         NumberType = "TOLL_FREE",
///         NumberCapabilities = new[]
///         {
///             "SMS",
///         },
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
/// 		_, err := pinpoint.NewSmsvoicev2PhoneNumber(ctx, "example", &pinpoint.Smsvoicev2PhoneNumberArgs{
/// 			IsoCountryCode: pulumi.String("US"),
/// 			MessageType:    pulumi.String("TRANSACTIONAL"),
/// 			NumberType:     pulumi.String("TOLL_FREE"),
/// 			NumberCapabilities: pulumi.StringArray{
/// 				pulumi.String("SMS"),
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
/// import com.pulumi.aws.pinpoint.Smsvoicev2PhoneNumber;
/// import com.pulumi.aws.pinpoint.Smsvoicev2PhoneNumberArgs;
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
///         var example = new Smsvoicev2PhoneNumber("example", Smsvoicev2PhoneNumberArgs.builder()
///             .isoCountryCode("US")
///             .messageType("TRANSACTIONAL")
///             .numberType("TOLL_FREE")
///             .numberCapabilities("SMS")
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
///       numberType: TOLL_FREE
///       numberCapabilities:
///         - SMS
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import phone numbers using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/smsvoicev2PhoneNumber:Smsvoicev2PhoneNumber example phone-abcdef0123456789abcdef0123456789
/// ```
class Smsvoicev2PhoneNumber extends pulumi.CustomResource {
  /// ARN of the phone number.
  late final pulumi.Output<String> arn;
  /// By default this is set to `false`. When set to true the phone number can’t be deleted.
  late final pulumi.Output<bool> deletionProtectionEnabled;
  /// The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
  late final pulumi.Output<String> isoCountryCode;
  /// The type of message. Valid values are `TRANSACTIONAL` for messages that are critical or time-sensitive and `PROMOTIONAL` for messages that aren’t critical or time-sensitive.
  late final pulumi.Output<String> messageType;
  /// The monthly price, in US dollars, to lease the phone number.
  late final pulumi.Output<String> monthlyLeasingPrice;
  /// Describes if the origination identity can be used for text messages, voice calls or both. valid values are `SMS` and `VOICE`.
  late final pulumi.Output<List<String>> numberCapabilities;
  /// The type of phone number to request. Possible values are `LONG_CODE`, `TOLL_FREE`, `TEN_DLC`, or `SIMULATOR`.
  late final pulumi.Output<String> numberType;
  /// The name of the opt-out list to associate with the phone number.
  late final pulumi.Output<String> optOutListName;
  /// The new phone number that was requested.
  late final pulumi.Output<String> phoneNumber;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Use this field to attach your phone number for an external registration process.
  late final pulumi.Output<String?> registrationId;
  /// When set to `false` an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the opt-out list. When set to true you’re responsible for responding to HELP and STOP requests. You’re also responsible for tracking and honoring opt-out request.
  late final pulumi.Output<bool> selfManagedOptOutsEnabled;
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<Smsvoicev2PhoneNumberTimeouts?> timeouts;
  /// Configuration for two-way SMS. Specify an ARN to receive incoming SMS messages, or `connect.[region].amazonaws.com` (with `[region]` replaced by the AWS Region of the Amazon Connect instance) to set Amazon Connect as the inbound destination.
  late final pulumi.Output<String?> twoWayChannelArn;
  /// By default this is set to `false`. When set to `true` you can receive incoming text messages from your end recipients.
  late final pulumi.Output<bool> twoWayChannelEnabled;
  /// IAM Role ARN for a service to assume, to be able to post inbound SMS messages.
  late final pulumi.Output<String?> twoWayChannelRole;

  /// Creates a new [Smsvoicev2PhoneNumber].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Smsvoicev2PhoneNumber]. {@macro pulumi_pinpoint_smsvoicev2_phone_number_smsvoicev2_phone_number_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Smsvoicev2PhoneNumber(
    String name, {
    Smsvoicev2PhoneNumberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2PhoneNumber:Smsvoicev2PhoneNumber',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deletionProtectionEnabled = registerOutput<bool>('deletionProtectionEnabled');
    this.isoCountryCode = registerOutput<String>('isoCountryCode');
    this.messageType = registerOutput<String>('messageType');
    this.monthlyLeasingPrice = registerOutput<String>('monthlyLeasingPrice');
    this.numberCapabilities = registerOutput<List<String>>('numberCapabilities');
    this.numberType = registerOutput<String>('numberType');
    this.optOutListName = registerOutput<String>('optOutListName');
    this.phoneNumber = registerOutput<String>('phoneNumber');
    this.region = registerOutput<String>('region');
    this.registrationId = registerOutput<String?>('registrationId');
    this.selfManagedOptOutsEnabled = registerOutput<bool>('selfManagedOptOutsEnabled');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<Smsvoicev2PhoneNumberTimeouts?>('timeouts');
    this.twoWayChannelArn = registerOutput<String?>('twoWayChannelArn');
    this.twoWayChannelEnabled = registerOutput<bool>('twoWayChannelEnabled');
    this.twoWayChannelRole = registerOutput<String?>('twoWayChannelRole');
  }
}
