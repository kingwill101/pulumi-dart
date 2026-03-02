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
      accountId: (map['accountId'] as String).input(),
      copyLogDetailsType: (map['copyLogDetailsType'] as String).input(),
      errorLogLink: (map['errorLogLink'] as String).input(),
      serialNumber: (map['serialNumber'] as String).input(),
      verboseLogLink: (map['verboseLogLink'] as String).input(),
    );
  }
}

