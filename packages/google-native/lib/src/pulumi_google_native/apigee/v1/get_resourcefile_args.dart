// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getResourcefile.
class GetResourcefileArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> name;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> type;

  GetResourcefileArgs({
    required this.environmentId,
    required this.name,
    required this.organizationId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['name'] = name;
    map['organizationId'] = organizationId;
    map['type'] = type;
    return map;
  }

  factory GetResourcefileArgs.fromMap(Map<String, dynamic> map) {
    return GetResourcefileArgs(
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      name: pulumi.Input.asInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
