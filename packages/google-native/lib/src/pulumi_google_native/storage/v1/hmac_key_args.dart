// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for HmacKey.
class HmacKeyArgs {
  final pulumi.Input<String>? project;

  /// Email address of the service account.
  final pulumi.Input<String> serviceAccountEmail;

  /// The project to be billed for this request.
  final pulumi.Input<String>? userProject;

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
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceAccountEmail:
          pulumi.Input.asInput<String>(map['serviceAccountEmail']),
      userProject: pulumi.Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
