// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  /// The first ID of the resource
  final pulumi.Input<String> instanceId;

  /// Creates a new [GetInstancesInstance].
  /// [instanceId] The first ID of the resource
  const GetInstancesInstance({
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
    );
  }
}

