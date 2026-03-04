// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_monitor_group_instances_instance_instance.dart';

class GetMonitorGroupInstancesInstance {
  final pulumi.Input<List<GetMonitorGroupInstancesInstanceInstance>> instances;

  /// Creates a new [GetMonitorGroupInstancesInstance].
  /// [instances] Required.
  GetMonitorGroupInstancesInstance({required this.instances});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances':
          pulumi.Input.mapInputValue<
            List<GetMonitorGroupInstancesInstanceInstance>,
            List<Map<String, dynamic>>
          >(
            instances,
            (value) =>
                pulumi.Input.encodeList<
                  GetMonitorGroupInstancesInstanceInstance,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetMonitorGroupInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetMonitorGroupInstancesInstance(
      instances: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetMonitorGroupInstancesInstanceInstance>(
          map['instances']!,
          (value) => GetMonitorGroupInstancesInstanceInstance.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
