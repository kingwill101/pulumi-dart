// ignore_for_file: unused_element, unnecessary_cast


/// Defines the discovered event data point properties.
class NamespaceDiscoveredEventDataPointResponse {
  /// Stringified JSON that contains connector-specific configuration for the data point. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  final String? dataPointConfiguration;
  /// The address of the source of the data in the asset (e.g. URL) so that a client can access the data source on the asset.
  final String dataSource;
  /// UTC timestamp indicating when the data point was added or modified.
  final String? lastUpdatedOn;
  /// The name of the data point.
  final String name;

  /// Creates a new [NamespaceDiscoveredEventDataPointResponse].
  /// [dataPointConfiguration] Stringified JSON that contains connector-specific configuration for the data point. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  /// [dataSource] The address of the source of the data in the asset (e.g. URL) so that a client can access the data source on the asset.
  /// [lastUpdatedOn] UTC timestamp indicating when the data point was added or modified.
  /// [name] The name of the data point.
  NamespaceDiscoveredEventDataPointResponse({
    this.dataPointConfiguration,
    required this.dataSource,
    this.lastUpdatedOn,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPointConfiguration': ?dataPointConfiguration,
      'dataSource': dataSource,
      'lastUpdatedOn': ?lastUpdatedOn,
      'name': name,
    };
  }

  factory NamespaceDiscoveredEventDataPointResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceDiscoveredEventDataPointResponse(
      dataPointConfiguration: map['dataPointConfiguration'] == null ? null : map['dataPointConfiguration'] as String,
      dataSource: map['dataSource'] as String,
      lastUpdatedOn: map['lastUpdatedOn'] == null ? null : map['lastUpdatedOn'] as String,
      name: map['name'] as String,
    );
  }
}

