import 'package:pulumi/pulumi.dart';
import 'voice_connector_termination_args.dart';

/// Enable Termination settings to control outbound calling from your SIP infrastructure.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Chime Voice Connector Termination using the `voice_connector_id`. For example:
///
/// ```sh
/// $ pulumi import aws:chime/voiceConnectorTermination:VoiceConnectorTermination default abcdef1ghij2klmno3pqr4
/// ```
class VoiceConnectorTermination extends CustomResource {
  /// The countries to which calls are allowed, in ISO 3166-1 alpha-2 format.
  late final Output<List<String>> callingRegions;

  /// The IP addresses allowed to make calls, in CIDR format.
  late final Output<List<String>> cidrAllowLists;

  /// The limit on calls per second. Max value based on account service quota. Default value of `1`.
  late final Output<int?> cpsLimit;

  /// The default caller ID phone number.
  late final Output<String?> defaultPhoneNumber;

  /// When termination settings are disabled, outbound calls can not be made.
  late final Output<bool?> disabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Chime Voice Connector ID.
  late final Output<String> voiceConnectorId;

  VoiceConnectorTermination(
    String name, {
    VoiceConnectorTerminationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorTermination:VoiceConnectorTermination',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.callingRegions = registerOutput<List<String>>('callingRegions');
    this.cidrAllowLists = registerOutput<List<String>>('cidrAllowLists');
    this.cpsLimit = registerOutput<int?>('cpsLimit');
    this.defaultPhoneNumber = registerOutput<String?>('defaultPhoneNumber');
    this.disabled = registerOutput<bool?>('disabled');
    this.region = registerOutput<String>('region');
    this.voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }
}
