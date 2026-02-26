// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'link_response2.dart';
import 'localized_message_response3.dart';

/// Represents migration resource warning information that can be used with google.rpc.Status message. MigrationWarning is used to present the user with warning information in migration operations.
class MigrationWarningResponse {
  /// Suggested action for solving the warning.
  final LocalizedMessageResponse3 actionItem;

  /// The warning code.
  final String code;

  /// URL(s) pointing to additional information on handling the current warning.
  final List<LinkResponse2> helpLinks;

  /// The localized warning message.
  final LocalizedMessageResponse3 warningMessage;

  /// The time the warning occurred.
  final String warningTime;

  MigrationWarningResponse({
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
    map['helpLinks'] = Input.encodeList<LinkResponse2, Map<String, dynamic>>(
        helpLinks, (value) => value.toMap());
    map['warningMessage'] = warningMessage.toMap();
    map['warningTime'] = warningTime;
    return map;
  }

  factory MigrationWarningResponse.fromMap(Map<String, dynamic> map) {
    return MigrationWarningResponse(
      actionItem: LocalizedMessageResponse3.fromMap(
          (map['actionItem'] as Map).cast<String, dynamic>()),
      code: map['code'] as String,
      helpLinks: Input.decodeList<LinkResponse2>(
          map['helpLinks'],
          (value) =>
              LinkResponse2.fromMap((value as Map).cast<String, dynamic>())),
      warningMessage: LocalizedMessageResponse3.fromMap(
          (map['warningMessage'] as Map).cast<String, dynamic>()),
      warningTime: map['warningTime'] as String,
    );
  }
}
