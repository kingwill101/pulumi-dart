// ignore_for_file: unused_element, unnecessary_cast


/// Copy log details for a storage account of a DataBox job
class DataBoxAccountCopyLogDetailsResponse {
  /// Account name.
  final String accountName;
  /// Indicates the type of job details.
  /// Expected value is 'DataBox'.
  final String copyLogDetailsType;
  /// Link for copy logs.
  final String copyLogLink;
  /// Link for copy verbose logs. This will be set only when LogCollectionLevel is set to Verbose.
  final String copyVerboseLogLink;

  /// Creates a new [DataBoxAccountCopyLogDetailsResponse].
  /// [accountName] Account name.
  /// [copyLogDetailsType] Indicates the type of job details.
  /// [copyLogLink] Link for copy logs.
  /// [copyVerboseLogLink] Link for copy verbose logs. This will be set only when LogCollectionLevel is set to Verbose.
  DataBoxAccountCopyLogDetailsResponse({
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

  factory DataBoxAccountCopyLogDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxAccountCopyLogDetailsResponse(
      accountName: map['accountName'] as String,
      copyLogDetailsType: map['copyLogDetailsType'] as String,
      copyLogLink: map['copyLogLink'] as String,
      copyVerboseLogLink: map['copyVerboseLogLink'] as String,
    );
  }
}

