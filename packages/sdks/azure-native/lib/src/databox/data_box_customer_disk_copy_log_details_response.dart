// ignore_for_file: unused_element, unnecessary_cast


/// Copy Log Details for customer disk
class DataBoxCustomerDiskCopyLogDetailsResponse {
  /// Indicates the type of job details.
  /// Expected value is 'DataBoxCustomerDisk'.
  final String copyLogDetailsType;
  /// Link for copy error logs.
  final String errorLogLink;
  /// Disk Serial Number.
  final String serialNumber;
  /// Link for copy verbose logs.
  final String verboseLogLink;

  /// Creates a new [DataBoxCustomerDiskCopyLogDetailsResponse].
  /// [copyLogDetailsType] Indicates the type of job details.
  /// [errorLogLink] Link for copy error logs.
  /// [serialNumber] Disk Serial Number.
  /// [verboseLogLink] Link for copy verbose logs.
  DataBoxCustomerDiskCopyLogDetailsResponse({
    required this.copyLogDetailsType,
    required this.errorLogLink,
    required this.serialNumber,
    required this.verboseLogLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyLogDetailsType': copyLogDetailsType,
      'errorLogLink': errorLogLink,
      'serialNumber': serialNumber,
      'verboseLogLink': verboseLogLink,
    };
  }

  factory DataBoxCustomerDiskCopyLogDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxCustomerDiskCopyLogDetailsResponse(
      copyLogDetailsType: map['copyLogDetailsType'] as String,
      errorLogLink: map['errorLogLink'] as String,
      serialNumber: map['serialNumber'] as String,
      verboseLogLink: map['verboseLogLink'] as String,
    );
  }
}

