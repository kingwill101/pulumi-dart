// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getResourcefile.
class GetResourcefileArgs {
  final Input<String> environmentId;
  final Input<String> name;
  final Input<String> organizationId;
  final Input<String> type;

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
      environmentId: Input.asInput<String>(map['environmentId']),
      name: Input.asInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
