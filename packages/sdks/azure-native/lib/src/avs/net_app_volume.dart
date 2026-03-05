// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Azure NetApp Files volume from Microsoft.NetApp provider
class NetAppVolume {
  /// Azure resource ID of the NetApp volume
  final pulumi.Input<String> id;

  /// Creates a new [NetAppVolume].
  /// [id] Azure resource ID of the NetApp volume
  NetAppVolume({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory NetAppVolume.fromMap(Map<String, dynamic> map) {
    return NetAppVolume(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

