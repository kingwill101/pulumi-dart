// ignore_for_file: unused_element, unnecessary_cast

import 'boot_diagnostics_response.dart';

/// Specifies the boot diagnostic settings state. Minimum api-version: 2015-06-15.
class DiagnosticsProfileResponse {
  /// Boot Diagnostics is a debugging feature which allows you to view Console Output and Screenshot to diagnose VM status. **NOTE**: If storageUri is being specified then ensure that the storage account is in the same region and subscription as the VM. You can easily view the output of your console log. Azure also enables you to see a screenshot of the VM from the hypervisor.
  final BootDiagnosticsResponse? bootDiagnostics;

  /// Creates a new [DiagnosticsProfileResponse].
  /// [bootDiagnostics] Boot Diagnostics is a debugging feature which allows you to view Console Output and Screenshot to diagnose VM status. **NOTE**: If storageUri is being specified then ensure that the storage account is in the same region and subscription as the VM. You can easily view the output of your console log. Azure also enables you to see a screenshot of the VM from the hypervisor.
  DiagnosticsProfileResponse({
    this.bootDiagnostics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiagnostics': ?bootDiagnostics == null ? null : bootDiagnostics!.toMap(),
    };
  }

  factory DiagnosticsProfileResponse.fromMap(Map<String, dynamic> map) {
    return DiagnosticsProfileResponse(
      bootDiagnostics: map['bootDiagnostics'] == null ? null : BootDiagnosticsResponse.fromMap((map['bootDiagnostics'] as Map).cast<String, dynamic>()),
    );
  }
}

