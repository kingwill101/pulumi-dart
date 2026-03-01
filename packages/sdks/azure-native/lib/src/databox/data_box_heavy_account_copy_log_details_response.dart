// ignore_for_file: unused_element, unnecessary_cast


/// Copy log details for a storage account for Databox heavy
class DataBoxHeavyAccountCopyLogDetailsResponse {
  /// Account name.
  final String accountName;
  /// Indicates the type of job details.
  /// Expected value is 'DataBoxHeavy'.
  final String copyLogDetailsType;
  /// Link for copy logs.
  final List<String> copyLogLink;
  /// Link for copy verbose logs. This will be set only when the LogCollectionLevel is set to verbose.
  final List<String> copyVerboseLogLink;

  /// Creates a new [DataBoxHeavyAccountCopyLogDetailsResponse].
  /// [accountName] Account name.
  /// [copyLogDetailsType] Indicates the type of job details.
  /// [copyLogLink] Link for copy logs.
  /// [copyVerboseLogLink] Link for copy verbose logs. This will be set only when the LogCollectionLevel is set to verbose.
  DataBoxHeavyAccountCopyLogDetailsResponse({
    required this.accountName,
    required this.copyLogDetailsType,
    required this.copyLogLink,
    required this.copyVerboseLogLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'copyLogDetailsType': copyLogDetailsType,
      'copyLogLink': copyLogLink,
      'copyVerboseLogLink': copyVerboseLogLink,
    };
  }

  factory DataBoxHeavyAccountCopyLogDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxHeavyAccountCopyLogDetailsResponse(
      accountName: map['accountName'] as String,
      copyLogDetailsType: map['copyLogDetailsType'] as String,
      copyLogLink: (map['copyLogLink'] as List).cast<String>(),
      copyVerboseLogLink: (map['copyVerboseLogLink'] as List).cast<String>(),
    );
  }
}

