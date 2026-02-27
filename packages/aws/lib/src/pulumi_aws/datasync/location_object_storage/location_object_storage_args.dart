// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LocationObjectStorage.
class LocationObjectStorageArgs {
  /// The access key is used if credentials are required to access the self-managed object storage server. If your object storage requires a user name and password to authenticate, use `access_key` and `secret_key` to provide the user name and password, respectively.
  final pulumi.Input<String>? accessKey;

  /// A list of DataSync Agent ARNs with which this location will be associated. For agentless cross-cloud transfers, this parameter does not need to be specified.
  final pulumi.Input<List<String>>? agentArns;

  /// The bucket on the self-managed object storage server that is used to read data from.
  final pulumi.Input<String> bucketName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The secret key is used if credentials are required to access the self-managed object storage server. If your object storage requires a user name and password to authenticate, use `access_key` and `secret_key` to provide the user name and password, respectively.
  final pulumi.Input<String>? secretKey;

  /// Specifies a certificate to authenticate with an object storage system that uses a private or self-signed certificate authority (CA). You must specify a Base64-encoded .pem string. The certificate can be up to 32768 bytes (before Base64 encoding).
  final pulumi.Input<String>? serverCertificate;

  /// The name of the self-managed object storage server. This value is the IP address or Domain Name Service (DNS) name of the object storage server. An agent uses this host name to mount the object storage server in a network.
  final pulumi.Input<String> serverHostname;

  /// The port that your self-managed object storage server accepts inbound network traffic on. The server port is set by default to TCP 80 (`HTTP`) or TCP 443 (`HTTPS`). You can specify a custom port if your self-managed object storage server requires one.
  final pulumi.Input<int>? serverPort;

  /// The protocol that the object storage server uses to communicate. Valid values are `HTTP` or `HTTPS`.
  final pulumi.Input<String>? serverProtocol;

  /// A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write data to the HDFS cluster. If the subdirectory isn't specified, it will default to /.
  final pulumi.Input<String>? subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  LocationObjectStorageArgs({
    this.accessKey,
    this.agentArns,
    required this.bucketName,
    this.region,
    this.secretKey,
    this.serverCertificate,
    required this.serverHostname,
    this.serverPort,
    this.serverProtocol,
    this.subdirectory,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessKeyValue = accessKey;
    if (accessKeyValue != null) {
      map['accessKey'] = accessKeyValue;
    }
    final agentArnsValue = agentArns;
    if (agentArnsValue != null) {
      map['agentArns'] = agentArnsValue;
    }
    map['bucketName'] = bucketName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final secretKeyValue = secretKey;
    if (secretKeyValue != null) {
      map['secretKey'] = secretKeyValue;
    }
    final serverCertificateValue = serverCertificate;
    if (serverCertificateValue != null) {
      map['serverCertificate'] = serverCertificateValue;
    }
    map['serverHostname'] = serverHostname;
    final serverPortValue = serverPort;
    if (serverPortValue != null) {
      map['serverPort'] = serverPortValue;
    }
    final serverProtocolValue = serverProtocol;
    if (serverProtocolValue != null) {
      map['serverProtocol'] = serverProtocolValue;
    }
    final subdirectoryValue = subdirectory;
    if (subdirectoryValue != null) {
      map['subdirectory'] = subdirectoryValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LocationObjectStorageArgs.fromMap(Map<String, dynamic> map) {
    return LocationObjectStorageArgs(
      accessKey: pulumi.Input.asOptionalInput<String>(map['accessKey']),
      agentArns: pulumi.Input.asOptionalInput<List<String>>(map['agentArns']),
      bucketName: pulumi.Input.asInput<String>(map['bucketName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      secretKey: pulumi.Input.asOptionalInput<String>(map['secretKey']),
      serverCertificate:
          pulumi.Input.asOptionalInput<String>(map['serverCertificate']),
      serverHostname: pulumi.Input.asInput<String>(map['serverHostname']),
      serverPort: pulumi.Input.asOptionalInput<int>(map['serverPort']),
      serverProtocol:
          pulumi.Input.asOptionalInput<String>(map['serverProtocol']),
      subdirectory: pulumi.Input.asOptionalInput<String>(map['subdirectory']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
