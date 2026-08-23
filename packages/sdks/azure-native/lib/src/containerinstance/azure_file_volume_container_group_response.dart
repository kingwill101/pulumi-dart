// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the Azure File volume. Azure File shares are mounted as volumes.
class AzureFileVolumeContainerGroupResponse {
  /// The flag indicating whether the Azure File shared mounted as a volume is read-only.
  final pulumi.Input<bool>? readOnly;
  /// The name of the Azure File share to be mounted as a volume.
  final pulumi.Input<String> shareName;
  /// The storage account access key used to access the Azure File share.
  final pulumi.Input<String>? storageAccountKey;
  /// The name of the storage account that contains the Azure File share.
  final pulumi.Input<String> storageAccountName;

  /// Creates a new [AzureFileVolumeContainerGroupResponse].
  /// [readOnly] The flag indicating whether the Azure File shared mounted as a volume is read-only.
  /// [shareName] The name of the Azure File share to be mounted as a volume.
  /// [storageAccountKey] The storage account access key used to access the Azure File share.
  /// [storageAccountName] The name of the storage account that contains the Azure File share.
  const AzureFileVolumeContainerGroupResponse({
    this.readOnly,
    required this.shareName,
    this.storageAccountKey,
    required this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readOnly': ?readOnly,
      'shareName': shareName,
      'storageAccountKey': ?storageAccountKey,
      'storageAccountName': storageAccountName,
    };
  }

  factory AzureFileVolumeContainerGroupResponse.fromMap(Map<String, dynamic> map) {
    return AzureFileVolumeContainerGroupResponse(
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      shareName: pulumi.Input.fromValue(map['shareName'] as String),
      storageAccountKey: (() { final guardedValue = map['storageAccountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: pulumi.Input.fromValue(map['storageAccountName'] as String),
    );
  }
}
