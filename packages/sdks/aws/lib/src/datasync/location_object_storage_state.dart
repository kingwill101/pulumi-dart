// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LocationObjectStorage resources.
class LocationObjectStorageState {
  /// The access key is used if credentials are required to access the self-managed object storage server. If your object storage requires a user name and password to authenticate, use `access_key` and `secret_key` to provide the user name and password, respectively.
  final pulumi.Input<String>? accessKey;
  /// A list of DataSync Agent ARNs with which this location will be associated. For agentless cross-cloud transfers, this parameter does not need to be specified.
  final pulumi.Input<List<String>>? agentArns;
  /// Amazon Resource Name (ARN) of the DataSync Location.
  final pulumi.Input<String>? arn;
  /// The bucket on the self-managed object storage server that is used to read data from.
  final pulumi.Input<String>? bucketName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The secret key is used if credentials are required to access the self-managed object storage server. If your object storage requires a user name and password to authenticate, use `access_key` and `secret_key` to provide the user name and password, respectively.
  final pulumi.Input<String>? secretKey;
  /// Specifies a certificate to authenticate with an object storage system that uses a private or self-signed certificate authority (CA). You must specify a Base64-encoded .pem string. The certificate can be up to 32768 bytes (before Base64 encoding).
  final pulumi.Input<String>? serverCertificate;
  /// The name of the self-managed object storage server. This value is the IP address or Domain Name Service (DNS) name of the object storage server. An agent uses this host name to mount the object storage server in a network.
  final pulumi.Input<String>? serverHostname;
  /// The port that your self-managed object storage server accepts inbound network traffic on. The server port is set by default to TCP 80 (`HTTP`) or TCP 443 (`HTTPS`). You can specify a custom port if your self-managed object storage server requires one.
  final pulumi.Input<int>? serverPort;
  /// The protocol that the object storage server uses to communicate. Valid values are `HTTP` or `HTTPS`.
  final pulumi.Input<String>? serverProtocol;
  /// A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write data to the HDFS cluster. If the subdirectory isn't specified, it will default to /.
  final pulumi.Input<String>? subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The URL of the Object Storage location that was described.
  final pulumi.Input<String>? uri;

  /// Creates a new [LocationObjectStorageState].
  /// [accessKey] The access key is used if credentials are required to access the self-managed object storage server. If your object storage requires a user name and password to authenticate, use `access_key` and `secret_key` to provide the user name and password, respectively.
  /// [agentArns] A list of DataSync Agent ARNs with which this location will be associated. For agentless cross-cloud transfers, this parameter does not need to be specified.
  /// [arn] Amazon Resource Name (ARN) of the DataSync Location.
  /// [bucketName] The bucket on the self-managed object storage server that is used to read data from.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretKey] The secret key is used if credentials are required to access the self-managed object storage server. If your object storage requires a user name and password to authenticate, use `access_key` and `secret_key` to provide the user name and password, respectively.
  /// [serverCertificate] Specifies a certificate to authenticate with an object storage system that uses a private or self-signed certificate authority (CA). You must specify a Base64-encoded .pem string. The certificate can be up to 32768 bytes (before Base64 encoding).
  /// [serverHostname] The name of the self-managed object storage server. This value is the IP address or Domain Name Service (DNS) name of the object storage server. An agent uses this host name to mount the object storage server in a network.
  /// [serverPort] The port that your self-managed object storage server accepts inbound network traffic on. The server port is set by default to TCP 80 (`HTTP`) or TCP 443 (`HTTPS`). You can specify a custom port if your self-managed object storage server requires one.
  /// [serverProtocol] The protocol that the object storage server uses to communicate. Valid values are `HTTP` or `HTTPS`.
  /// [subdirectory] A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write data to the HDFS cluster. If the subdirectory isn't specified, it will default to /.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [uri] The URL of the Object Storage location that was described.
  LocationObjectStorageState({
    this.accessKey,
    this.agentArns,
    this.arn,
    this.bucketName,
    this.region,
    this.secretKey,
    this.serverCertificate,
    this.serverHostname,
    this.serverPort,
    this.serverProtocol,
    this.subdirectory,
    this.tags,
    this.tagsAll,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'agentArns': ?agentArns,
      'arn': ?arn,
      'bucketName': ?bucketName,
      'region': ?region,
      'secretKey': ?secretKey,
      'serverCertificate': ?serverCertificate,
      'serverHostname': ?serverHostname,
      'serverPort': ?serverPort,
      'serverProtocol': ?serverProtocol,
      'subdirectory': ?subdirectory,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uri': ?uri,
    };
  }

  factory LocationObjectStorageState.fromMap(Map<String, dynamic> map) {
    return LocationObjectStorageState(
      accessKey: map['accessKey'] == null ? null : (map['accessKey'] as String).input(),
      agentArns: map['agentArns'] == null ? null : ((map['agentArns'] as List).cast<String>()).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      bucketName: map['bucketName'] == null ? null : (map['bucketName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      secretKey: map['secretKey'] == null ? null : (map['secretKey'] as String).input(),
      serverCertificate: map['serverCertificate'] == null ? null : (map['serverCertificate'] as String).input(),
      serverHostname: map['serverHostname'] == null ? null : (map['serverHostname'] as String).input(),
      serverPort: map['serverPort'] == null ? null : (map['serverPort'] as int).input(),
      serverProtocol: map['serverProtocol'] == null ? null : (map['serverProtocol'] as String).input(),
      subdirectory: map['subdirectory'] == null ? null : (map['subdirectory'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}

