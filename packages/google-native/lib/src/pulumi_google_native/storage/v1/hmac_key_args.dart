// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for HmacKey.
class HmacKeyArgs {
  final Input<String>? project;

  /// Email address of the service account.
  final Input<String> serviceAccountEmail;

  /// The project to be billed for this request.
  final Input<String>? userProject;

  HmacKeyArgs({
    this.project,
    required this.serviceAccountEmail,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceAccountEmail'] = serviceAccountEmail;
    final userProjectValue = userProject;
    if (userProjectValue != null) {
      map['userProject'] = userProjectValue;
    }
    return map;
  }

  factory HmacKeyArgs.fromMap(Map<String, dynamic> map) {
    return HmacKeyArgs(
      project: Input.asOptionalInput<String>(map['project']),
      serviceAccountEmail: Input.asInput<String>(map['serviceAccountEmail']),
      userProject: Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
