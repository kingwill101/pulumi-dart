// ignore_for_file: unused_element, unnecessary_cast

import 'update_policy_mode_alloydb_v1beta.dart';

/// Policy to be used while updating the instance.
class UpdatePolicyAlloydbV1beta {
  /// Mode for updating the instance.
  final UpdatePolicyModeAlloydbV1beta? mode;

  /// Creates a new [UpdatePolicyAlloydbV1beta].
  /// [mode] Mode for updating the instance.
  UpdatePolicyAlloydbV1beta({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode == null ? null : mode!.value,
    };
  }

  factory UpdatePolicyAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return UpdatePolicyAlloydbV1beta(
      mode: map['mode'] == null ? null : UpdatePolicyModeAlloydbV1beta.fromValue(map['mode'] as String),
    );
  }
}

