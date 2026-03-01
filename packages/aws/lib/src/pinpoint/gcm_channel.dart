import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcm_channel_args.dart';

/// Provides a Pinpoint GCM Channel resource.
///
/// > **Note:** Credentials (Service Account JSON and API Key) will be stored in the raw state as plain-text.
/// ## Import
///
/// Using `pulumi import`, import Pinpoint GCM Channel using the `application-id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/gcmChannel:GcmChannel gcm application-id
/// ```
class GcmChannel extends pulumi.CustomResource {
  /// Platform credential API key from Google.
  late final pulumi.Output<String?> apiKey;

  /// The application ID.
  late final pulumi.Output<String> applicationId;
  late final pulumi.Output<String?> defaultAuthenticationMethod;

  /// Whether the channel is enabled or disabled. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<String?> serviceJson;

  /// Creates a new [GcmChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GcmChannel]. {@macro pulumi_pinpoint_gcm_channel_gcm_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GcmChannel(
    String name, {
    GcmChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:pinpoint/gcmChannel:GcmChannel',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.apiKey = registerOutput<String?>('apiKey');
    this.applicationId = registerOutput<String>('applicationId');
    this.defaultAuthenticationMethod = registerOutput<String?>(
      'defaultAuthenticationMethod',
    );
    this.enabled = registerOutput<bool?>('enabled');
    this.region = registerOutput<String>('region');
    this.serviceJson = registerOutput<String?>('serviceJson');
  }
}
