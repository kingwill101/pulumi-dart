// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The full path to a volume that is to be migrated into ANF. Required for Migration volumes
class RemotePathResponse {
  /// The Path to a ONTAP Host
  final pulumi.Input<String> externalHostName;
  /// The name of a server on the ONTAP Host
  final pulumi.Input<String> serverName;
  /// The name of a volume on the server
  final pulumi.Input<String> volumeName;

  /// Creates a new [RemotePathResponse].
  /// [externalHostName] The Path to a ONTAP Host
  /// [serverName] The name of a server on the ONTAP Host
  /// [volumeName] The name of a volume on the server
  const RemotePathResponse({
    required this.externalHostName,
    required this.serverName,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalHostName': externalHostName,
      'serverName': serverName,
      'volumeName': volumeName,
    };
  }

  factory RemotePathResponse.fromMap(Map<String, dynamic> map) {
    return RemotePathResponse(
      externalHostName: pulumi.Input.fromValue(map['externalHostName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
    );
  }
}

