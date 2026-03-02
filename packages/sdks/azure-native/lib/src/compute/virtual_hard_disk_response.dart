// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the uri of a disk.
class VirtualHardDiskResponse {
  /// Specifies the virtual hard disk's uri.
  final pulumi.Input<String>? uri;

  /// Creates a new [VirtualHardDiskResponse].
  /// [uri] Specifies the virtual hard disk's uri.
  VirtualHardDiskResponse({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory VirtualHardDiskResponse.fromMap(Map<String, dynamic> map) {
    return VirtualHardDiskResponse(
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}

