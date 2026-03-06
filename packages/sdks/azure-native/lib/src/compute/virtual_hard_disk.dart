// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the uri of a disk.
class VirtualHardDisk {
  /// Specifies the virtual hard disk's uri.
  final pulumi.Input<String>? uri;

  /// Creates a new [VirtualHardDisk].
  /// [uri] Specifies the virtual hard disk's uri.
  const VirtualHardDisk({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory VirtualHardDisk.fromMap(Map<String, dynamic> map) {
    return VirtualHardDisk(
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

