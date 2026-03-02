// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTablePointInTimeRecovery {
  final pulumi.Input<bool> enabled;
  final pulumi.Input<int> recoveryPeriodInDays;

  /// Creates a new [GetTablePointInTimeRecovery].
  /// [enabled] Required.
  /// [recoveryPeriodInDays] Required.
  GetTablePointInTimeRecovery({
    required this.enabled,
    required this.recoveryPeriodInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'recoveryPeriodInDays': recoveryPeriodInDays,
    };
  }

  factory GetTablePointInTimeRecovery.fromMap(Map<String, dynamic> map) {
    return GetTablePointInTimeRecovery(
      enabled: (map['enabled'] as bool).input(),
      recoveryPeriodInDays: (map['recoveryPeriodInDays'] as int).input(),
    );
  }
}

