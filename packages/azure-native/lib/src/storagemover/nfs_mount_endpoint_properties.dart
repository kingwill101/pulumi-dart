// ignore_for_file: unused_element, unnecessary_cast


/// The properties of NFS share endpoint.
class NfsMountEndpointProperties {
  /// A description for the Endpoint.
  final String? description;
  /// The Endpoint resource type.
  /// Expected value is 'NfsMount'.
  final String endpointType;
  /// The directory being exported from the server.
  final String export;
  /// The host name or IP address of the server exporting the file system.
  final String host;
  /// The NFS protocol version.
  final String? nfsVersion;

  /// Creates a new [NfsMountEndpointProperties].
  /// [description] A description for the Endpoint.
  /// [endpointType] The Endpoint resource type.
  /// [export] The directory being exported from the server.
  /// [host] The host name or IP address of the server exporting the file system.
  /// [nfsVersion] The NFS protocol version.
  NfsMountEndpointProperties({
    this.description,
    required this.endpointType,
    required this.export,
    required this.host,
    this.nfsVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endpointType': endpointType,
      'export': export,
      'host': host,
      'nfsVersion': ?nfsVersion,
    };
  }

  factory NfsMountEndpointProperties.fromMap(Map<String, dynamic> map) {
    return NfsMountEndpointProperties(
      description: map['description'] == null ? null : map['description'] as String,
      endpointType: map['endpointType'] as String,
      export: map['export'] as String,
      host: map['host'] as String,
      nfsVersion: map['nfsVersion'] == null ? null : map['nfsVersion'] as String,
    );
  }
}

