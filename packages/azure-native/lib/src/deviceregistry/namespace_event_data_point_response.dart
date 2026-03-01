// ignore_for_file: unused_element, unnecessary_cast


/// Defines the event data point properties.
class NamespaceEventDataPointResponse {
  /// Stringified JSON that contains connector-specific configuration for the data point. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  final String? dataPointConfiguration;
  /// The address of the source of the data in the asset (e.g. URL) so that a client can access the data source on the asset.
  final String dataSource;
  /// The name of the data point.
  final String name;

  /// Creates a new [NamespaceEventDataPointResponse].
  /// [dataPointConfiguration] Stringified JSON that contains connector-specific configuration for the data point. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  /// [dataSource] The address of the source of the data in the asset (e.g. URL) so that a client can access the data source on the asset.
  /// [name] The name of the data point.
  NamespaceEventDataPointResponse({
    this.dataPointConfiguration,
    required this.dataSource,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPointConfiguration': ?dataPointConfiguration,
      'dataSource': dataSource,
      'name': name,
    };
  }

  factory NamespaceEventDataPointResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceEventDataPointResponse(
      dataPointConfiguration: map['dataPointConfiguration'] == null ? null : map['dataPointConfiguration'] as String,
      dataSource: map['dataSource'] as String,
      name: map['name'] as String,
    );
  }
}

