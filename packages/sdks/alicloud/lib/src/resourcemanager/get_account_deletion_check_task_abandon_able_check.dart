// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountDeletionCheckTaskAbandonAbleCheck {
  /// The ID of the check item.
  final pulumi.Input<String> checkId;

  /// The name of the cloud service to which the check item belongs.
  final pulumi.Input<String> checkName;

  /// The description of the check item.
  final pulumi.Input<String> description;

  /// Creates a new [GetAccountDeletionCheckTaskAbandonAbleCheck].
  /// [checkId] The ID of the check item.
  /// [checkName] The name of the cloud service to which the check item belongs.
  /// [description] The description of the check item.
  GetAccountDeletionCheckTaskAbandonAbleCheck({
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

  factory GetAccountDeletionCheckTaskAbandonAbleCheck.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAccountDeletionCheckTaskAbandonAbleCheck(
      checkId: pulumi.Input.fromValue(map['checkId'] as String),
      checkName: pulumi.Input.fromValue(map['checkName'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
    );
  }
}
