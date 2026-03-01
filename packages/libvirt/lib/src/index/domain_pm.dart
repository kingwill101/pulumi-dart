// ignore_for_file: unused_element, unnecessary_cast

import 'domain_pm_suspend_to_disk.dart';
import 'domain_pm_suspend_to_mem.dart';

class DomainPm {
  /// Configures the suspend to disk feature for power management.
  final DomainPmSuspendToDisk? suspendToDisk;
  /// Configures the suspend to disk feature for power management.
  final DomainPmSuspendToMem? suspendToMem;

  /// Creates a new [DomainPm].
  /// [suspendToDisk] Configures the suspend to disk feature for power management.
  /// [suspendToMem] Configures the suspend to disk feature for power management.
  DomainPm({
    this.suspendToDisk,
    this.suspendToMem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'suspendToDisk': ?suspendToDisk == null ? null : suspendToDisk!.toMap(),
      'suspendToMem': ?suspendToMem == null ? null : suspendToMem!.toMap(),
    };
  }

  factory DomainPm.fromMap(Map<String, dynamic> map) {
    return DomainPm(
      suspendToDisk: map['suspendToDisk'] == null ? null : DomainPmSuspendToDisk.fromMap((map['suspendToDisk'] as Map).cast<String, dynamic>()),
      suspendToMem: map['suspendToMem'] == null ? null : DomainPmSuspendToMem.fromMap((map['suspendToMem'] as Map).cast<String, dynamic>()),
    );
  }
}

