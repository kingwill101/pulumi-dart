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
    pulumi.Output<String>? authenticationProtocol,
    pulumi.Output<String>? directoryId,
    pulumi.Output<String>? displayLabel,
    pulumi.Output<int>? radiusPort,
    pulumi.Output<int>? radiusRetries,
    pulumi.Output<List<String>>? radiusServers,
    pulumi.Output<int>? radiusTimeout,
    pulumi.Output<String>? region,
    pulumi.Output<String>? sharedSecret,
    pulumi.Output<bool>? useSameUsername,
  }) :
      authenticationProtocol = pulumi.Input.asOptionalInput<String>(authenticationProtocol),
      directoryId = pulumi.Input.asOptionalInput<String>(directoryId),
      displayLabel = pulumi.Input.asOptionalInput<String>(displayLabel),
      radiusPort = pulumi.Input.asOptionalInput<int>(radiusPort),
      radiusRetries = pulumi.Input.asOptionalInput<int>(radiusRetries),
      radiusServers = pulumi.Input.asOptionalInput<List<String>>(radiusServers),
      radiusTimeout = pulumi.Input.asOptionalInput<int>(radiusTimeout),
      region = pulumi.Input.asOptionalInput<String>(region),
      sharedSecret = pulumi.Input.asOptionalInput<String>(sharedSecret),
      useSameUsername = pulumi.Input.asOptionalInput<bool>(useSameUsername);

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
      authenticationProtocol: map['authenticationProtocol'] == null ? null : pulumi.Output.create<String>(map['authenticationProtocol'] as String),
      directoryId: map['directoryId'] == null ? null : pulumi.Output.create<String>(map['directoryId'] as String),
      displayLabel: map['displayLabel'] == null ? null : pulumi.Output.create<String>(map['displayLabel'] as String),
      radiusPort: map['radiusPort'] == null ? null : pulumi.Output.create<int>(map['radiusPort'] as int),
      radiusRetries: map['radiusRetries'] == null ? null : pulumi.Output.create<int>(map['radiusRetries'] as int),
      radiusServers: map['radiusServers'] == null ? null : pulumi.Output.create<List<String>>((map['radiusServers'] as List).cast<String>()),
      radiusTimeout: map['radiusTimeout'] == null ? null : pulumi.Output.create<int>(map['radiusTimeout'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sharedSecret: map['sharedSecret'] == null ? null : pulumi.Output.create<String>(map['sharedSecret'] as String),
      useSameUsername: map['useSameUsername'] == null ? null : pulumi.Output.create<bool>(map['useSameUsername'] as bool),
    );
  }
}

