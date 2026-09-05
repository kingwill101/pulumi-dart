// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolTimeoutSetting {
  /// Time after disconnection when a user is logged out of their WorkSpace. Must be between 1 and 36000.
  final pulumi.Input<int> disconnectTimeoutInSeconds;
  /// Time after inactivity when a user is disconnected from their WorkSpace. Must be between 1 and 36000.
  final pulumi.Input<int> idleDisconnectTimeoutInSeconds;
  /// Maximum time that a user can be connected to their WorkSpace. Must be between 1 and 432000.
  final pulumi.Input<int> maxUserDurationInSeconds;

  /// Creates a new [PoolTimeoutSetting].
  /// [disconnectTimeoutInSeconds] Time after disconnection when a user is logged out of their WorkSpace. Must be between 1 and 36000.
  /// [idleDisconnectTimeoutInSeconds] Time after inactivity when a user is disconnected from their WorkSpace. Must be between 1 and 36000.
  /// [maxUserDurationInSeconds] Maximum time that a user can be connected to their WorkSpace. Must be between 1 and 432000.
  const PoolTimeoutSetting({
    required this.disconnectTimeoutInSeconds,
    required this.idleDisconnectTimeoutInSeconds,
    required this.maxUserDurationInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disconnectTimeoutInSeconds': disconnectTimeoutInSeconds,
      'idleDisconnectTimeoutInSeconds': idleDisconnectTimeoutInSeconds,
      'maxUserDurationInSeconds': maxUserDurationInSeconds,
    };
  }

  factory PoolTimeoutSetting.fromMap(Map<String, dynamic> map) {
    return PoolTimeoutSetting(
      disconnectTimeoutInSeconds: pulumi.Input.fromValue((map['disconnectTimeoutInSeconds'] as num).toInt()),
      idleDisconnectTimeoutInSeconds: pulumi.Input.fromValue((map['idleDisconnectTimeoutInSeconds'] as num).toInt()),
      maxUserDurationInSeconds: pulumi.Input.fromValue((map['maxUserDurationInSeconds'] as num).toInt()),
    );
  }
}
