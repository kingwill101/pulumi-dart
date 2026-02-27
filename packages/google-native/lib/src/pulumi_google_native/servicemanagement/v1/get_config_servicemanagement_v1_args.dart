// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConfig.
class GetConfigServicemanagementV1Args {
  final pulumi.Input<String> configId;
  final pulumi.Input<String> serviceName;
  final pulumi.Input<String>? view;

  GetConfigServicemanagementV1Args({
    required this.configId,
    required this.serviceName,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configId'] = configId;
    map['serviceName'] = serviceName;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetConfigServicemanagementV1Args.fromMap(Map<String, dynamic> map) {
    return GetConfigServicemanagementV1Args(
      configId: pulumi.Input.asInput<String>(map['configId']),
      serviceName: pulumi.Input.asInput<String>(map['serviceName']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
