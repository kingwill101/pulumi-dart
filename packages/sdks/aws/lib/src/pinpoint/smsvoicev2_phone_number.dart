import 'package:pulumi/pulumi.dart' as pulumi;
import 'smsvoicev2_phone_number_args.dart';
import 'smsvoicev2_phone_number_state.dart';
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
///   number_type         = "TOLL_FREE"
///   number_capabilities = ["SMS"]
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
  /// Whether deletion protection is enabled. When `true`, the phone number cannot be deleted.
  late final pulumi.Output<bool> deletionProtectionEnabled;
  /// Whether to disassociate the phone number from any pool it is associated with before destroying it.
  late final pulumi.Output<bool?> forceDisassociate;
  /// Two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
  late final pulumi.Output<String> isoCountryCode;
  /// Type of message. Valid values are `TRANSACTIONAL` for messages that are critical or time-sensitive and `PROMOTIONAL` for messages that aren’t critical or time-sensitive.
  late final pulumi.Output<String> messageType;
  /// Monthly price, in US dollars, to lease the phone number.
  late final pulumi.Output<String> monthlyLeasingPrice;
  /// Whether the origination identity can be used for text messages, voice calls or both. Valid values are `SMS` and `VOICE`.
  late final pulumi.Output<List<String>> numberCapabilities;
  /// Type of phone number to request. Possible values are `LONG_CODE`, `TOLL_FREE`, `TEN_DLC`, or `SIMULATOR`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> numberType;
  /// Name of the opt-out list to associate with the phone number. If omitted, AWS assigns the `Default` opt-out list.
  late final pulumi.Output<String> optOutListName;
  /// New phone number that was requested.
  late final pulumi.Output<String> phoneNumber;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Use this field to attach your phone number for an external registration process.
  late final pulumi.Output<String?> registrationId;
  /// When set to `false` an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the opt-out list. When set to true you’re responsible for responding to HELP and STOP requests. You’re also responsible for tracking and honoring opt-out request.
  late final pulumi.Output<bool> selfManagedOptOutsEnabled;
  /// Status of the phone number. Possible values are `PENDING`, `ACTIVE`, `ASSOCIATING`, `DISASSOCIATING`, and `DELETED`.
  late final pulumi.Output<String> status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<Smsvoicev2PhoneNumberTimeouts?> timeouts;
  /// Configuration for two-way SMS. Specify an ARN to receive incoming SMS messages, or `connect.[region].amazonaws.com` (with `[region]` replaced by the AWS Region of the Amazon Connect instance) to set Amazon Connect as the inbound destination.
  late final pulumi.Output<String> twoWayChannelArn;
  /// Whether two-way messaging is enabled. When `true`, you can receive incoming text messages from your end recipients. If omitted, AWS sets this to `false`.
  late final pulumi.Output<bool> twoWayChannelEnabled;
  /// IAM Role ARN for a service to assume, to be able to post inbound SMS messages.
  late final pulumi.Output<String> twoWayChannelRole;
  /// Whether to wait for the phone number to reach `ACTIVE` status before considering the resource created or updated. Defaults to `true`. Set to `false` for number types gated on carrier or registration approval (for example, `TEN_DLC`, `TOLL_FREE`, or any number submitted with `registrationId`), which can remain `PENDING` for days or weeks. When `false`, `pulumi up` returns once AWS accepts the phone number request; track activation with the `status` attribute.
  late final pulumi.Output<bool> waitForActive;

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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    deletionProtectionEnabled = registerOutput<bool>('deletionProtectionEnabled');
    forceDisassociate = registerOutput<bool?>('forceDisassociate');
    isoCountryCode = registerOutput<String>('isoCountryCode');
    messageType = registerOutput<String>('messageType');
    monthlyLeasingPrice = registerOutput<String>('monthlyLeasingPrice');
    numberCapabilities = registerOutput<List<String>>('numberCapabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    numberType = registerOutput<String>('numberType');
    optOutListName = registerOutput<String>('optOutListName');
    phoneNumber = registerOutput<String>('phoneNumber');
    region = registerOutput<String>('region');
    registrationId = registerOutput<String?>('registrationId');
    selfManagedOptOutsEnabled = registerOutput<bool>('selfManagedOptOutsEnabled');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<Smsvoicev2PhoneNumberTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Smsvoicev2PhoneNumberTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    twoWayChannelArn = registerOutput<String>('twoWayChannelArn');
    twoWayChannelEnabled = registerOutput<bool>('twoWayChannelEnabled');
    twoWayChannelRole = registerOutput<String>('twoWayChannelRole');
    waitForActive = registerOutput<bool>('waitForActive');
  }

  /// Gets an existing [Smsvoicev2PhoneNumber] resource's state with the given [name] and [id].
  static Smsvoicev2PhoneNumber get(
    String name,
    pulumi.Input<String> id, {
    Smsvoicev2PhoneNumberState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Smsvoicev2PhoneNumber._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Smsvoicev2PhoneNumber._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2PhoneNumber:Smsvoicev2PhoneNumber',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    deletionProtectionEnabled = registerOutput<bool>('deletionProtectionEnabled');
    forceDisassociate = registerOutput<bool?>('forceDisassociate');
    isoCountryCode = registerOutput<String>('isoCountryCode');
    messageType = registerOutput<String>('messageType');
    monthlyLeasingPrice = registerOutput<String>('monthlyLeasingPrice');
    numberCapabilities = registerOutput<List<String>>('numberCapabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    numberType = registerOutput<String>('numberType');
    optOutListName = registerOutput<String>('optOutListName');
    phoneNumber = registerOutput<String>('phoneNumber');
    region = registerOutput<String>('region');
    registrationId = registerOutput<String?>('registrationId');
    selfManagedOptOutsEnabled = registerOutput<bool>('selfManagedOptOutsEnabled');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<Smsvoicev2PhoneNumberTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Smsvoicev2PhoneNumberTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    twoWayChannelArn = registerOutput<String>('twoWayChannelArn');
    twoWayChannelEnabled = registerOutput<bool>('twoWayChannelEnabled');
    twoWayChannelRole = registerOutput<String>('twoWayChannelRole');
    waitForActive = registerOutput<bool>('waitForActive');
  }

  /// Creates a typed reference to an existing [Smsvoicev2PhoneNumber] resource.
  Smsvoicev2PhoneNumber.reference(String urn)
    : super(
        'aws:pinpoint/smsvoicev2PhoneNumber:Smsvoicev2PhoneNumber',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    deletionProtectionEnabled = registerOutput<bool>('deletionProtectionEnabled');
    forceDisassociate = registerOutput<bool?>('forceDisassociate');
    isoCountryCode = registerOutput<String>('isoCountryCode');
    messageType = registerOutput<String>('messageType');
    monthlyLeasingPrice = registerOutput<String>('monthlyLeasingPrice');
    numberCapabilities = registerOutput<List<String>>('numberCapabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    numberType = registerOutput<String>('numberType');
    optOutListName = registerOutput<String>('optOutListName');
    phoneNumber = registerOutput<String>('phoneNumber');
    region = registerOutput<String>('region');
    registrationId = registerOutput<String?>('registrationId');
    selfManagedOptOutsEnabled = registerOutput<bool>('selfManagedOptOutsEnabled');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<Smsvoicev2PhoneNumberTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Smsvoicev2PhoneNumberTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    twoWayChannelArn = registerOutput<String>('twoWayChannelArn');
    twoWayChannelEnabled = registerOutput<bool>('twoWayChannelEnabled');
    twoWayChannelRole = registerOutput<String>('twoWayChannelRole');
    waitForActive = registerOutput<bool>('waitForActive');
  }
}
