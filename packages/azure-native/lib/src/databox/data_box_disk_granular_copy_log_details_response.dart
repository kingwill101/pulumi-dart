// ignore_for_file: unused_element, unnecessary_cast


/// Granular Copy Log Details for customer disk
class DataBoxDiskGranularCopyLogDetailsResponse {
  /// Account id.
  final String accountId;
  /// Indicates the type of job details.
  /// Expected value is 'DataBoxCustomerDisk'.
  final String copyLogDetailsType;
  /// Link for copy error logs.
  final String errorLogLink;
  /// Disk Serial Number.
  final String serialNumber;
  /// Link for copy verbose logs.
  final String verboseLogLink;

  /// Creates a new [DataBoxDiskGranularCopyLogDetailsResponse].
  /// [accountId] Account id.
  /// [copyLogDetailsType] Indicates the type of job details.
  /// [errorLogLink] Link for copy error logs.
  /// [serialNumber] Disk Serial Number.
  /// [verboseLogLink] Link for copy verbose logs.
  DataBoxDiskGranularCopyLogDetailsResponse({
    required this.accountId,
    required this.copyLogDetailsType,
    required this.errorLogLink,
    required this.serialNumber,
    required this.verboseLogLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'copyLogDetailsType': copyLogDetailsType,
      'errorLogLink': errorLogLink,
      'serialNumber': serialNumber,
      'verboseLogLink': verboseLogLink,
    };
  }

  factory DataBoxDiskGranularCopyLogDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxDiskGranularCopyLogDetailsResponse(
      accountId: map['accountId'] as String,
      copyLogDetailsType: map['copyLogDetailsType'] as String,
      errorLogLink: map['errorLogLink'] as String,
      serialNumber: map['serialNumber'] as String,
      verboseLogLink: map['verboseLogLink'] as String,
    );
  }
}

