// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getHmacKey.
class GetHmacKeyArgs {
  final pulumi.Input<String> accessId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? userProject;

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
      accessId: pulumi.Input.asInput<String>(map['accessId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      userProject: pulumi.Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
