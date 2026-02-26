// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTargetSslProxy.
class GetTargetSslProxyArgs3 {
  final Input<String>? project;
  final Input<String> targetSslProxy;

  GetTargetSslProxyArgs3({
    this.project,
    required this.targetSslProxy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['targetSslProxy'] = targetSslProxy;
    return map;
  }

  factory GetTargetSslProxyArgs3.fromMap(Map<String, dynamic> map) {
    return GetTargetSslProxyArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      targetSslProxy: Input.asInput<String>(map['targetSslProxy']),
    );
  }
}
