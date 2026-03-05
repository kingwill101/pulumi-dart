// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Export operation configuration information
class FhirServiceExportConfigurationResponse {
  /// The name of the default export storage account.
  final pulumi.Input<String>? storageAccountName;

  /// Creates a new [FhirServiceExportConfigurationResponse].
  /// [storageAccountName] The name of the default export storage account.
  FhirServiceExportConfigurationResponse({
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountName': ?storageAccountName,
    };
  }

  factory FhirServiceExportConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FhirServiceExportConfigurationResponse(
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

