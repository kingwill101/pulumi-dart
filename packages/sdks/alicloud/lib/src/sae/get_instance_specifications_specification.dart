// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceSpecificationsSpecification {
  /// CPU Size, Specifications for Micronucleus.
  final pulumi.Input<int> cpu;

  /// Whether the instance is available. The value description is as follows:
  final pulumi.Input<bool> enable;

  /// The ID of the Instance Specification.
  final pulumi.Input<String> id;

  /// The first ID of the resource.
  final pulumi.Input<String> instanceSpecificationId;

  /// The Memory specifications for the MB.
  final pulumi.Input<int> memory;

  /// The specification configuration name.
  final pulumi.Input<String> specInfo;

  /// The specification configuration version.
  final pulumi.Input<int> version;

  /// Creates a new [GetInstanceSpecificationsSpecification].
  /// [cpu] CPU Size, Specifications for Micronucleus.
  /// [enable] Whether the instance is available. The value description is as follows:
  /// [id] The ID of the Instance Specification.
  /// [instanceSpecificationId] The first ID of the resource.
  /// [memory] The Memory specifications for the MB.
  /// [specInfo] The specification configuration name.
  /// [version] The specification configuration version.
  GetInstanceSpecificationsSpecification({
    required this.cpu,
    required this.enable,
    required this.id,
    required this.instanceSpecificationId,
    required this.memory,
    required this.specInfo,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'enable': enable,
      'id': id,
      'instanceSpecificationId': instanceSpecificationId,
      'memory': memory,
      'specInfo': specInfo,
      'version': version,
    };
  }

  factory GetInstanceSpecificationsSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstanceSpecificationsSpecification(
      cpu: pulumi.Input.fromValue(map['cpu'] as int),
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceSpecificationId: pulumi.Input.fromValue(
        map['instanceSpecificationId'] as String,
      ),
      memory: pulumi.Input.fromValue(map['memory'] as int),
      specInfo: pulumi.Input.fromValue(map['specInfo'] as String),
      version: pulumi.Input.fromValue(map['version'] as int),
    );
  }
}
