// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Export operation configuration information
class FhirServiceExportConfiguration {
  /// The name of the default export storage account.
  final pulumi.Input<String>? storageAccountName;

  /// Creates a new [FhirServiceExportConfiguration].
  /// [storageAccountName] The name of the default export storage account.
  FhirServiceExportConfiguration({
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountName': ?storageAccountName,
    };
  }

  factory FhirServiceExportConfiguration.fromMap(Map<String, dynamic> map) {
    return FhirServiceExportConfiguration(
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

