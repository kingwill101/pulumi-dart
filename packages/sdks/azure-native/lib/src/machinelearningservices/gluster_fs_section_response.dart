// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data specific to GlusterFS.
class GlusterFsSectionResponse {
  /// The server address of one of the servers that hosts the GlusterFS. Can be either the IP address or server name.
  final pulumi.Input<String> serverAddress;
  /// The name of the created GlusterFS volume.
  final pulumi.Input<String> volumeName;

  /// Creates a new [GlusterFsSectionResponse].
  /// [serverAddress] The server address of one of the servers that hosts the GlusterFS. Can be either the IP address or server name.
  /// [volumeName] The name of the created GlusterFS volume.
  const GlusterFsSectionResponse({
    required this.serverAddress,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverAddress': serverAddress,
      'volumeName': volumeName,
    };
  }

  factory GlusterFsSectionResponse.fromMap(Map<String, dynamic> map) {
    return GlusterFsSectionResponse(
      serverAddress: pulumi.Input.fromValue(map['serverAddress'] as String),
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
    );
  }
}

