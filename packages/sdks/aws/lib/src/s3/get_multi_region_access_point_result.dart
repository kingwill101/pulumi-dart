// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_multi_region_access_point_public_access_block.dart';
import 'get_multi_region_access_point_region.dart';

/// Result data returned by getMultiRegionAccessPoint.
class GetMultiRegionAccessPointResult {
  final String? accountId;
  /// Alias for the Multi-Region Access Point.
  final String? alias;
  /// ARN of the Multi-Region Access Point.
  final String? arn;
  /// Timestamp when the resource has been created.
  final String? createdAt;
  /// DNS domain name of the S3 Multi-Region Access Point in the format _`alias`_.accesspoint.s3-global.amazonaws.com. For more information, see the documentation on [Multi-Region Access Point Requests](https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRequests.html).
  final String? domainName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// Public Access Block of the Multi-Region Access Point. Detailed below.
  final List<GetMultiRegionAccessPointPublicAccessBlock>? publicAccessBlocks;
  /// Name of the region.
  final String? region;
  /// Collection of the regions and buckets associated with the Multi-Region Access Point.
  final List<GetMultiRegionAccessPointRegion>? regions;
  /// Current status of the Multi-Region Access Point.
  final String? status;

  /// Creates a new [GetMultiRegionAccessPointResult].
  /// [accountId] Optional.
  /// [alias] Alias for the Multi-Region Access Point.
  /// [arn] ARN of the Multi-Region Access Point.
  /// [createdAt] Timestamp when the resource has been created.
  /// [domainName] DNS domain name of the S3 Multi-Region Access Point in the format _`alias`_.accesspoint.s3-global.amazonaws.com. For more information, see the documentation on [Multi-Region Access Point Requests](https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRequests.html).
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [publicAccessBlocks] Public Access Block of the Multi-Region Access Point. Detailed below.
  /// [region] Name of the region.
  /// [regions] Collection of the regions and buckets associated with the Multi-Region Access Point.
  /// [status] Current status of the Multi-Region Access Point.
  const GetMultiRegionAccessPointResult({
    this.accountId,
    this.alias,
    this.arn,
    this.createdAt,
    this.domainName,
    this.id,
    this.name,
    this.publicAccessBlocks,
    this.region,
    this.regions,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'alias': ?alias,
      'arn': ?arn,
      'createdAt': ?createdAt,
      'domainName': ?domainName,
      'id': ?id,
      'name': ?name,
      'publicAccessBlocks': ?(() { final guardedValue = publicAccessBlocks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMultiRegionAccessPointPublicAccessBlock, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'regions': ?(() { final guardedValue = regions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMultiRegionAccessPointRegion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
    };
  }

  factory GetMultiRegionAccessPointResult.fromMap(Map<String, dynamic> map) {
    return GetMultiRegionAccessPointResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicAccessBlocks: (() { final guardedValue = map['publicAccessBlocks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMultiRegionAccessPointPublicAccessBlock>(guardedValue, (value) => GetMultiRegionAccessPointPublicAccessBlock.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMultiRegionAccessPointRegion>(guardedValue, (value) => GetMultiRegionAccessPointRegion.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
