// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_multi_region_access_point_public_access_block.dart';
import 'get_multi_region_access_point_region.dart';

/// Result data returned by getMultiRegionAccessPoint.
class GetMultiRegionAccessPointResult {
  final String accountId;
  /// Alias for the Multi-Region Access Point.
  final String alias;
  /// Amazon Resource Name (ARN) of the Multi-Region Access Point.
  final String arn;
  /// Timestamp when the resource has been created.
  final String createdAt;
  /// DNS domain name of the S3 Multi-Region Access Point in the format _`alias`_.accesspoint.s3-global.amazonaws.com. For more information, see the documentation on [Multi-Region Access Point Requests](https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRequests.html).
  final String domainName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// Public Access Block of the Multi-Region Access Point. Detailed below.
  final List<GetMultiRegionAccessPointPublicAccessBlock> publicAccessBlocks;
  /// Name of the region.
  final String region;
  /// Collection of the regions and buckets associated with the Multi-Region Access Point.
  final List<GetMultiRegionAccessPointRegion> regions;
  /// Current status of the Multi-Region Access Point.
  final String status;

  /// Creates a new [GetMultiRegionAccessPointResult].
  /// [accountId] Required.
  /// [alias] Alias for the Multi-Region Access Point.
  /// [arn] Amazon Resource Name (ARN) of the Multi-Region Access Point.
  /// [createdAt] Timestamp when the resource has been created.
  /// [domainName] DNS domain name of the S3 Multi-Region Access Point in the format _`alias`_.accesspoint.s3-global.amazonaws.com. For more information, see the documentation on [Multi-Region Access Point Requests](https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRequests.html).
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [publicAccessBlocks] Public Access Block of the Multi-Region Access Point. Detailed below.
  /// [region] Name of the region.
  /// [regions] Collection of the regions and buckets associated with the Multi-Region Access Point.
  /// [status] Current status of the Multi-Region Access Point.
  const GetMultiRegionAccessPointResult({
    required this.accountId,
    required this.alias,
    required this.arn,
    required this.createdAt,
    required this.domainName,
    required this.id,
    required this.name,
    required this.publicAccessBlocks,
    required this.region,
    required this.regions,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'alias': alias,
      'arn': arn,
      'createdAt': createdAt,
      'domainName': domainName,
      'id': id,
      'name': name,
      'publicAccessBlocks': pulumi.Input.encodeList<GetMultiRegionAccessPointPublicAccessBlock, Map<String, dynamic>>(publicAccessBlocks, (value) => value.toMap()),
      'region': region,
      'regions': pulumi.Input.encodeList<GetMultiRegionAccessPointRegion, Map<String, dynamic>>(regions, (value) => value.toMap()),
      'status': status,
    };
  }

  factory GetMultiRegionAccessPointResult.fromMap(Map<String, dynamic> map) {
    return GetMultiRegionAccessPointResult(
      accountId: map['accountId'] as String,
      alias: map['alias'] as String,
      arn: map['arn'] as String,
      createdAt: map['createdAt'] as String,
      domainName: map['domainName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      publicAccessBlocks: pulumi.Input.decodeList<GetMultiRegionAccessPointPublicAccessBlock>(map['publicAccessBlocks']!, (value) => GetMultiRegionAccessPointPublicAccessBlock.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      regions: pulumi.Input.decodeList<GetMultiRegionAccessPointRegion>(map['regions']!, (value) => GetMultiRegionAccessPointRegion.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
    );
  }
}
