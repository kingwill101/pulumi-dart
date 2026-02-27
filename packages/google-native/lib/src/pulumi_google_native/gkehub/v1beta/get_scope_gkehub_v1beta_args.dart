// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getScope.
class GetScopeGkehubV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scopeId;

  GetScopeGkehubV1betaArgs({
    required this.location,
    this.project,
    required this.scopeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['scopeId'] = scopeId;
    return map;
  }

  factory GetScopeGkehubV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeGkehubV1betaArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      scopeId: pulumi.Input.asInput<String>(map['scopeId']),
    );
  }
}
