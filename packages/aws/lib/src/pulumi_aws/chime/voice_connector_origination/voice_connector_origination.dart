import 'package:pulumi/pulumi.dart';
import '../voice_connector_origination_route/voice_connector_origination_route.dart';
import 'voice_connector_origination_args.dart';

/// Enable origination settings to control inbound calling to your SIP infrastructure.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Chime Voice Connector Origination using the `voice_connector_id`. For example:
///
/// ```sh
/// $ pulumi import aws:chime/voiceConnectorOrigination:VoiceConnectorOrigination default abcdef1ghij2klmno3pqr4
/// ```
class VoiceConnectorOrigination extends CustomResource {
  /// When origination settings are disabled, inbound calls are not enabled for your Amazon Chime Voice Connector.
  late final Output<bool?> disabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Set of call distribution properties defined for your SIP hosts. See route below for more details. Minimum of 1. Maximum of 20.
  late final Output<List<VoiceConnectorOriginationRoute>> routes;

  /// The Amazon Chime Voice Connector ID.
  late final Output<String> voiceConnectorId;

  VoiceConnectorOrigination(
    String name, {
    VoiceConnectorOriginationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorOrigination:VoiceConnectorOrigination',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.disabled = registerOutput<bool?>('disabled');
    this.region = registerOutput<String>('region');
    this.routes =
        registerOutput<List<VoiceConnectorOriginationRoute>>('routes');
    this.voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }
}
