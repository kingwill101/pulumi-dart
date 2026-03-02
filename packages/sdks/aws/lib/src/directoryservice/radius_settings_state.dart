// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RadiusSettings resources.
class RadiusSettingsState {
  /// The protocol specified for your RADIUS endpoints. Valid values: `PAP`, `CHAP`, `MS-CHAPv1`, `MS-CHAPv2`.
  final pulumi.Input<String>? authenticationProtocol;
  /// The identifier of the directory for which you want to manager RADIUS settings.
  final pulumi.Input<String>? directoryId;
  /// Display label.
  final pulumi.Input<String>? displayLabel;
  /// The port that your RADIUS server is using for communications. Your self-managed network must allow inbound traffic over this port from the AWS Directory Service servers.
  final pulumi.Input<int>? radiusPort;
  /// The maximum number of times that communication with the RADIUS server is attempted. Minimum value of `0`. Maximum value of `10`.
  final pulumi.Input<int>? radiusRetries;
  /// An array of strings that contains the fully qualified domain name (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server load balancer.
  final pulumi.Input<List<String>>? radiusServers;
  /// The amount of time, in seconds, to wait for the RADIUS server to respond. Minimum value of `1`. Maximum value of `50`.
  final pulumi.Input<int>? radiusTimeout;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Required for enabling RADIUS on the directory.
  final pulumi.Input<String>? sharedSecret;
  /// Not currently used.
  final pulumi.Input<bool>? useSameUsername;

  /// Creates a new [RadiusSettingsState].
  /// [authenticationProtocol] The protocol specified for your RADIUS endpoints. Valid values: `PAP`, `CHAP`, `MS-CHAPv1`, `MS-CHAPv2`.
  /// [directoryId] The identifier of the directory for which you want to manager RADIUS settings.
  /// [displayLabel] Display label.
  /// [radiusPort] The port that your RADIUS server is using for communications. Your self-managed network must allow inbound traffic over this port from the AWS Directory Service servers.
  /// [radiusRetries] The maximum number of times that communication with the RADIUS server is attempted. Minimum value of `0`. Maximum value of `10`.
  /// [radiusServers] An array of strings that contains the fully qualified domain name (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server load balancer.
  /// [radiusTimeout] The amount of time, in seconds, to wait for the RADIUS server to respond. Minimum value of `1`. Maximum value of `50`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sharedSecret] Required for enabling RADIUS on the directory.
  /// [useSameUsername] Not currently used.
  RadiusSettingsState({
    this.authenticationProtocol,
    this.directoryId,
    this.displayLabel,
    this.radiusPort,
    this.radiusRetries,
    this.radiusServers,
    this.radiusTimeout,
    this.region,
    this.sharedSecret,
    this.useSameUsername,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationProtocol': ?authenticationProtocol,
      'directoryId': ?directoryId,
      'displayLabel': ?displayLabel,
      'radiusPort': ?radiusPort,
      'radiusRetries': ?radiusRetries,
      'radiusServers': ?radiusServers,
      'radiusTimeout': ?radiusTimeout,
      'region': ?region,
      'sharedSecret': ?sharedSecret,
      'useSameUsername': ?useSameUsername,
    };
  }

  factory RadiusSettingsState.fromMap(Map<String, dynamic> map) {
    return RadiusSettingsState(
      authenticationProtocol: map['authenticationProtocol'] == null ? null : ((map['authenticationProtocol'] as String).input()).input(),
      directoryId: map['directoryId'] == null ? null : ((map['directoryId'] as String).input()).input(),
      displayLabel: map['displayLabel'] == null ? null : ((map['displayLabel'] as String).input()).input(),
      radiusPort: map['radiusPort'] == null ? null : ((map['radiusPort'] as int).input()).input(),
      radiusRetries: map['radiusRetries'] == null ? null : ((map['radiusRetries'] as int).input()).input(),
      radiusServers: map['radiusServers'] == null ? null : (((map['radiusServers'] as List).cast<String>()).input()).input(),
      radiusTimeout: map['radiusTimeout'] == null ? null : ((map['radiusTimeout'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      sharedSecret: map['sharedSecret'] == null ? null : ((map['sharedSecret'] as String).input()).input(),
      useSameUsername: map['useSameUsername'] == null ? null : ((map['useSameUsername'] as bool).input()).input(),
    );
  }
}

