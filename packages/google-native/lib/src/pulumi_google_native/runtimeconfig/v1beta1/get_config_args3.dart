// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getConfig.
class GetConfigArgs3 {
  final Input<String> configId;
  final Input<String>? project;

  GetConfigArgs3({
    required this.configId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configId'] = configId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConfigArgs3.fromMap(Map<String, dynamic> map) {
    return GetConfigArgs3(
      configId: Input.asInput<String>(map['configId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
