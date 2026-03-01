// ignore_for_file: unused_element, unnecessary_cast


class GetSpacesBucketsBucket {
  /// The FQDN of the bucket (e.g. bucket-name.nyc3.digitaloceanspaces.com)
  final String bucketDomainName;
  /// The FQDN of the bucket without the bucket name (e.g. nyc3.digitaloceanspaces.com)
  final String endpoint;
  /// The name of the Spaces bucket
  final String name;
  /// The slug of the region where the bucket is stored.
  final String region;
  /// The uniform resource name of the bucket
  final String urn;

  /// Creates a new [GetSpacesBucketsBucket].
  /// [bucketDomainName] The FQDN of the bucket (e.g. bucket-name.nyc3.digitaloceanspaces.com)
  /// [endpoint] The FQDN of the bucket without the bucket name (e.g. nyc3.digitaloceanspaces.com)
  /// [name] The name of the Spaces bucket
  /// [region] The slug of the region where the bucket is stored.
  /// [urn] The uniform resource name of the bucket
  GetSpacesBucketsBucket({
    required this.bucketDomainName,
    required this.endpoint,
    required this.name,
    required this.region,
    required this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketDomainName': bucketDomainName,
      'endpoint': endpoint,
      'name': name,
      'region': region,
      'urn': urn,
    };
  }

  factory GetSpacesBucketsBucket.fromMap(Map<String, dynamic> map) {
    return GetSpacesBucketsBucket(
      bucketDomainName: map['bucketDomainName'] as String,
      endpoint: map['endpoint'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      urn: map['urn'] as String,
    );
  }
}

