// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_points_access_point_vpc_configuration.dart';

class GetAccessPointsAccessPoint {
  /// Access point ARN.
  final pulumi.Input<String> accessPointArn;
  /// Access point alias.
  final pulumi.Input<String> alias;
  /// Name of the bucket associated with the access points.
  final pulumi.Input<String> bucket;
  /// AWS account ID associated with the S3 bucket associated with the access point.
  final pulumi.Input<String> bucketAccountId;
  /// Unique identifier for the access points data source.
  final pulumi.Input<String> dataSourceId;
  /// Type of the data source that the access points are attached to. To return all access points set this argument to `ALL`.
  final pulumi.Input<String> dataSourceType;
  /// Name of the access point.
  final pulumi.Input<String> name;
  /// Indicates whether the access point allows access from the public Internet.
  final pulumi.Input<String> networkOrigin;
  /// VPC configuration for the access point. See `vpc_configuration` below.
  final pulumi.Input<List<GetAccessPointsAccessPointVpcConfiguration>> vpcConfigurations;

  /// Creates a new [GetAccessPointsAccessPoint].
  /// [accessPointArn] Access point ARN.
  /// [alias] Access point alias.
  /// [bucket] Name of the bucket associated with the access points.
  /// [bucketAccountId] AWS account ID associated with the S3 bucket associated with the access point.
  /// [dataSourceId] Unique identifier for the access points data source.
  /// [dataSourceType] Type of the data source that the access points are attached to. To return all access points set this argument to `ALL`.
  /// [name] Name of the access point.
  /// [networkOrigin] Indicates whether the access point allows access from the public Internet.
  /// [vpcConfigurations] VPC configuration for the access point. See `vpc_configuration` below.
  const GetAccessPointsAccessPoint({
    required this.accessPointArn,
    required this.alias,
    required this.bucket,
    required this.bucketAccountId,
    required this.dataSourceId,
    required this.dataSourceType,
    required this.name,
    required this.networkOrigin,
    required this.vpcConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointArn': accessPointArn,
      'alias': alias,
      'bucket': bucket,
      'bucketAccountId': bucketAccountId,
      'dataSourceId': dataSourceId,
      'dataSourceType': dataSourceType,
      'name': name,
      'networkOrigin': networkOrigin,
      'vpcConfigurations': pulumi.Input.mapInputValue<List<GetAccessPointsAccessPointVpcConfiguration>, List<Map<String, dynamic>>>(vpcConfigurations, (value) => pulumi.Input.encodeList<GetAccessPointsAccessPointVpcConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAccessPointsAccessPoint.fromMap(Map<String, dynamic> map) {
    return GetAccessPointsAccessPoint(
      accessPointArn: pulumi.Input.fromValue(map['accessPointArn'] as String),
      alias: pulumi.Input.fromValue(map['alias'] as String),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      bucketAccountId: pulumi.Input.fromValue(map['bucketAccountId'] as String),
      dataSourceId: pulumi.Input.fromValue(map['dataSourceId'] as String),
      dataSourceType: pulumi.Input.fromValue(map['dataSourceType'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkOrigin: pulumi.Input.fromValue(map['networkOrigin'] as String),
      vpcConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAccessPointsAccessPointVpcConfiguration>(map['vpcConfigurations']!, (value) => GetAccessPointsAccessPointVpcConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

