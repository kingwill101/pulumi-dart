// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_access_points_access_point_vpc_configuration/get_access_points_access_point_vpc_configuration.dart';

class GetAccessPointsAccessPoint {
  /// Access point ARN.
  final String accessPointArn;

  /// Access point alias.
  final String alias;

  /// Name of the bucket associated with the access points.
  final String bucket;

  /// AWS account ID associated with the S3 bucket associated with the access point.
  final String bucketAccountId;

  /// Unique identifier for the access points data source.
  final String dataSourceId;

  /// Type of the data source that the access points are attached to. To return all access points set this argument to `ALL`.
  final String dataSourceType;

  /// Name of the access point.
  final String name;

  /// Indicates whether the access point allows access from the public Internet.
  final String networkOrigin;

  /// VPC configuration for the access point. See <span pulumi-lang-nodejs="`vpcConfiguration`" pulumi-lang-dotnet="`VpcConfiguration`" pulumi-lang-go="`vpcConfiguration`" pulumi-lang-python="`vpc_configuration`" pulumi-lang-yaml="`vpcConfiguration`" pulumi-lang-java="`vpcConfiguration`">`vpc_configuration`</span> below.
  final List<GetAccessPointsAccessPointVpcConfiguration> vpcConfigurations;

  GetAccessPointsAccessPoint({
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
    final map = <String, dynamic>{};
    map['accessPointArn'] = accessPointArn;
    map['alias'] = alias;
    map['bucket'] = bucket;
    map['bucketAccountId'] = bucketAccountId;
    map['dataSourceId'] = dataSourceId;
    map['dataSourceType'] = dataSourceType;
    map['name'] = name;
    map['networkOrigin'] = networkOrigin;
    map['vpcConfigurations'] = Input.encodeList<
        GetAccessPointsAccessPointVpcConfiguration,
        Map<String, dynamic>>(vpcConfigurations, (value) => value.toMap());
    return map;
  }

  factory GetAccessPointsAccessPoint.fromMap(Map<String, dynamic> map) {
    return GetAccessPointsAccessPoint(
      accessPointArn: map['accessPointArn'] as String,
      alias: map['alias'] as String,
      bucket: map['bucket'] as String,
      bucketAccountId: map['bucketAccountId'] as String,
      dataSourceId: map['dataSourceId'] as String,
      dataSourceType: map['dataSourceType'] as String,
      name: map['name'] as String,
      networkOrigin: map['networkOrigin'] as String,
      vpcConfigurations:
          Input.decodeList<GetAccessPointsAccessPointVpcConfiguration>(
              map['vpcConfigurations'],
              (value) => GetAccessPointsAccessPointVpcConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
