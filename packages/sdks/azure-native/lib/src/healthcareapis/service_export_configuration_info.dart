// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Export operation configuration information
class ServiceExportConfigurationInfo {
  /// The name of the default export storage account.
  final pulumi.Input<String>? storageAccountName;

  /// Creates a new [ServiceExportConfigurationInfo].
  /// [storageAccountName] The name of the default export storage account.
  const ServiceExportConfigurationInfo({
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountName': ?storageAccountName,
    };
  }

  factory ServiceExportConfigurationInfo.fromMap(Map<String, dynamic> map) {
    return ServiceExportConfigurationInfo(
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

