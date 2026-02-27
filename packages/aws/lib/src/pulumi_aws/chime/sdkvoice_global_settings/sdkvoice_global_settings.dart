import 'package:pulumi/pulumi.dart' as pulumi;
import '../sdkvoice_global_settings_voice_connector/sdkvoice_global_settings_voice_connector.dart';
import 'sdkvoice_global_settings_args.dart';

/// Resource for managing Amazon Chime SDK Voice Global Settings.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS Chime SDK Voice Global Settings using the `id` (AWS account ID). For example:
///
/// ```sh
/// $ pulumi import aws:chime/sdkvoiceGlobalSettings:SdkvoiceGlobalSettings example 123456789012
/// ```
class SdkvoiceGlobalSettings extends pulumi.CustomResource {
  /// The Voice Connector settings. See voice_connector.
  late final pulumi.Output<SdkvoiceGlobalSettingsVoiceConnector> voiceConnector;

  SdkvoiceGlobalSettings(
    String name, {
    SdkvoiceGlobalSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/sdkvoiceGlobalSettings:SdkvoiceGlobalSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.voiceConnector =
        registerOutput<SdkvoiceGlobalSettingsVoiceConnector>('voiceConnector');
  }
}
