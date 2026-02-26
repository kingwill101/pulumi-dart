// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getUser.
class GetUserArgs5 {
  final Input<String>? host;
  final Input<String> instance;
  final Input<String> name;
  final Input<String>? project;

  GetUserArgs5({
    this.host,
    required this.instance,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = hostValue;
    }
    map['instance'] = instance;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetUserArgs5.fromMap(Map<String, dynamic> map) {
    return GetUserArgs5(
      host: Input.asOptionalInput<String>(map['host']),
      instance: Input.asInput<String>(map['instance']),
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
