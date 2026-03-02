// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the data point properties.
class DiscoveredDataPointResponse {
  /// Stringified JSON that contains connector-specific configuration for the data point. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  final pulumi.Input<String>? dataPointConfiguration;
  /// The address of the source of the data in the asset (e.g. URL) so that a client can access the data source on the asset.
  final pulumi.Input<String> dataSource;
  /// UTC timestamp indicating when the data point was added or modified.
  final pulumi.Input<String>? lastUpdatedOn;
  /// The name of the data point.
  final pulumi.Input<String> name;

  /// Creates a new [DiscoveredDataPointResponse].
  /// [dataPointConfiguration] Stringified JSON that contains connector-specific configuration for the data point. For OPC UA, this could include configuration like, publishingInterval, samplingInterval, and queueSize.
  /// [dataSource] The address of the source of the data in the asset (e.g. URL) so that a client can access the data source on the asset.
  /// [lastUpdatedOn] UTC timestamp indicating when the data point was added or modified.
  /// [name] The name of the data point.
  DiscoveredDataPointResponse({
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

  factory DiscoveredDataPointResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveredDataPointResponse(
      dataPointConfiguration: map['dataPointConfiguration'] == null ? null : (map['dataPointConfiguration']! as String).input(),
      dataSource: (map['dataSource'] as String).input(),
      lastUpdatedOn: map['lastUpdatedOn'] == null ? null : (map['lastUpdatedOn']! as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

