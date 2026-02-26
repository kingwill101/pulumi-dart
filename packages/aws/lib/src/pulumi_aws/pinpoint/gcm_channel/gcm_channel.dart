import 'package:pulumi/pulumi.dart';
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
class GcmChannel extends CustomResource {
  /// Platform credential API key from Google.
  late final Output<String?> apiKey;

  /// The application ID.
  late final Output<String> applicationId;
  late final Output<String?> defaultAuthenticationMethod;

  /// Whether the channel is enabled or disabled. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<String?> serviceJson;

  GcmChannel(
    String name, {
    GcmChannelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/gcmChannel:GcmChannel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiKey = registerOutput<String?>('apiKey');
    this.applicationId = registerOutput<String>('applicationId');
    this.defaultAuthenticationMethod =
        registerOutput<String?>('defaultAuthenticationMethod');
    this.enabled = registerOutput<bool?>('enabled');
    this.region = registerOutput<String>('region');
    this.serviceJson = registerOutput<String?>('serviceJson');
  }
}
