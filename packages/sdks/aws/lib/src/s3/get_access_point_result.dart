// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_point_public_access_block_configuration.dart';
import 'get_access_point_vpc_configuration.dart';

/// Result data returned by getAccessPoint.
class GetAccessPointResult {
  final String accountId;
  /// Access point alias.
  final String alias;
  /// Access point ARN.
  final String arn;
  /// Name of the bucket associated with the access point.
  final String bucket;
  /// AWS account ID associated with the S3 bucket associated with the access point.
  final String bucketAccountId;
  /// Unique identifier for the data source of the access point.
  final String dataSourceId;
  /// Type of the data source that the access point is attached to.
  final String dataSourceType;
  /// VPC endpoint for the access point.
  final Map<String, String> endpoints;
  final String name;
  /// Whether the access point allows access from the public Internet.
  final String networkOrigin;
  /// `PublicAccessBlock` configuration for the access point.
  final List<GetAccessPointPublicAccessBlockConfiguration> publicAccessBlockConfigurations;
  final String region;
  /// Tags assigned to the access point.
  final Map<String, String> tags;
  /// VPC configuration for the access point.
  final List<GetAccessPointVpcConfiguration> vpcConfigurations;

  /// Creates a new [GetAccessPointResult].
  /// [accountId] Required.
  /// [alias] Access point alias.
  /// [arn] Access point ARN.
  /// [bucket] Name of the bucket associated with the access point.
  /// [bucketAccountId] AWS account ID associated with the S3 bucket associated with the access point.
  /// [dataSourceId] Unique identifier for the data source of the access point.
  /// [dataSourceType] Type of the data source that the access point is attached to.
  /// [endpoints] VPC endpoint for the access point.
  /// [name] Required.
  /// [networkOrigin] Whether the access point allows access from the public Internet.
  /// [publicAccessBlockConfigurations] `PublicAccessBlock` configuration for the access point.
  /// [region] Required.
  /// [tags] Tags assigned to the access point.
  /// [vpcConfigurations] VPC configuration for the access point.
  const GetAccessPointResult({
    required this.accountId,
    required this.alias,
    required this.arn,
    required this.bucket,
    required this.bucketAccountId,
    required this.dataSourceId,
    required this.dataSourceType,
    required this.endpoints,
    required this.name,
    required this.networkOrigin,
    required this.publicAccessBlockConfigurations,
    required this.region,
    required this.tags,
    required this.vpcConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'alias': alias,
      'arn': arn,
      'bucket': bucket,
      'bucketAccountId': bucketAccountId,
      'dataSourceId': dataSourceId,
      'dataSourceType': dataSourceType,
      'endpoints': endpoints,
      'name': name,
      'networkOrigin': networkOrigin,
      'publicAccessBlockConfigurations': pulumi.Input.encodeList<GetAccessPointPublicAccessBlockConfiguration, Map<String, dynamic>>(publicAccessBlockConfigurations, (value) => value.toMap()),
      'region': region,
      'tags': tags,
      'vpcConfigurations': pulumi.Input.encodeList<GetAccessPointVpcConfiguration, Map<String, dynamic>>(vpcConfigurations, (value) => value.toMap()),
    };
  }

  factory GetAccessPointResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPointResult(
      accountId: map['accountId'] as String,
      alias: map['alias'] as String,
      arn: map['arn'] as String,
      bucket: map['bucket'] as String,
      bucketAccountId: map['bucketAccountId'] as String,
      dataSourceId: map['dataSourceId'] as String,
      dataSourceType: map['dataSourceType'] as String,
      endpoints: (map['endpoints'] as Map).cast<String, String>(),
      name: map['name'] as String,
      networkOrigin: map['networkOrigin'] as String,
      publicAccessBlockConfigurations: pulumi.Input.decodeList<GetAccessPointPublicAccessBlockConfiguration>(map['publicAccessBlockConfigurations']!, (value) => GetAccessPointPublicAccessBlockConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcConfigurations: pulumi.Input.decodeList<GetAccessPointVpcConfiguration>(map['vpcConfigurations']!, (value) => GetAccessPointVpcConfiguration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
