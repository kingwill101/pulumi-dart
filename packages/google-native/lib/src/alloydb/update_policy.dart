// ignore_for_file: unused_element, unnecessary_cast

import 'update_policy_mode.dart';

/// Policy to be used while updating the instance.
class UpdatePolicy {
  /// Mode for updating the instance.
  final UpdatePolicyMode? mode;

  /// Creates a new [UpdatePolicy].
  /// [mode] Mode for updating the instance.
  UpdatePolicy({this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': ?mode == null ? null : mode!.value};
  }

  factory UpdatePolicy.fromMap(Map<String, dynamic> map) {
    return UpdatePolicy(
      mode: map['mode'] == null
          ? null
          : UpdatePolicyMode.fromValue(map['mode'] as String),
    );
  }
}
