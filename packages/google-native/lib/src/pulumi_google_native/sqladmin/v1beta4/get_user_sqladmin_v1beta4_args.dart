// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getUser.
class GetUserSqladminV1beta4Args {
  final pulumi.Input<String>? host;
  final pulumi.Input<String> instance;
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;

  GetUserSqladminV1beta4Args({
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

  factory GetUserSqladminV1beta4Args.fromMap(Map<String, dynamic> map) {
    return GetUserSqladminV1beta4Args(
      host: pulumi.Input.asOptionalInput<String>(map['host']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
