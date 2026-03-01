// ignore_for_file: unused_element, unnecessary_cast


/// Copy Log Details for a disk
class DataBoxDiskCopyLogDetailsResponse {
  /// Indicates the type of job details.
  /// Expected value is 'DataBoxDisk'.
  final String copyLogDetailsType;
  /// Disk Serial Number.
  final String diskSerialNumber;
  /// Link for copy error logs.
  final String errorLogLink;
  /// Link for copy verbose logs.
  final String verboseLogLink;

  /// Creates a new [DataBoxDiskCopyLogDetailsResponse].
  /// [copyLogDetailsType] Indicates the type of job details.
  /// [diskSerialNumber] Disk Serial Number.
  /// [errorLogLink] Link for copy error logs.
  /// [verboseLogLink] Link for copy verbose logs.
  DataBoxDiskCopyLogDetailsResponse({
    required this.copyLogDetailsType,
    required this.diskSerialNumber,
    required this.errorLogLink,
    required this.verboseLogLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyLogDetailsType': copyLogDetailsType,
      'diskSerialNumber': diskSerialNumber,
      'errorLogLink': errorLogLink,
      'verboseLogLink': verboseLogLink,
    };
  }

  factory DataBoxDiskCopyLogDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxDiskCopyLogDetailsResponse(
      copyLogDetailsType: map['copyLogDetailsType'] as String,
      diskSerialNumber: map['diskSerialNumber'] as String,
      errorLogLink: map['errorLogLink'] as String,
      verboseLogLink: map['verboseLogLink'] as String,
    );
  }
}

