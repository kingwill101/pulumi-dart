// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_response_vmmigration_v1alpha1.dart';
import 'localized_message_response_vmmigration_v1alpha1.dart';

/// Represents migration resource warning information that can be used with google.rpc.Status message. MigrationWarning is used to present the user with warning information in migration operations.
class MigrationWarningResponseVmmigrationV1alpha1 {
  /// Suggested action for solving the warning.
  final LocalizedMessageResponseVmmigrationV1alpha1 actionItem;

  /// The warning code.
  final String code;

  /// URL(s) pointing to additional information on handling the current warning.
  final List<LinkResponseVmmigrationV1alpha1> helpLinks;

  /// The localized warning message.
  final LocalizedMessageResponseVmmigrationV1alpha1 warningMessage;

  /// The time the warning occurred.
  final String warningTime;

  MigrationWarningResponseVmmigrationV1alpha1({
    required this.actionItem,
    required this.code,
    required this.helpLinks,
    required this.warningMessage,
    required this.warningTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionItem'] = actionItem.toMap();
    map['code'] = code;
    map['helpLinks'] = pulumi.Input.encodeList<LinkResponseVmmigrationV1alpha1,
        Map<String, dynamic>>(helpLinks, (value) => value.toMap());
    map['warningMessage'] = warningMessage.toMap();
    map['warningTime'] = warningTime;
    return map;
  }

  factory MigrationWarningResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return MigrationWarningResponseVmmigrationV1alpha1(
      actionItem: LocalizedMessageResponseVmmigrationV1alpha1.fromMap(
          (map['actionItem'] as Map).cast<String, dynamic>()),
      code: map['code'] as String,
      helpLinks: pulumi.Input.decodeList<LinkResponseVmmigrationV1alpha1>(
          map['helpLinks'],
          (value) => LinkResponseVmmigrationV1alpha1.fromMap(
              (value as Map).cast<String, dynamic>())),
      warningMessage: LocalizedMessageResponseVmmigrationV1alpha1.fromMap(
          (map['warningMessage'] as Map).cast<String, dynamic>()),
      warningTime: map['warningTime'] as String,
    );
  }
}
