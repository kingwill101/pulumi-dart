// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getConfig.
class GetConfigArgs {
  final Input<String> apiId;
  final Input<String> configId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? view;

  GetConfigArgs({
    required this.apiId,
    required this.configId,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['configId'] = configId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigArgs(
      apiId: Input.asInput<String>(map['apiId']),
      configId: Input.asInput<String>(map['configId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
