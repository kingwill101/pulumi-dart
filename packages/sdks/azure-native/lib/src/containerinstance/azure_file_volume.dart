// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the Azure File volume. Azure File shares are mounted as volumes.
class AzureFileVolume {
  /// The flag indicating whether the Azure File shared mounted as a volume is read-only.
  final pulumi.Input<bool>? readOnly;
  /// The name of the Azure File share to be mounted as a volume.
  final pulumi.Input<String> shareName;
  /// The storage account access key used to access the Azure File share.
  final pulumi.Input<String>? storageAccountKey;
  /// The reference to the storage account access key used to access the Azure File share.
  final pulumi.Input<String>? storageAccountKeyReference;
  /// The name of the storage account that contains the Azure File share.
  final pulumi.Input<String> storageAccountName;

  /// Creates a new [AzureFileVolume].
  /// [readOnly] The flag indicating whether the Azure File shared mounted as a volume is read-only.
  /// [shareName] The name of the Azure File share to be mounted as a volume.
  /// [storageAccountKey] The storage account access key used to access the Azure File share.
  /// [storageAccountKeyReference] The reference to the storage account access key used to access the Azure File share.
  /// [storageAccountName] The name of the storage account that contains the Azure File share.
  AzureFileVolume({
    this.readOnly,
    required this.shareName,
    this.storageAccountKey,
    this.storageAccountKeyReference,
    required this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readOnly': ?readOnly,
      'shareName': shareName,
      'storageAccountKey': ?storageAccountKey,
      'storageAccountKeyReference': ?storageAccountKeyReference,
      'storageAccountName': storageAccountName,
    };
  }

  factory AzureFileVolume.fromMap(Map<String, dynamic> map) {
    return AzureFileVolume(
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
      shareName: (map['shareName'] as String).input(),
      storageAccountKey: map['storageAccountKey'] == null ? null : (map['storageAccountKey']! as String).input(),
      storageAccountKeyReference: map['storageAccountKeyReference'] == null ? null : (map['storageAccountKeyReference']! as String).input(),
      storageAccountName: (map['storageAccountName'] as String).input(),
    );
  }
}

