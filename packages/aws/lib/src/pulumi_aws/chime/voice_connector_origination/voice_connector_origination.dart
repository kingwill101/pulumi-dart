import 'package:pulumi/pulumi.dart' as pulumi;
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
class VoiceConnectorOrigination extends pulumi.CustomResource {
  /// When origination settings are disabled, inbound calls are not enabled for your Amazon Chime Voice Connector.
  late final pulumi.Output<bool?> disabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Set of call distribution properties defined for your SIP hosts. See route below for more details. Minimum of 1. Maximum of 20.
  late final pulumi.Output<List<VoiceConnectorOriginationRoute>> routes;

  /// The Amazon Chime Voice Connector ID.
  late final pulumi.Output<String> voiceConnectorId;

  VoiceConnectorOrigination(
    String name, {
    VoiceConnectorOriginationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorOrigination:VoiceConnectorOrigination',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.disabled = registerOutput<bool?>('disabled');
    this.region = registerOutput<String>('region');
    this.routes =
        registerOutput<List<VoiceConnectorOriginationRoute>>('routes');
    this.voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }
}
