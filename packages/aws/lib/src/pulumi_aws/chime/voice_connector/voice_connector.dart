import 'package:pulumi/pulumi.dart';
import 'voice_connector_args.dart';

/// Enables you to connect your phone system to the telephone network at a substantial cost savings by using SIP trunking.
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
/// $ pulumi import aws:chime/voiceConnector:VoiceConnector test example
/// ```
class VoiceConnector extends CustomResource {
  /// ARN (Amazon Resource Name) of the Amazon Chime Voice Connector.
  late final Output<String> arn;

  /// The AWS Region in which the Amazon Chime Voice Connector is created. Default value: `us-east-1`
  late final Output<String> awsRegion;

  /// The name of the Amazon Chime Voice Connector.
  late final Output<String> name;

  /// The outbound host name for the Amazon Chime Voice Connector.
  late final Output<String> outboundHostName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// When enabled, requires encryption for the Amazon Chime Voice Connector.
  ///
  /// The following arguments are optional:
  late final Output<bool> requireEncryption;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  VoiceConnector(
    String name, {
    VoiceConnectorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnector:VoiceConnector',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsRegion = registerOutput<String>('awsRegion');
    this.name = registerOutput<String>('name');
    this.outboundHostName = registerOutput<String>('outboundHostName');
    this.region = registerOutput<String>('region');
    this.requireEncryption = registerOutput<bool>('requireEncryption');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
