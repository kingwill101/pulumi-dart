// ignore_for_file: unused_element, unnecessary_cast

/// Contains the configurations necessary to generate a signature for access to private storage buckets that support Signature Version 4 for authentication. The service name for generating the authentication header will always default to 's3'.
class AWSV4SignatureResponse2 {
  /// The access key used for s3 bucket authentication. Required for updating or creating a backend that uses AWS v4 signature authentication, but will not be returned as part of the configuration when queried with a REST API GET request. @InputOnly
  final String accessKey;

  /// The identifier of an access key used for s3 bucket authentication.
  final String accessKeyId;

  /// The optional version identifier for the access key. You can use this to keep track of different iterations of your access key.
  final String accessKeyVersion;

  /// The name of the cloud region of your origin. This is a free-form field with the name of the region your cloud uses to host your origin. For example, "us-east-1" for AWS or "us-ashburn-1" for OCI.
  final String originRegion;

  AWSV4SignatureResponse2({
    required this.accessKey,
    required this.accessKeyId,
    required this.accessKeyVersion,
    required this.originRegion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessKey'] = accessKey;
    map['accessKeyId'] = accessKeyId;
    map['accessKeyVersion'] = accessKeyVersion;
    map['originRegion'] = originRegion;
    return map;
  }

  factory AWSV4SignatureResponse2.fromMap(Map<String, dynamic> map) {
    return AWSV4SignatureResponse2(
      accessKey: map['accessKey'] as String,
      accessKeyId: map['accessKeyId'] as String,
      accessKeyVersion: map['accessKeyVersion'] as String,
      originRegion: map['originRegion'] as String,
    );
  }
}
