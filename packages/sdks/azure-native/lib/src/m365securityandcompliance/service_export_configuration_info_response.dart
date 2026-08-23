// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Export operation configuration information
class ServiceExportConfigurationInfoResponse {
  /// The name of the default export storage account.
  final pulumi.Input<String>? storageAccountName;

  /// Creates a new [ServiceExportConfigurationInfoResponse].
  /// [storageAccountName] The name of the default export storage account.
  const ServiceExportConfigurationInfoResponse({
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountName': ?storageAccountName,
    };
  }

  factory ServiceExportConfigurationInfoResponse.fromMap(Map<String, dynamic> map) {
    return ServiceExportConfigurationInfoResponse(
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
