// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getHmacKey.
class GetHmacKeyArgs {
  final Input<String> accessId;
  final Input<String>? project;
  final Input<String>? userProject;

  GetHmacKeyArgs({
    required this.accessId,
    this.project,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessId'] = accessId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final userProjectValue = userProject;
    if (userProjectValue != null) {
      map['userProject'] = userProjectValue;
    }
    return map;
  }

  factory GetHmacKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetHmacKeyArgs(
      accessId: Input.asInput<String>(map['accessId']),
      project: Input.asOptionalInput<String>(map['project']),
      userProject: Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
