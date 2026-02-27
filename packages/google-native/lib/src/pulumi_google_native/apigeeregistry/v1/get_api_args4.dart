// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getApi.
class GetApiArgs4 {
  final Input<String> apiId;
  final Input<String> location;
  final Input<String>? project;

  GetApiArgs4({
    required this.apiId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetApiArgs4.fromMap(Map<String, dynamic> map) {
    return GetApiArgs4(
      apiId: Input.asInput<String>(map['apiId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
