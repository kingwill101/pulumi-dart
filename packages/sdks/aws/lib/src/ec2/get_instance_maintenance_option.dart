// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceMaintenanceOption {
  /// Automatic recovery behavior of the instance.
  final pulumi.Input<String> autoRecovery;

  /// Creates a new [GetInstanceMaintenanceOption].
  /// [autoRecovery] Automatic recovery behavior of the instance.
  const GetInstanceMaintenanceOption({
    required this.autoRecovery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRecovery': autoRecovery,
    };
  }

  factory GetInstanceMaintenanceOption.fromMap(Map<String, dynamic> map) {
    return GetInstanceMaintenanceOption(
      autoRecovery: pulumi.Input.fromValue(map['autoRecovery'] as String),
    );
  }
}

