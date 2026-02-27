import 'package:pulumi/pulumi.dart';
import 'apns_channel_args.dart';

/// Provides a Pinpoint APNs Channel resource.
///
/// > **Note:** All arguments, including certificates and tokens, will be stored in the raw state as plain-text.
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Pinpoint APNs Channel using the `application-id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/apnsChannel:ApnsChannel apns application-id
/// ```
class ApnsChannel extends CustomResource {
  /// The application ID.
  late final Output<String> applicationId;

  /// The ID assigned to your iOS app. To find this value, choose Certificates, IDs & Profiles, choose App IDs in the Identifiers section, and choose your app.
  late final Output<String?> bundleId;

  /// The pem encoded TLS Certificate from Apple.
  late final Output<String?> certificate;

  /// The default authentication method used for APNs.
  /// __NOTE__: Amazon Pinpoint uses this default for every APNs push notification that you send using the console.
  /// You can override the default when you send a message programmatically using the Amazon Pinpoint API, the AWS CLI, or an AWS SDK.
  /// If your default authentication type fails, Amazon Pinpoint doesn't attempt to use the other authentication type.
  ///
  /// One of the following sets of credentials is also required.
  ///
  /// If you choose to use __Certificate credentials__ you will have to provide:
  late final Output<String?> defaultAuthenticationMethod;

  /// Whether the channel is enabled or disabled. Defaults to `true`.
  late final Output<bool?> enabled;

  /// The Certificate Private Key file (ie. `.key` file).
  ///
  /// If you choose to use __Key credentials__ you will have to provide:
  late final Output<String?> privateKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID assigned to your Apple developer account team. This value is provided on the Membership page.
  late final Output<String?> teamId;

  /// The `.p8` file that you download from your Apple developer account when you create an authentication key.
  late final Output<String?> tokenKey;

  /// The ID assigned to your signing key. To find this value, choose Certificates, IDs & Profiles, and choose your key in the Keys section.
  late final Output<String?> tokenKeyId;

  ApnsChannel(
    String name, {
    ApnsChannelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/apnsChannel:ApnsChannel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.bundleId = registerOutput<String?>('bundleId');
    this.certificate = registerOutput<String?>('certificate');
    this.defaultAuthenticationMethod =
        registerOutput<String?>('defaultAuthenticationMethod');
    this.enabled = registerOutput<bool?>('enabled');
    this.privateKey = registerOutput<String?>('privateKey');
    this.region = registerOutput<String>('region');
    this.teamId = registerOutput<String?>('teamId');
    this.tokenKey = registerOutput<String?>('tokenKey');
    this.tokenKeyId = registerOutput<String?>('tokenKeyId');
  }
}
