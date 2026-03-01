// ignore_for_file: unused_element, unnecessary_cast


/// This type describes a volume provided by an Azure Files file share.
class VolumeProviderParametersAzureFileResponse {
  /// Access key of the Azure storage account for the File Share.
  final String? accountKey;
  /// Name of the Azure storage account for the File Share.
  final String accountName;
  /// Name of the Azure Files file share that provides storage for the volume.
  final String shareName;

  /// Creates a new [VolumeProviderParametersAzureFileResponse].
  /// [accountKey] Access key of the Azure storage account for the File Share.
  /// [accountName] Name of the Azure storage account for the File Share.
  /// [shareName] Name of the Azure Files file share that provides storage for the volume.
  VolumeProviderParametersAzureFileResponse({
    this.accountKey,
    required this.accountName,
    required this.shareName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'accountName': accountName,
      'shareName': shareName,
    };
  }

  factory VolumeProviderParametersAzureFileResponse.fromMap(Map<String, dynamic> map) {
    return VolumeProviderParametersAzureFileResponse(
      accountKey: map['accountKey'] == null ? null : map['accountKey'] as String,
      accountName: map['accountName'] as String,
      shareName: map['shareName'] as String,
    );
  }
}

