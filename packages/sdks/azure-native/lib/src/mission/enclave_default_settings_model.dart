// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual Enclave Default Settings
class EnclaveDefaultSettingsModel {
  /// Diagnostic Destination.
  final pulumi.Input<String>? diagnosticDestination;

  /// Creates a new [EnclaveDefaultSettingsModel].
  /// [diagnosticDestination] Diagnostic Destination.
  EnclaveDefaultSettingsModel({
    this.diagnosticDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnosticDestination': ?diagnosticDestination,
    };
  }

  factory EnclaveDefaultSettingsModel.fromMap(Map<String, dynamic> map) {
    return EnclaveDefaultSettingsModel(
      diagnosticDestination: map['diagnosticDestination'] == null ? null : (map['diagnosticDestination']! as String).input(),
    );
  }
}

