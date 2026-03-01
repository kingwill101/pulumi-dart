// ignore_for_file: unused_element, unnecessary_cast


/// DTO object representing compute resource
class MaterializationComputeResourceResponse {
  /// Specifies the instance type
  final String? instanceType;

  /// Creates a new [MaterializationComputeResourceResponse].
  /// [instanceType] Specifies the instance type
  MaterializationComputeResourceResponse({
    this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': ?instanceType,
    };
  }

  factory MaterializationComputeResourceResponse.fromMap(Map<String, dynamic> map) {
    return MaterializationComputeResourceResponse(
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
    );
  }
}

