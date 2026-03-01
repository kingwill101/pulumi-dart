// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceSpecificationsSpecification {
  /// CPU Size, Specifications for Micronucleus.
  final int cpu;
  /// Whether the instance is available. The value description is as follows:
  final bool enable;
  /// The ID of the Instance Specification.
  final String id;
  /// The first ID of the resource.
  final String instanceSpecificationId;
  /// The Memory specifications for the MB.
  final int memory;
  /// The specification configuration name.
  final String specInfo;
  /// The specification configuration version.
  final int version;

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

  factory GetInstanceSpecificationsSpecification.fromMap(Map<String, dynamic> map) {
    return GetInstanceSpecificationsSpecification(
      cpu: map['cpu'] as int,
      enable: map['enable'] as bool,
      id: map['id'] as String,
      instanceSpecificationId: map['instanceSpecificationId'] as String,
      memory: map['memory'] as int,
      specInfo: map['specInfo'] as String,
      version: map['version'] as int,
    );
  }
}

