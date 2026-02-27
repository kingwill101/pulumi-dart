import 'package:pulumi/pulumi.dart';
import 'adm_channel_args.dart';

/// Provides a Pinpoint ADM (Amazon Device Messaging) Channel resource.
///
/// > **Note:** All arguments including the Client ID and Client Secret will be stored in the raw state as plain-text.
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Pinpoint ADM Channel using the `application-id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/admChannel:AdmChannel channel application-id
/// ```
class AdmChannel extends CustomResource {
  /// The application ID.
  late final Output<String> applicationId;

  /// Client ID (part of OAuth Credentials) obtained via Amazon Developer Account.
  late final Output<String> clientId;

  /// Client Secret (part of OAuth Credentials) obtained via Amazon Developer Account.
  late final Output<String> clientSecret;

  /// Specifies whether to enable the channel. Defaults to `true`.
  late final Output<bool?> enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  AdmChannel(
    String name, {
    AdmChannelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/admChannel:AdmChannel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.clientId = registerOutput<String>('clientId');
    this.clientSecret = registerOutput<String>('clientSecret');
    this.enabled = registerOutput<bool?>('enabled');
    this.region = registerOutput<String>('region');
  }
}
