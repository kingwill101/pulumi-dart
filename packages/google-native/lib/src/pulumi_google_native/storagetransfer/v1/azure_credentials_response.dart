// ignore_for_file: unused_element, unnecessary_cast

/// Azure credentials For information on our data retention policy for user credentials, see [User credentials](/storage-transfer/docs/data-retention#user-credentials).
class AzureCredentialsResponse {
  /// Azure shared access signature (SAS). For more information about SAS, see [Grant limited access to Azure Storage resources using shared access signatures (SAS)](https://docs.microsoft.com/en-us/azure/storage/common/storage-sas-overview).
  final String sasToken;

  AzureCredentialsResponse({
    required this.sasToken,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sasToken'] = sasToken;
    return map;
  }

  factory AzureCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return AzureCredentialsResponse(
      sasToken: map['sasToken'] as String,
    );
  }
}
