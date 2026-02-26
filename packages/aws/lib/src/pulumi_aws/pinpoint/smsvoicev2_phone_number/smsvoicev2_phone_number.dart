import 'package:pulumi/pulumi.dart';
import '../smsvoicev2_phone_number_timeouts/smsvoicev2_phone_number_timeouts.dart';
import 'smsvoicev2_phone_number_args.dart';

/// Manages an AWS End User Messaging SMS phone number.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pinpoint.Smsvoicev2PhoneNumber("example", {
/// isoCountryCode: "US",
/// messageType: "TRANSACTIONAL",
/// numberType: "TOLL_FREE",
/// numberCapabilities: ["SMS"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pinpoint.Smsvoicev2PhoneNumber("example",
/// iso_country_code="US",
/// message_type="TRANSACTIONAL",
/// number_type="TOLL_FREE",
/// number_capabilities=["SMS"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Pinpoint.Smsvoicev2PhoneNumber("example", new()
/// {
/// IsoCountryCode = "US",
/// MessageType = "TRANSACTIONAL",
/// NumberType = "TOLL_FREE",
/// NumberCapabilities = new[]
/// {
/// "SMS",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := pinpoint.NewSmsvoicev2PhoneNumber(ctx, "example", &pinpoint.Smsvoicev2PhoneNumberArgs{
/// IsoCountryCode: pulumi.String("US"),
/// MessageType:    pulumi.String("TRANSACTIONAL"),
/// NumberType:     pulumi.String("TOLL_FREE"),
/// NumberCapabilities: pulumi.StringArray{
/// pulumi.String("SMS"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Smsvoicev2PhoneNumber("example", Smsvoicev2PhoneNumberArgs.builder()
/// .isoCountryCode("US")
/// .messageType("TRANSACTIONAL")
/// .numberType("TOLL_FREE")
/// .numberCapabilities("SMS")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:pinpoint:Smsvoicev2PhoneNumber
/// properties:
/// isoCountryCode: US
/// messageType: TRANSACTIONAL
/// numberType: TOLL_FREE
/// numberCapabilities:
/// - SMS
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import phone numbers using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/smsvoicev2PhoneNumber:Smsvoicev2PhoneNumber example phone-abcdef0123456789abcdef0123456789
/// ```
class Smsvoicev2PhoneNumber extends CustomResource {
  /// ARN of the phone number.
  late final Output<String> arn;

  /// By default this is set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. When set to true the phone number can’t be deleted.
  late final Output<bool> deletionProtectionEnabled;

  /// The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
  late final Output<String> isoCountryCode;

  /// The type of message. Valid values are `TRANSACTIONAL` for messages that are critical or time-sensitive and `PROMOTIONAL` for messages that aren’t critical or time-sensitive.
  late final Output<String> messageType;

  /// The monthly price, in US dollars, to lease the phone number.
  late final Output<String> monthlyLeasingPrice;

  /// Describes if the origination identity can be used for text messages, voice calls or both. valid values are `SMS` and `VOICE`.
  late final Output<List<String>> numberCapabilities;

  /// The type of phone number to request. Possible values are `LONG_CODE`, `TOLL_FREE`, `TEN_DLC`, or `SIMULATOR`.
  late final Output<String> numberType;

  /// The name of the opt-out list to associate with the phone number.
  late final Output<String> optOutListName;

  /// The new phone number that was requested.
  late final Output<String> phoneNumber;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Use this field to attach your phone number for an external registration process.
  late final Output<String?> registrationId;

  /// When set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the opt-out list. When set to true you’re responsible for responding to HELP and STOP requests. You’re also responsible for tracking and honoring opt-out request.
  late final Output<bool> selfManagedOptOutsEnabled;
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<Smsvoicev2PhoneNumberTimeouts?> timeouts;

  /// Configuration for two-way SMS. Specify an ARN to receive incoming SMS messages, or `connect.[region].amazonaws.com` (with `[region]` replaced by the AWS Region of the Amazon Connect instance) to set Amazon Connect as the inbound destination.
  late final Output<String?> twoWayChannelArn;

  /// By default this is set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> you can receive incoming text messages from your end recipients.
  late final Output<bool> twoWayChannelEnabled;

  /// IAM Role ARN for a service to assume, to be able to post inbound SMS messages.
  late final Output<String?> twoWayChannelRole;

  Smsvoicev2PhoneNumber(
    String name, {
    Smsvoicev2PhoneNumberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2PhoneNumber:Smsvoicev2PhoneNumber',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.deletionProtectionEnabled = Output.createUnknown<bool>();
    this.isoCountryCode = Output.createUnknown<String>();
    this.messageType = Output.createUnknown<String>();
    this.monthlyLeasingPrice = Output.createUnknown<String>();
    this.numberCapabilities = Output.createUnknown<List<String>>();
    this.numberType = Output.createUnknown<String>();
    this.optOutListName = Output.createUnknown<String>();
    this.phoneNumber = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.registrationId = Output.createUnknown<String?>();
    this.selfManagedOptOutsEnabled = Output.createUnknown<bool>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<Smsvoicev2PhoneNumberTimeouts?>();
    this.twoWayChannelArn = Output.createUnknown<String?>();
    this.twoWayChannelEnabled = Output.createUnknown<bool>();
    this.twoWayChannelRole = Output.createUnknown<String?>();
  }
}
