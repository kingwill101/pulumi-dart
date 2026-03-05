// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The source for the disk image.
class GalleryDiskImageSource {
  /// The id of the gallery artifact version source.
  final pulumi.Input<String>? id;
  /// The Storage Account Id that contains the vhd blob being used as a source for this artifact version.
  final pulumi.Input<String>? storageAccountId;
  /// The uri of the gallery artifact version source. Currently used to specify vhd/blob source.
  final pulumi.Input<String>? uri;

  /// Creates a new [GalleryDiskImageSource].
  /// [id] The id of the gallery artifact version source.
  /// [storageAccountId] The Storage Account Id that contains the vhd blob being used as a source for this artifact version.
  /// [uri] The uri of the gallery artifact version source. Currently used to specify vhd/blob source.
  GalleryDiskImageSource({
    this.id,
    this.storageAccountId,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'storageAccountId': ?storageAccountId,
      'uri': ?uri,
    };
  }

  factory GalleryDiskImageSource.fromMap(Map<String, dynamic> map) {
    return GalleryDiskImageSource(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

