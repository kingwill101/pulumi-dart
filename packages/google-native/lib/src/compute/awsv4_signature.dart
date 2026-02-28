// ignore_for_file: unused_element, unnecessary_cast

/// Contains the configurations necessary to generate a signature for access to private storage buckets that support Signature Version 4 for authentication. The service name for generating the authentication header will always default to 's3'.
class AWSV4Signature {
  /// The access key used for s3 bucket authentication. Required for updating or creating a backend that uses AWS v4 signature authentication, but will not be returned as part of the configuration when queried with a REST API GET request. @InputOnly
  final String? accessKey;

  /// The identifier of an access key used for s3 bucket authentication.
  final String? accessKeyId;

  /// The optional version identifier for the access key. You can use this to keep track of different iterations of your access key.
  final String? accessKeyVersion;

  /// The name of the cloud region of your origin. This is a free-form field with the name of the region your cloud uses to host your origin. For example, "us-east-1" for AWS or "us-ashburn-1" for OCI.
  final String? originRegion;

  /// Creates a new [AWSV4Signature].
  /// [accessKey] The access key used for s3 bucket authentication. Required for updating or creating a backend that uses AWS v4 signature authentication, but will not be returned as part of the configuration when queried with a REST API GET request. @InputOnly
  /// [accessKeyId] The identifier of an access key used for s3 bucket authentication.
  /// [accessKeyVersion] The optional version identifier for the access key. You can use this to keep track of different iterations of your access key.
  /// [originRegion] The name of the cloud region of your origin. This is a free-form field with the name of the region your cloud uses to host your origin. For example, "us-east-1" for AWS or "us-ashburn-1" for OCI.
  AWSV4Signature({
    this.accessKey,
    this.accessKeyId,
    this.accessKeyVersion,
    this.originRegion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessKeyValue = accessKey;
    if (accessKeyValue != null) {
      map['accessKey'] = accessKeyValue;
    }
    final accessKeyIdValue = accessKeyId;
    if (accessKeyIdValue != null) {
      map['accessKeyId'] = accessKeyIdValue;
    }
    final accessKeyVersionValue = accessKeyVersion;
    if (accessKeyVersionValue != null) {
      map['accessKeyVersion'] = accessKeyVersionValue;
    }
    final originRegionValue = originRegion;
    if (originRegionValue != null) {
      map['originRegion'] = originRegionValue;
    }
    return map;
  }

  factory AWSV4Signature.fromMap(Map<String, dynamic> map) {
    return AWSV4Signature(
      accessKey: map['accessKey'] == null ? null : map['accessKey'] as String,
      accessKeyId:
          map['accessKeyId'] == null ? null : map['accessKeyId'] as String,
      accessKeyVersion: map['accessKeyVersion'] == null
          ? null
          : map['accessKeyVersion'] as String,
      originRegion:
          map['originRegion'] == null ? null : map['originRegion'] as String,
    );
  }
}
