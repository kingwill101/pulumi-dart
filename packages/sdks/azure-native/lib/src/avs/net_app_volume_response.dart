// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Azure NetApp Files volume from Microsoft.NetApp provider
class NetAppVolumeResponse {
  /// Azure resource ID of the NetApp volume
  final pulumi.Input<String> id;

  /// Creates a new [NetAppVolumeResponse].
  /// [id] Azure resource ID of the NetApp volume
  NetAppVolumeResponse({required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id};
  }

  factory NetAppVolumeResponse.fromMap(Map<String, dynamic> map) {
    return NetAppVolumeResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
