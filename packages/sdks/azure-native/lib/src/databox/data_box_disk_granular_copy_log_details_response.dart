// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Granular Copy Log Details for customer disk
class DataBoxDiskGranularCopyLogDetailsResponse {
  /// Account id.
  final pulumi.Input<String> accountId;
  /// Indicates the type of job details.
  /// Expected value is 'DataBoxCustomerDisk'.
  final pulumi.Input<String> copyLogDetailsType;
  /// Link for copy error logs.
  final pulumi.Input<String> errorLogLink;
  /// Disk Serial Number.
  final pulumi.Input<String> serialNumber;
  /// Link for copy verbose logs.
  final pulumi.Input<String> verboseLogLink;

  /// Creates a new [DataBoxDiskGranularCopyLogDetailsResponse].
  /// [accountId] Account id.
  /// [copyLogDetailsType] Indicates the type of job details.
  /// [errorLogLink] Link for copy error logs.
  /// [serialNumber] Disk Serial Number.
  /// [verboseLogLink] Link for copy verbose logs.
  const DataBoxDiskGranularCopyLogDetailsResponse({
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
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      copyLogDetailsType: pulumi.Input.fromValue(map['copyLogDetailsType'] as String),
      errorLogLink: pulumi.Input.fromValue(map['errorLogLink'] as String),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      verboseLogLink: pulumi.Input.fromValue(map['verboseLogLink'] as String),
    );
  }
}
