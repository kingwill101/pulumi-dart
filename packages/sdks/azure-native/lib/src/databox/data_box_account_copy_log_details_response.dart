// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Copy log details for a storage account of a DataBox job
class DataBoxAccountCopyLogDetailsResponse {
  /// Account name.
  final pulumi.Input<String> accountName;
  /// Indicates the type of job details.
  /// Expected value is 'DataBox'.
  final pulumi.Input<String> copyLogDetailsType;
  /// Link for copy logs.
  final pulumi.Input<String> copyLogLink;
  /// Link for copy verbose logs. This will be set only when LogCollectionLevel is set to Verbose.
  final pulumi.Input<String> copyVerboseLogLink;

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
      accountName: (map['accountName'] as String).input(),
      copyLogDetailsType: (map['copyLogDetailsType'] as String).input(),
      copyLogLink: (map['copyLogLink'] as String).input(),
      copyVerboseLogLink: (map['copyVerboseLogLink'] as String).input(),
    );
  }
}

