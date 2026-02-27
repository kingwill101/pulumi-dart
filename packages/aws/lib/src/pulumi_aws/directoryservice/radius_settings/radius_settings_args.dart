// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RadiusSettings.
class RadiusSettingsArgs {
  /// The protocol specified for your RADIUS endpoints. Valid values: `PAP`, `CHAP`, `MS-CHAPv1`, `MS-CHAPv2`.
  final Input<String> authenticationProtocol;

  /// The identifier of the directory for which you want to manager RADIUS settings.
  final Input<String> directoryId;

  /// Display label.
  final Input<String> displayLabel;

  /// The port that your RADIUS server is using for communications. Your self-managed network must allow inbound traffic over this port from the AWS Directory Service servers.
  final Input<int> radiusPort;

  /// The maximum number of times that communication with the RADIUS server is attempted. Minimum value of `0`. Maximum value of `10`.
  final Input<int> radiusRetries;

  /// An array of strings that contains the fully qualified domain name (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server load balancer.
  final Input<List<String>> radiusServers;

  /// The amount of time, in seconds, to wait for the RADIUS server to respond. Minimum value of `1`. Maximum value of `50`.
  final Input<int> radiusTimeout;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Required for enabling RADIUS on the directory.
  final Input<String> sharedSecret;

  /// Not currently used.
  final Input<bool>? useSameUsername;

  RadiusSettingsArgs({
    required this.authenticationProtocol,
    required this.directoryId,
    required this.displayLabel,
    required this.radiusPort,
    required this.radiusRetries,
    required this.radiusServers,
    required this.radiusTimeout,
    this.region,
    required this.sharedSecret,
    this.useSameUsername,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authenticationProtocol'] = authenticationProtocol;
    map['directoryId'] = directoryId;
    map['displayLabel'] = displayLabel;
    map['radiusPort'] = radiusPort;
    map['radiusRetries'] = radiusRetries;
    map['radiusServers'] = radiusServers;
    map['radiusTimeout'] = radiusTimeout;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sharedSecret'] = sharedSecret;
    final useSameUsernameValue = useSameUsername;
    if (useSameUsernameValue != null) {
      map['useSameUsername'] = useSameUsernameValue;
    }
    return map;
  }

  factory RadiusSettingsArgs.fromMap(Map<String, dynamic> map) {
    return RadiusSettingsArgs(
      authenticationProtocol:
          Input.asInput<String>(map['authenticationProtocol']),
      directoryId: Input.asInput<String>(map['directoryId']),
      displayLabel: Input.asInput<String>(map['displayLabel']),
      radiusPort: Input.asInput<int>(map['radiusPort']),
      radiusRetries: Input.asInput<int>(map['radiusRetries']),
      radiusServers: Input.asInput<List<String>>(map['radiusServers']),
      radiusTimeout: Input.asInput<int>(map['radiusTimeout']),
      region: Input.asOptionalInput<String>(map['region']),
      sharedSecret: Input.asInput<String>(map['sharedSecret']),
      useSameUsername: Input.asOptionalInput<bool>(map['useSameUsername']),
    );
  }
}
