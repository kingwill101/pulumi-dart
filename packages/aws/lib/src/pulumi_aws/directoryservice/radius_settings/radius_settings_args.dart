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

  /// The maximum number of times that communication with the RADIUS server is attempted. Minimum value of <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>. Maximum value of <span pulumi-lang-nodejs="`10`" pulumi-lang-dotnet="`10`" pulumi-lang-go="`10`" pulumi-lang-python="`10`" pulumi-lang-yaml="`10`" pulumi-lang-java="`10`">`10`</span>.
  final Input<int> radiusRetries;

  /// An array of strings that contains the fully qualified domain name (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server load balancer.
  final Input<List<String>> radiusServers;

  /// The amount of time, in seconds, to wait for the RADIUS server to respond. Minimum value of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. Maximum value of <span pulumi-lang-nodejs="`50`" pulumi-lang-dotnet="`50`" pulumi-lang-go="`50`" pulumi-lang-python="`50`" pulumi-lang-yaml="`50`" pulumi-lang-java="`50`">`50`</span>.
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
