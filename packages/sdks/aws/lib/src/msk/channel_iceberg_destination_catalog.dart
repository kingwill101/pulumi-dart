// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelIcebergDestinationCatalog {
  /// ARN of the federated AWS Glue Data Catalog that projects the S3 Tables bucket.
  final pulumi.Input<String?>? catalogArn;
  /// ARN of the S3 Tables bucket that backs the Apache Iceberg warehouse.
  final pulumi.Input<String?>? warehouseLocation;

  /// Creates a new [ChannelIcebergDestinationCatalog].
  /// [catalogArn] ARN of the federated AWS Glue Data Catalog that projects the S3 Tables bucket.
  /// [warehouseLocation] ARN of the S3 Tables bucket that backs the Apache Iceberg warehouse.
  const ChannelIcebergDestinationCatalog({
    this.catalogArn,
    this.warehouseLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogArn': ?catalogArn,
      'warehouseLocation': ?warehouseLocation,
    };
  }

  factory ChannelIcebergDestinationCatalog.fromMap(Map<String, dynamic> map) {
    return ChannelIcebergDestinationCatalog(
      catalogArn: (() { final guardedValue = map['catalogArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warehouseLocation: (() { final guardedValue = map['warehouseLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
