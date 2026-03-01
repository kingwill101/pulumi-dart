// ignore_for_file: unused_element, unnecessary_cast


/// Describes the uri of a disk.
class VirtualHardDisk {
  /// Specifies the virtual hard disk's uri.
  final String? uri;

  /// Creates a new [VirtualHardDisk].
  /// [uri] Specifies the virtual hard disk's uri.
  VirtualHardDisk({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory VirtualHardDisk.fromMap(Map<String, dynamic> map) {
    return VirtualHardDisk(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

