// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Copy log details for a storage account for Databox heavy
class DataBoxHeavyAccountCopyLogDetailsResponse {
  /// Account name.
  final pulumi.Input<String> accountName;

  /// Indicates the type of job details.
  /// Expected value is 'DataBoxHeavy'.
  final pulumi.Input<String> copyLogDetailsType;

  /// Link for copy logs.
  final pulumi.Input<List<String>> copyLogLink;

  /// Link for copy verbose logs. This will be set only when the LogCollectionLevel is set to verbose.
  final pulumi.Input<List<String>> copyVerboseLogLink;

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

  factory DataBoxHeavyAccountCopyLogDetailsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataBoxHeavyAccountCopyLogDetailsResponse(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      copyLogDetailsType: pulumi.Input.fromValue(
        map['copyLogDetailsType'] as String,
      ),
      copyLogLink: pulumi.Input.fromValue(
        (map['copyLogLink'] as List).cast<String>(),
      ),
      copyVerboseLogLink: pulumi.Input.fromValue(
        (map['copyVerboseLogLink'] as List).cast<String>(),
      ),
    );
  }
}
