// ignore_for_file: unused_element, unnecessary_cast

import 'update_policy_mode2.dart';

/// Policy to be used while updating the instance.
class UpdatePolicy2 {
  /// Mode for updating the instance.
  final UpdatePolicyMode2? mode;

  UpdatePolicy2({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue.value;
    }
    return map;
  }

  factory UpdatePolicy2.fromMap(Map<String, dynamic> map) {
    return UpdatePolicy2(
      mode: map['mode'] == null
          ? null
          : UpdatePolicyMode2.fromValue(map['mode'] as String),
    );
  }
}
