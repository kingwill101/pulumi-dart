// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Boot Diagnostics is a debugging feature which allows you to view Console Output
/// and Screenshot to diagnose VM status. You can easily view the output of your
/// console log. Azure also enables you to see a screenshot of the VM from the
/// hypervisor.
class BootDiagnosticsResponse {
  /// Whether boot diagnostics should be enabled on the Virtual Machine.
  final pulumi.Input<bool>? enabled;
  /// Uri of the storage account to use for placing the console output and
  /// screenshot. If storageUri is not specified while enabling boot diagnostics,
  /// managed storage will be used.
  final pulumi.Input<String>? storageUri;

  /// Creates a new [BootDiagnosticsResponse].
  /// [enabled] Whether boot diagnostics should be enabled on the Virtual Machine.
  /// [storageUri] Uri of the storage account to use for placing the console output and
  BootDiagnosticsResponse({
    this.enabled,
    this.storageUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'storageUri': ?storageUri,
    };
  }

  factory BootDiagnosticsResponse.fromMap(Map<String, dynamic> map) {
    return BootDiagnosticsResponse(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      storageUri: map['storageUri'] == null ? null : (map['storageUri']! as String).input(),
    );
  }
}

