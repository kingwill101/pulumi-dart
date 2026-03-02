// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountDeletionCheckTaskNotAllowReason {
  /// The ID of the check item.
  final pulumi.Input<String> checkId;
  /// The name of the cloud service to which the check item belongs.
  final pulumi.Input<String> checkName;
  /// The description of the check item.
  final pulumi.Input<String> description;

  /// Creates a new [GetAccountDeletionCheckTaskNotAllowReason].
  /// [checkId] The ID of the check item.
  /// [checkName] The name of the cloud service to which the check item belongs.
  /// [description] The description of the check item.
  GetAccountDeletionCheckTaskNotAllowReason({
    required this.checkId,
    required this.checkName,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkId': checkId,
      'checkName': checkName,
      'description': description,
    };
  }

  factory GetAccountDeletionCheckTaskNotAllowReason.fromMap(Map<String, dynamic> map) {
    return GetAccountDeletionCheckTaskNotAllowReason(
      checkId: (map['checkId'] as String).input(),
      checkName: (map['checkName'] as String).input(),
      description: (map['description'] as String).input(),
    );
  }
}

