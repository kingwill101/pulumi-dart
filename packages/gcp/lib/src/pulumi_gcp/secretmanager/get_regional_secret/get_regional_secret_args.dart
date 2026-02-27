// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionalSecret.
class GetRegionalSecretArgs {
  /// The location of the regional secret. eg us-central1
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  final pulumi.Input<String>? project;

  /// The name of the regional secret.
  final pulumi.Input<String> secretId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      secretId: pulumi.Input.asInput<String>(map['secretId']),
    );
  }
}
