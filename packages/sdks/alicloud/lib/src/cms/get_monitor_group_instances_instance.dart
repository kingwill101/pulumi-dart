// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_monitor_group_instances_instance_instance.dart';

class GetMonitorGroupInstancesInstance {
  final List<GetMonitorGroupInstancesInstanceInstance> instances;

  /// Creates a new [GetMonitorGroupInstancesInstance].
  /// [instances] Required.
  GetMonitorGroupInstancesInstance({
    required this.instances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': pulumi.Input.encodeList<GetMonitorGroupInstancesInstanceInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
    };
  }

  factory GetMonitorGroupInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetMonitorGroupInstancesInstance(
      instances: pulumi.Input.decodeList<GetMonitorGroupInstancesInstanceInstance>(map['instances'], (value) => GetMonitorGroupInstancesInstanceInstance.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

