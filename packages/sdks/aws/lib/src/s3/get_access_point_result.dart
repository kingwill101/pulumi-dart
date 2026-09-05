// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_point_public_access_block_configuration.dart';
import 'get_access_point_vpc_configuration.dart';

/// Result data returned by getAccessPoint.
class GetAccessPointResult {
  final String? accountId;
  /// Access point alias.
  final String? alias;
  /// Access point ARN.
  final String? arn;
  /// Name of the bucket associated with the access point.
  final String? bucket;
  /// AWS account ID associated with the S3 bucket associated with the access point.
  final String? bucketAccountId;
  /// Unique identifier for the data source of the access point.
  final String? dataSourceId;
  /// Type of the data source that the access point is attached to.
  final String? dataSourceType;
  /// VPC endpoint for the access point.
  final Map<String, String>? endpoints;
  final String? name;
  /// Whether the access point allows access from the public Internet.
  final String? networkOrigin;
  /// `PublicAccessBlock` configuration for the access point.
  final List<GetAccessPointPublicAccessBlockConfiguration>? publicAccessBlockConfigurations;
  final String? region;
  /// Tags assigned to the access point.
  final Map<String, String>? tags;
  /// VPC configuration for the access point.
  final List<GetAccessPointVpcConfiguration>? vpcConfigurations;

  /// Creates a new [GetAccessPointResult].
  /// [accountId] Optional.
  /// [alias] Access point alias.
  /// [arn] Access point ARN.
  /// [bucket] Name of the bucket associated with the access point.
  /// [bucketAccountId] AWS account ID associated with the S3 bucket associated with the access point.
  /// [dataSourceId] Unique identifier for the data source of the access point.
  /// [dataSourceType] Type of the data source that the access point is attached to.
  /// [endpoints] VPC endpoint for the access point.
  /// [name] Optional.
  /// [networkOrigin] Whether the access point allows access from the public Internet.
  /// [publicAccessBlockConfigurations] `PublicAccessBlock` configuration for the access point.
  /// [region] Optional.
  /// [tags] Tags assigned to the access point.
  /// [vpcConfigurations] VPC configuration for the access point.
  const GetAccessPointResult({
    this.accountId,
    this.alias,
    this.arn,
    this.bucket,
    this.bucketAccountId,
    this.dataSourceId,
    this.dataSourceType,
    this.endpoints,
    this.name,
    this.networkOrigin,
    this.publicAccessBlockConfigurations,
    this.region,
    this.tags,
    this.vpcConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'alias': ?alias,
      'arn': ?arn,
      'bucket': ?bucket,
      'bucketAccountId': ?bucketAccountId,
      'dataSourceId': ?dataSourceId,
      'dataSourceType': ?dataSourceType,
      'endpoints': ?endpoints,
      'name': ?name,
      'networkOrigin': ?networkOrigin,
      'publicAccessBlockConfigurations': ?(() { final guardedValue = publicAccessBlockConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccessPointPublicAccessBlockConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'tags': ?tags,
      'vpcConfigurations': ?(() { final guardedValue = vpcConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccessPointVpcConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAccessPointResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPointResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucketAccountId: (() { final guardedValue = map['bucketAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSourceId: (() { final guardedValue = map['dataSourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSourceType: (() { final guardedValue = map['dataSourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkOrigin: (() { final guardedValue = map['networkOrigin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicAccessBlockConfigurations: (() { final guardedValue = map['publicAccessBlockConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccessPointPublicAccessBlockConfiguration>(guardedValue, (value) => GetAccessPointPublicAccessBlockConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcConfigurations: (() { final guardedValue = map['vpcConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccessPointVpcConfiguration>(guardedValue, (value) => GetAccessPointVpcConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
