// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datasync_location_object_storage_location_object_storage_args_doc}
/// The set of arguments for LocationObjectStorage.
/// {@endtemplate}
/// {@macro pulumi_datasync_location_object_storage_location_object_storage_args_doc}
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

  /// Creates a new [LocationObjectStorageArgs].
  /// [accessKey] The access key is used if credentials are required to access the self-managed object storage server. If your object storage requires a user name and password to authenticate, use `access_key` and `secret_key` to provide the user name and password, respectively.
  /// [agentArns] A list of DataSync Agent ARNs with which this location will be associated. For agentless cross-cloud transfers, this parameter does not need to be specified.
  /// [bucketName] The bucket on the self-managed object storage server that is used to read data from.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretKey] The secret key is used if credentials are required to access the self-managed object storage server. If your object storage requires a user name and password to authenticate, use `access_key` and `secret_key` to provide the user name and password, respectively.
  /// [serverCertificate] Specifies a certificate to authenticate with an object storage system that uses a private or self-signed certificate authority (CA). You must specify a Base64-encoded .pem string. The certificate can be up to 32768 bytes (before Base64 encoding).
  /// [serverHostname] The name of the self-managed object storage server. This value is the IP address or Domain Name Service (DNS) name of the object storage server. An agent uses this host name to mount the object storage server in a network.
  /// [serverPort] The port that your self-managed object storage server accepts inbound network traffic on. The server port is set by default to TCP 80 (`HTTP`) or TCP 443 (`HTTPS`). You can specify a custom port if your self-managed object storage server requires one.
  /// [serverProtocol] The protocol that the object storage server uses to communicate. Valid values are `HTTP` or `HTTPS`.
  /// [subdirectory] A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write data to the HDFS cluster. If the subdirectory isn't specified, it will default to /.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'agentArns': ?agentArns,
      'bucketName': bucketName,
      'region': ?region,
      'secretKey': ?secretKey,
      'serverCertificate': ?serverCertificate,
      'serverHostname': serverHostname,
      'serverPort': ?serverPort,
      'serverProtocol': ?serverProtocol,
      'subdirectory': ?subdirectory,
      'tags': ?tags,
    };
  }

  factory LocationObjectStorageArgs.fromMap(Map<String, dynamic> map) {
    return LocationObjectStorageArgs(
      accessKey: (() {
        final guardedValue = map['accessKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      agentArns: (() {
        final guardedValue = map['agentArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretKey: (() {
        final guardedValue = map['secretKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverCertificate: (() {
        final guardedValue = map['serverCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverHostname: pulumi.Input.fromValue(map['serverHostname'] as String),
      serverPort: (() {
        final guardedValue = map['serverPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      serverProtocol: (() {
        final guardedValue = map['serverProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subdirectory: (() {
        final guardedValue = map['subdirectory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
