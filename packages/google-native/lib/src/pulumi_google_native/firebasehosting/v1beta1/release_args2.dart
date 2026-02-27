// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'release_type.dart';

/// The set of arguments for Release.
class ReleaseArgs2 {
  final Input<String> channelId;

  /// The deploy description when the release was created. The value can be up to 512 characters.
  final Input<String>? message;
  final Input<String>? project;
  final Input<String> siteId;

  /// Explains the reason for the release. Specify a value for this field only when creating a `SITE_DISABLE` type release.
  final Input<ReleaseType>? type;

  /// The unique identifier for a version, in the format: sites/SITE_ID/versions/ VERSION_ID The SITE_ID in this version identifier must match the SITE_ID in the `parent` parameter. This query parameter must be empty if the `type` field in the request body is `SITE_DISABLE`.
  final Input<String>? versionName;

  ReleaseArgs2({
    required this.channelId,
    this.message,
    this.project,
    required this.siteId,
    this.type,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channelId'] = channelId;
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['siteId'] = siteId;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<ReleaseType, String>(
          typeValue, (value) => value.value);
    }
    final versionNameValue = versionName;
    if (versionNameValue != null) {
      map['versionName'] = versionNameValue;
    }
    return map;
  }

  factory ReleaseArgs2.fromMap(Map<String, dynamic> map) {
    return ReleaseArgs2(
      channelId: Input.asInput<String>(map['channelId']),
      message: Input.asOptionalInput<String>(map['message']),
      project: Input.asOptionalInput<String>(map['project']),
      siteId: Input.asInput<String>(map['siteId']),
      type: Input.asOptionalInput<ReleaseType>(map['type']),
      versionName: Input.asOptionalInput<String>(map['versionName']),
    );
  }
}
