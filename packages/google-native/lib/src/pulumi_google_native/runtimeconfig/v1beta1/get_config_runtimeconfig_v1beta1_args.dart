// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConfig.
class GetConfigRuntimeconfigV1beta1Args {
  final pulumi.Input<String> configId;
  final pulumi.Input<String>? project;

  GetConfigRuntimeconfigV1beta1Args({
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

  factory GetConfigRuntimeconfigV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetConfigRuntimeconfigV1beta1Args(
      configId: pulumi.Input.asInput<String>(map['configId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
