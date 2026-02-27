import 'package:pulumi/pulumi.dart' as pulumi;
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
class AdmChannel extends pulumi.CustomResource {
  /// The application ID.
  late final pulumi.Output<String> applicationId;

  /// Client ID (part of OAuth Credentials) obtained via Amazon Developer Account.
  late final pulumi.Output<String> clientId;

  /// Client Secret (part of OAuth Credentials) obtained via Amazon Developer Account.
  late final pulumi.Output<String> clientSecret;

  /// Specifies whether to enable the channel. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  AdmChannel(
    String name, {
    AdmChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/admChannel:AdmChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.clientId = registerOutput<String>('clientId');
    this.clientSecret = registerOutput<String>('clientSecret');
    this.enabled = registerOutput<bool?>('enabled');
    this.region = registerOutput<String>('region');
  }
}
