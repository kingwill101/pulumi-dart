// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getConfig.
class GetConfigArgs4 {
  final Input<String> configId;
  final Input<String> serviceName;
  final Input<String>? view;

  GetConfigArgs4({
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

  factory GetConfigArgs4.fromMap(Map<String, dynamic> map) {
    return GetConfigArgs4(
      configId: Input.asInput<String>(map['configId']),
      serviceName: Input.asInput<String>(map['serviceName']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
