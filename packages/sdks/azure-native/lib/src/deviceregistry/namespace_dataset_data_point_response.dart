// ignore_for_file: unused_element, unnecessary_cast


/// Defines the dataset data point properties.
class NamespaceDatasetDataPointResponse {
  /// Stringified JSON that contains connector-specific configuration for the data point. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  final String? dataPointConfiguration;
  /// The address of the source of the data in the asset (e.g. URL) so that a client can access the data source on the asset.
  final String dataSource;
  /// The name of the data point.
  final String name;
  /// URI or type definition ID.
  final String? typeRef;

  /// Creates a new [NamespaceDatasetDataPointResponse].
  /// [dataPointConfiguration] Stringified JSON that contains connector-specific configuration for the data point. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  /// [dataSource] The address of the source of the data in the asset (e.g. URL) so that a client can access the data source on the asset.
  /// [name] The name of the data point.
  /// [typeRef] URI or type definition ID.
  NamespaceDatasetDataPointResponse({
    this.dataPointConfiguration,
    required this.dataSource,
    required this.name,
    this.typeRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPointConfiguration': ?dataPointConfiguration,
      'dataSource': dataSource,
      'name': name,
      'typeRef': ?typeRef,
    };
  }

  factory NamespaceDatasetDataPointResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceDatasetDataPointResponse(
      dataPointConfiguration: map['dataPointConfiguration'] == null ? null : map['dataPointConfiguration'] as String,
      dataSource: map['dataSource'] as String,
      name: map['name'] as String,
      typeRef: map['typeRef'] == null ? null : map['typeRef'] as String,
    );
  }
}

