// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies if Scheduled Events should be auto-approved when all instances are down.
class AllInstancesDown {
  /// Specifies if Scheduled Events should be auto-approved when all instances are down. Its default value is true.
  final pulumi.Input<bool>? automaticallyApprove;

  /// Creates a new [AllInstancesDown].
  /// [automaticallyApprove] Specifies if Scheduled Events should be auto-approved when all instances are down. Its default value is true.
  const AllInstancesDown({
    this.automaticallyApprove,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticallyApprove': ?automaticallyApprove,
    };
  }

  factory AllInstancesDown.fromMap(Map<String, dynamic> map) {
    return AllInstancesDown(
      automaticallyApprove: (() { final guardedValue = map['automaticallyApprove']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
