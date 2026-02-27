// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for HmacKey.
class HmacKeyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The email address of the key's associated service account.
  final pulumi.Input<String> serviceAccountEmail;

  /// The state of the key. Can be set to one of ACTIVE, INACTIVE.
  /// Default value is `ACTIVE`.
  /// Possible values are: `ACTIVE`, `INACTIVE`.
  final pulumi.Input<String>? state;

  HmacKeyArgs({
    this.project,
    required this.serviceAccountEmail,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceAccountEmail'] = serviceAccountEmail;
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory HmacKeyArgs.fromMap(Map<String, dynamic> map) {
    return HmacKeyArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceAccountEmail:
          pulumi.Input.asInput<String>(map['serviceAccountEmail']),
      state: pulumi.Input.asOptionalInput<String>(map['state']),
    );
  }
}
