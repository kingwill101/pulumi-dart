// ignore_for_file: unused_element, unnecessary_cast


/// Properties for Create or Update request for MaterializedViewsBuilderServiceResource
class MaterializedViewsBuilderServiceResourceCreateUpdateProperties {
  /// Instance count for the service.
  final int? instanceCount;
  /// Instance type for the service.
  final String? instanceSize;
  /// ServiceType for the service.
  /// Expected value is 'MaterializedViewsBuilder'.
  final String serviceType;

  /// Creates a new [MaterializedViewsBuilderServiceResourceCreateUpdateProperties].
  /// [instanceCount] Instance count for the service.
  /// [instanceSize] Instance type for the service.
  /// [serviceType] ServiceType for the service.
  MaterializedViewsBuilderServiceResourceCreateUpdateProperties({
    this.instanceCount,
    this.instanceSize,
    required this.serviceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
      'instanceSize': ?instanceSize,
      'serviceType': serviceType,
    };
  }

  factory MaterializedViewsBuilderServiceResourceCreateUpdateProperties.fromMap(Map<String, dynamic> map) {
    return MaterializedViewsBuilderServiceResourceCreateUpdateProperties(
      instanceCount: map['instanceCount'] == null ? null : map['instanceCount'] as int,
      instanceSize: map['instanceSize'] == null ? null : map['instanceSize'] as String,
      serviceType: map['serviceType'] as String,
    );
  }
}

