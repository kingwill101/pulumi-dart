// ignore_for_file: unused_element, unnecessary_cast

import 'boot_diagnostics.dart';

/// Specifies the boot diagnostic settings state. Minimum api-version: 2015-06-15.
class DiagnosticsProfile {
  /// Boot Diagnostics is a debugging feature which allows you to view Console Output
  /// and Screenshot to diagnose VM status. **NOTE**: If storageUri is being
  /// specified then ensure that the storage account is in the same region and
  /// subscription as the VM. You can easily view the output of your console log.
  /// Azure also enables you to see a screenshot of the VM from the hypervisor.
  final BootDiagnostics? bootDiagnostics;

  /// Creates a new [DiagnosticsProfile].
  /// [bootDiagnostics] Boot Diagnostics is a debugging feature which allows you to view Console Output
  DiagnosticsProfile({
    this.bootDiagnostics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiagnostics': ?bootDiagnostics == null ? null : bootDiagnostics!.toMap(),
    };
  }

  factory DiagnosticsProfile.fromMap(Map<String, dynamic> map) {
    return DiagnosticsProfile(
      bootDiagnostics: map['bootDiagnostics'] == null ? null : BootDiagnostics.fromMap((map['bootDiagnostics'] as Map).cast<String, dynamic>()),
    );
  }
}

