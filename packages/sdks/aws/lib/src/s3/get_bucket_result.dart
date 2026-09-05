// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBucket.
class GetBucketResult {
  /// ARN of the bucket. Will be of format `arn:aws:s3:::bucketname`.
  final String? arn;
  final String? bucket;
  /// Bucket domain name. Will be of format `bucketname.s3.amazonaws.com`.
  final String? bucketDomainName;
  /// AWS region this bucket resides in.
  final String? bucketRegion;
  /// Bucket region-specific domain name. The bucket domain name including the region name. Please refer to the [S3 endpoints reference](https://docs.aws.amazon.com/general/latest/gr/s3.html#s3_region) for format. Note: AWS CloudFront allows specifying an S3 region-specific endpoint when creating an S3 origin. This will prevent redirect issues from CloudFront to the S3 Origin URL. For more information, see the [Virtual Hosted-Style Requests for Other Regions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/VirtualHosting.html#deprecated-global-endpoint) section in the AWS S3 User Guide.
  final String? bucketRegionalDomainName;
  /// [Route 53 Hosted Zone ID](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_website_region_endpoints) for this bucket's region.
  final String? hostedZoneId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// Domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records.
  final String? websiteDomain;
  /// Website endpoint, if the bucket is configured with a website. If not, this will be an empty string.
  final String? websiteEndpoint;

  /// Creates a new [GetBucketResult].
  /// [arn] ARN of the bucket. Will be of format `arn:aws:s3:::bucketname`.
  /// [bucket] Optional.
  /// [bucketDomainName] Bucket domain name. Will be of format `bucketname.s3.amazonaws.com`.
  /// [bucketRegion] AWS region this bucket resides in.
  /// [bucketRegionalDomainName] Bucket region-specific domain name. The bucket domain name including the region name. Please refer to the [S3 endpoints reference](https://docs.aws.amazon.com/general/latest/gr/s3.html#s3_region) for format. Note: AWS CloudFront allows specifying an S3 region-specific endpoint when creating an S3 origin. This will prevent redirect issues from CloudFront to the S3 Origin URL. For more information, see the [Virtual Hosted-Style Requests for Other Regions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/VirtualHosting.html#deprecated-global-endpoint) section in the AWS S3 User Guide.
  /// [hostedZoneId] [Route 53 Hosted Zone ID](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_website_region_endpoints) for this bucket's region.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [websiteDomain] Domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records.
  /// [websiteEndpoint] Website endpoint, if the bucket is configured with a website. If not, this will be an empty string.
  const GetBucketResult({
    this.arn,
    this.bucket,
    this.bucketDomainName,
    this.bucketRegion,
    this.bucketRegionalDomainName,
    this.hostedZoneId,
    this.id,
    this.region,
    this.websiteDomain,
    this.websiteEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'bucket': ?bucket,
      'bucketDomainName': ?bucketDomainName,
      'bucketRegion': ?bucketRegion,
      'bucketRegionalDomainName': ?bucketRegionalDomainName,
      'hostedZoneId': ?hostedZoneId,
      'id': ?id,
      'region': ?region,
      'websiteDomain': ?websiteDomain,
      'websiteEndpoint': ?websiteEndpoint,
    };
  }

  factory GetBucketResult.fromMap(Map<String, dynamic> map) {
    return GetBucketResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucketDomainName: (() { final guardedValue = map['bucketDomainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucketRegion: (() { final guardedValue = map['bucketRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucketRegionalDomainName: (() { final guardedValue = map['bucketRegionalDomainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostedZoneId: (() { final guardedValue = map['hostedZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      websiteDomain: (() { final guardedValue = map['websiteDomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      websiteEndpoint: (() { final guardedValue = map['websiteEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
