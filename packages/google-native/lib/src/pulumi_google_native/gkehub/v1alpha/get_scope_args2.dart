// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getScope.
class GetScopeArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> scopeId;

  GetScopeArgs2({
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

  factory GetScopeArgs2.fromMap(Map<String, dynamic> map) {
    return GetScopeArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      scopeId: Input.asInput<String>(map['scopeId']),
    );
  }
}
