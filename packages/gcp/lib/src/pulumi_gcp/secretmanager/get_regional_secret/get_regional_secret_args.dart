// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionalSecret.
class GetRegionalSecretArgs {
  /// The location of the regional secret. eg us-central1
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  final Input<String>? project;

  /// The name of the regional secret.
  final Input<String> secretId;

  GetRegionalSecretArgs({
    required this.location,
    this.project,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['secretId'] = secretId;
    return map;
  }

  factory GetRegionalSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      secretId: Input.asInput<String>(map['secretId']),
    );
  }
}
