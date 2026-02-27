import 'package:pulumi/pulumi.dart';
import 'radius_settings_args.dart';

/// Manages a directory's multi-factor authentication (MFA) using a Remote Authentication Dial In User Service (RADIUS) server.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import RADIUS settings using the directory ID. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/radiusSettings:RadiusSettings example d-926724cf57
/// ```
class RadiusSettings extends CustomResource {
  /// The protocol specified for your RADIUS endpoints. Valid values: `PAP`, `CHAP`, `MS-CHAPv1`, `MS-CHAPv2`.
  late final Output<String> authenticationProtocol;

  /// The identifier of the directory for which you want to manager RADIUS settings.
  late final Output<String> directoryId;

  /// Display label.
  late final Output<String> displayLabel;

  /// The port that your RADIUS server is using for communications. Your self-managed network must allow inbound traffic over this port from the AWS Directory Service servers.
  late final Output<int> radiusPort;

  /// The maximum number of times that communication with the RADIUS server is attempted. Minimum value of `0`. Maximum value of `10`.
  late final Output<int> radiusRetries;

  /// An array of strings that contains the fully qualified domain name (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server load balancer.
  late final Output<List<String>> radiusServers;

  /// The amount of time, in seconds, to wait for the RADIUS server to respond. Minimum value of `1`. Maximum value of `50`.
  late final Output<int> radiusTimeout;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Required for enabling RADIUS on the directory.
  late final Output<String> sharedSecret;

  /// Not currently used.
  late final Output<bool?> useSameUsername;

  RadiusSettings(
    String name, {
    RadiusSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/radiusSettings:RadiusSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authenticationProtocol =
        registerOutput<String>('authenticationProtocol');
    this.directoryId = registerOutput<String>('directoryId');
    this.displayLabel = registerOutput<String>('displayLabel');
    this.radiusPort = registerOutput<int>('radiusPort');
    this.radiusRetries = registerOutput<int>('radiusRetries');
    this.radiusServers = registerOutput<List<String>>('radiusServers');
    this.radiusTimeout = registerOutput<int>('radiusTimeout');
    this.region = registerOutput<String>('region');
    this.sharedSecret = registerOutput<String>('sharedSecret');
    this.useSameUsername = registerOutput<bool?>('useSameUsername');
  }
}
