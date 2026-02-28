// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directoryservice_radius_settings_radius_settings_args_doc}
/// The set of arguments for RadiusSettings.
/// {@endtemplate}
/// {@macro pulumi_directoryservice_radius_settings_radius_settings_args_doc}
class RadiusSettingsArgs {
  /// The protocol specified for your RADIUS endpoints. Valid values: `PAP`, `CHAP`, `MS-CHAPv1`, `MS-CHAPv2`.
  final pulumi.Input<String> authenticationProtocol;
  /// The identifier of the directory for which you want to manager RADIUS settings.
  final pulumi.Input<String> directoryId;
  /// Display label.
  final pulumi.Input<String> displayLabel;
  /// The port that your RADIUS server is using for communications. Your self-managed network must allow inbound traffic over this port from the AWS Directory Service servers.
  final pulumi.Input<int> radiusPort;
  /// The maximum number of times that communication with the RADIUS server is attempted. Minimum value of `0`. Maximum value of `10`.
  final pulumi.Input<int> radiusRetries;
  /// An array of strings that contains the fully qualified domain name (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server load balancer.
  final pulumi.Input<List<String>> radiusServers;
  /// The amount of time, in seconds, to wait for the RADIUS server to respond. Minimum value of `1`. Maximum value of `50`.
  final pulumi.Input<int> radiusTimeout;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Required for enabling RADIUS on the directory.
  final pulumi.Input<String> sharedSecret;
  /// Not currently used.
  final pulumi.Input<bool>? useSameUsername;

  /// Creates a new [RadiusSettingsArgs].
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
  RadiusSettingsArgs({
    required String authenticationProtocol,
    required String directoryId,
    required String displayLabel,
    required int radiusPort,
    required int radiusRetries,
    required List<String> radiusServers,
    required int radiusTimeout,
    String? region,
    required String sharedSecret,
    bool? useSameUsername,
  }) :
      authenticationProtocol = pulumi.Input.asInput<String>(authenticationProtocol),
      directoryId = pulumi.Input.asInput<String>(directoryId),
      displayLabel = pulumi.Input.asInput<String>(displayLabel),
      radiusPort = pulumi.Input.asInput<int>(radiusPort),
      radiusRetries = pulumi.Input.asInput<int>(radiusRetries),
      radiusServers = pulumi.Input.asInput<List<String>>(radiusServers),
      radiusTimeout = pulumi.Input.asInput<int>(radiusTimeout),
      region = pulumi.Input.asOptionalInput<String>(region),
      sharedSecret = pulumi.Input.asInput<String>(sharedSecret),
      useSameUsername = pulumi.Input.asOptionalInput<bool>(useSameUsername);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationProtocol': authenticationProtocol,
      'directoryId': directoryId,
      'displayLabel': displayLabel,
      'radiusPort': radiusPort,
      'radiusRetries': radiusRetries,
      'radiusServers': radiusServers,
      'radiusTimeout': radiusTimeout,
      'region': ?region,
      'sharedSecret': sharedSecret,
      'useSameUsername': ?useSameUsername,
    };
  }

  factory RadiusSettingsArgs.fromMap(Map<String, dynamic> map) {
    return RadiusSettingsArgs(
      authenticationProtocol: map['authenticationProtocol'] as String,
      directoryId: map['directoryId'] as String,
      displayLabel: map['displayLabel'] as String,
      radiusPort: map['radiusPort'] as int,
      radiusRetries: map['radiusRetries'] as int,
      radiusServers: (map['radiusServers'] as List).cast<String>(),
      radiusTimeout: map['radiusTimeout'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      sharedSecret: map['sharedSecret'] as String,
      useSameUsername: map['useSameUsername'] == null ? null : map['useSameUsername'] as bool,
    );
  }
}

