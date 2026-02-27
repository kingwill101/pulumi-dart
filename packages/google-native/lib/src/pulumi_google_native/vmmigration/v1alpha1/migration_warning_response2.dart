// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'link_response3.dart';
import 'localized_message_response4.dart';

/// Represents migration resource warning information that can be used with google.rpc.Status message. MigrationWarning is used to present the user with warning information in migration operations.
class MigrationWarningResponse2 {
  /// Suggested action for solving the warning.
  final LocalizedMessageResponse4 actionItem;

  /// The warning code.
  final String code;

  /// URL(s) pointing to additional information on handling the current warning.
  final List<LinkResponse3> helpLinks;

  /// The localized warning message.
  final LocalizedMessageResponse4 warningMessage;

  /// The time the warning occurred.
  final String warningTime;

  MigrationWarningResponse2({
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
    map['helpLinks'] = Input.encodeList<LinkResponse3, Map<String, dynamic>>(
        helpLinks, (value) => value.toMap());
    map['warningMessage'] = warningMessage.toMap();
    map['warningTime'] = warningTime;
    return map;
  }

  factory MigrationWarningResponse2.fromMap(Map<String, dynamic> map) {
    return MigrationWarningResponse2(
      actionItem: LocalizedMessageResponse4.fromMap(
          (map['actionItem'] as Map).cast<String, dynamic>()),
      code: map['code'] as String,
      helpLinks: Input.decodeList<LinkResponse3>(
          map['helpLinks'],
          (value) =>
              LinkResponse3.fromMap((value as Map).cast<String, dynamic>())),
      warningMessage: LocalizedMessageResponse4.fromMap(
          (map['warningMessage'] as Map).cast<String, dynamic>()),
      warningTime: map['warningTime'] as String,
    );
  }
}
