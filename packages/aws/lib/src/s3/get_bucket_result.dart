// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getBucket.
class GetBucketResult {
  /// ARN of the bucket. Will be of format `arn:aws:s3:::bucketname`.
  final String arn;
  final String bucket;

  /// Bucket domain name. Will be of format `bucketname.s3.amazonaws.com`.
  final String bucketDomainName;

  /// AWS region this bucket resides in.
  final String bucketRegion;

  /// The bucket region-specific domain name. The bucket domain name including the region name. Please refer to the [S3 endpoints reference](https://docs.aws.amazon.com/general/latest/gr/s3.html#s3_region) for format. Note: AWS CloudFront allows specifying an S3 region-specific endpoint when creating an S3 origin. This will prevent redirect issues from CloudFront to the S3 Origin URL. For more information, see the [Virtual Hosted-Style Requests for Other Regions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/VirtualHosting.html#deprecated-global-endpoint) section in the AWS S3 User Guide.
  final String bucketRegionalDomainName;

  /// The [Route 53 Hosted Zone ID](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_website_region_endpoints) for this bucket's region.
  final String hostedZoneId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records.
  final String websiteDomain;

  /// Website endpoint, if the bucket is configured with a website. If not, this will be an empty string.
  final String websiteEndpoint;

  /// Creates a new [GetBucketResult].
  /// [arn] ARN of the bucket. Will be of format `arn:aws:s3:::bucketname`.
  /// [bucket] Required.
  /// [bucketDomainName] Bucket domain name. Will be of format `bucketname.s3.amazonaws.com`.
  /// [bucketRegion] AWS region this bucket resides in.
  /// [bucketRegionalDomainName] The bucket region-specific domain name. The bucket domain name including the region name. Please refer to the [S3 endpoints reference](https://docs.aws.amazon.com/general/latest/gr/s3.html#s3_region) for format. Note: AWS CloudFront allows specifying an S3 region-specific endpoint when creating an S3 origin. This will prevent redirect issues from CloudFront to the S3 Origin URL. For more information, see the [Virtual Hosted-Style Requests for Other Regions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/VirtualHosting.html#deprecated-global-endpoint) section in the AWS S3 User Guide.
  /// [hostedZoneId] The [Route 53 Hosted Zone ID](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_website_region_endpoints) for this bucket's region.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [websiteDomain] Domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records.
  /// [websiteEndpoint] Website endpoint, if the bucket is configured with a website. If not, this will be an empty string.
  GetBucketResult({
    required this.arn,
    required this.bucket,
    required this.bucketDomainName,
    required this.bucketRegion,
    required this.bucketRegionalDomainName,
    required this.hostedZoneId,
    required this.id,
    required this.region,
    required this.websiteDomain,
    required this.websiteEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['bucket'] = bucket;
    map['bucketDomainName'] = bucketDomainName;
    map['bucketRegion'] = bucketRegion;
    map['bucketRegionalDomainName'] = bucketRegionalDomainName;
    map['hostedZoneId'] = hostedZoneId;
    map['id'] = id;
    map['region'] = region;
    map['websiteDomain'] = websiteDomain;
    map['websiteEndpoint'] = websiteEndpoint;
    return map;
  }

  factory GetBucketResult.fromMap(Map<String, dynamic> map) {
    return GetBucketResult(
      arn: map['arn'] as String,
      bucket: map['bucket'] as String,
      bucketDomainName: map['bucketDomainName'] as String,
      bucketRegion: map['bucketRegion'] as String,
      bucketRegionalDomainName: map['bucketRegionalDomainName'] as String,
      hostedZoneId: map['hostedZoneId'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      websiteDomain: map['websiteDomain'] as String,
      websiteEndpoint: map['websiteEndpoint'] as String,
    );
  }
}
