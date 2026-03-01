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
    pulumi.Output<String>? accessKey,
    pulumi.Output<List<String>>? agentArns,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? bucketName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? secretKey,
    pulumi.Output<String>? serverCertificate,
    pulumi.Output<String>? serverHostname,
    pulumi.Output<int>? serverPort,
    pulumi.Output<String>? serverProtocol,
    pulumi.Output<String>? subdirectory,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? uri,
  }) :
      accessKey = pulumi.Input.asOptionalInput<String>(accessKey),
      agentArns = pulumi.Input.asOptionalInput<List<String>>(agentArns),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      bucketName = pulumi.Input.asOptionalInput<String>(bucketName),
      region = pulumi.Input.asOptionalInput<String>(region),
      secretKey = pulumi.Input.asOptionalInput<String>(secretKey),
      serverCertificate = pulumi.Input.asOptionalInput<String>(serverCertificate),
      serverHostname = pulumi.Input.asOptionalInput<String>(serverHostname),
      serverPort = pulumi.Input.asOptionalInput<int>(serverPort),
      serverProtocol = pulumi.Input.asOptionalInput<String>(serverProtocol),
      subdirectory = pulumi.Input.asOptionalInput<String>(subdirectory),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      uri = pulumi.Input.asOptionalInput<String>(uri);

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
      accessKey: map['accessKey'] == null ? null : pulumi.Output.create<String>(map['accessKey'] as String),
      agentArns: map['agentArns'] == null ? null : pulumi.Output.create<List<String>>((map['agentArns'] as List).cast<String>()),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      bucketName: map['bucketName'] == null ? null : pulumi.Output.create<String>(map['bucketName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secretKey: map['secretKey'] == null ? null : pulumi.Output.create<String>(map['secretKey'] as String),
      serverCertificate: map['serverCertificate'] == null ? null : pulumi.Output.create<String>(map['serverCertificate'] as String),
      serverHostname: map['serverHostname'] == null ? null : pulumi.Output.create<String>(map['serverHostname'] as String),
      serverPort: map['serverPort'] == null ? null : pulumi.Output.create<int>(map['serverPort'] as int),
      serverProtocol: map['serverProtocol'] == null ? null : pulumi.Output.create<String>(map['serverProtocol'] as String),
      subdirectory: map['subdirectory'] == null ? null : pulumi.Output.create<String>(map['subdirectory'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
    );
  }
}

