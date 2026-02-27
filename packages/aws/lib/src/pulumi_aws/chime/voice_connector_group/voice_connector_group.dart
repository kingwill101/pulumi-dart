import 'package:pulumi/pulumi.dart' as pulumi;
import '../voice_connector_group_connector/voice_connector_group_connector.dart';
import 'voice_connector_group_args.dart';

/// Creates an Amazon Chime Voice Connector group under the administrator's AWS account. You can associate Amazon Chime Voice Connectors with the Amazon Chime Voice Connector group by including VoiceConnectorItems in the request.
///
/// You can include Amazon Chime Voice Connectors from different AWS Regions in your group. This creates a fault tolerant mechanism for fallback in case of availability events.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Configuration Recorder using the name. For example:
///
/// ```sh
/// $ pulumi import aws:chime/voiceConnectorGroup:VoiceConnectorGroup default example
/// ```
class VoiceConnectorGroup extends pulumi.CustomResource {
  /// The Amazon Chime Voice Connectors to route inbound calls to.
  late final pulumi.Output<List<VoiceConnectorGroupConnector>?> connectors;

  /// The name of the Amazon Chime Voice Connector group.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  VoiceConnectorGroup(
    String name, {
    VoiceConnectorGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorGroup:VoiceConnectorGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectors =
        registerOutput<List<VoiceConnectorGroupConnector>?>('connectors');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
