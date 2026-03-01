// ignore_for_file: unused_element, unnecessary_cast


/// The properties of the Azure File volume. Azure File shares are mounted as volumes.
class AzureFileVolumeResponse {
  /// The flag indicating whether the Azure File shared mounted as a volume is read-only.
  final bool? readOnly;
  /// The name of the Azure File share to be mounted as a volume.
  final String shareName;
  /// The storage account access key used to access the Azure File share.
  final String? storageAccountKey;
  /// The reference to the storage account access key used to access the Azure File share.
  final String? storageAccountKeyReference;
  /// The name of the storage account that contains the Azure File share.
  final String storageAccountName;

  /// Creates a new [AzureFileVolumeResponse].
  /// [readOnly] The flag indicating whether the Azure File shared mounted as a volume is read-only.
  /// [shareName] The name of the Azure File share to be mounted as a volume.
  /// [storageAccountKey] The storage account access key used to access the Azure File share.
  /// [storageAccountKeyReference] The reference to the storage account access key used to access the Azure File share.
  /// [storageAccountName] The name of the storage account that contains the Azure File share.
  AzureFileVolumeResponse({
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

  factory AzureFileVolumeResponse.fromMap(Map<String, dynamic> map) {
    return AzureFileVolumeResponse(
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      shareName: map['shareName'] as String,
      storageAccountKey: map['storageAccountKey'] == null ? null : map['storageAccountKey'] as String,
      storageAccountKeyReference: map['storageAccountKeyReference'] == null ? null : map['storageAccountKeyReference'] as String,
      storageAccountName: map['storageAccountName'] as String,
    );
  }
}

