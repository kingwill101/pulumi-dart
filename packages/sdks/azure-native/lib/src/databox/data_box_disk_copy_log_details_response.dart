// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Copy Log Details for a disk
class DataBoxDiskCopyLogDetailsResponse {
  /// Indicates the type of job details.
  /// Expected value is 'DataBoxDisk'.
  final pulumi.Input<String> copyLogDetailsType;
  /// Disk Serial Number.
  final pulumi.Input<String> diskSerialNumber;
  /// Link for copy error logs.
  final pulumi.Input<String> errorLogLink;
  /// Link for copy verbose logs.
  final pulumi.Input<String> verboseLogLink;

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
      copyLogDetailsType: pulumi.Input.fromValue(map['copyLogDetailsType'] as String),
      diskSerialNumber: pulumi.Input.fromValue(map['diskSerialNumber'] as String),
      errorLogLink: pulumi.Input.fromValue(map['errorLogLink'] as String),
      verboseLogLink: pulumi.Input.fromValue(map['verboseLogLink'] as String),
    );
  }
}

