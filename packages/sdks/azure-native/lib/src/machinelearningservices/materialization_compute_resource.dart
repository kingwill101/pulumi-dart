// ignore_for_file: unused_element, unnecessary_cast


/// DTO object representing compute resource
class MaterializationComputeResource {
  /// Specifies the instance type
  final String? instanceType;

  /// Creates a new [MaterializationComputeResource].
  /// [instanceType] Specifies the instance type
  MaterializationComputeResource({
    this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': ?instanceType,
    };
  }

  factory MaterializationComputeResource.fromMap(Map<String, dynamic> map) {
    return MaterializationComputeResource(
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
    );
  }
}

