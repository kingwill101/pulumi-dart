// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The VM image of the machines in the pool.
class PoolImageResponse {
  /// List of aliases to reference the image by.
  final pulumi.Input<List<String>?>? aliases;
  /// The percentage of the buffer to be allocated to this image.
  final pulumi.Input<String?>? buffer;
  /// The ephemeral type of the image.
  final pulumi.Input<String?>? ephemeralType;
  /// The resource id of the image.
  final pulumi.Input<String?>? resourceId;
  /// The image to use from a well-known set of images made available to customers.
  final pulumi.Input<String?>? wellKnownImageName;

  /// Creates a new [PoolImageResponse].
  /// [aliases] List of aliases to reference the image by.
  /// [buffer] The percentage of the buffer to be allocated to this image.
  /// [ephemeralType] The ephemeral type of the image.
  /// [resourceId] The resource id of the image.
  /// [wellKnownImageName] The image to use from a well-known set of images made available to customers.
  PoolImageResponse({
    this.aliases,
    pulumi.Input<String?>? buffer,
    this.ephemeralType,
    this.resourceId,
    this.wellKnownImageName,
  }) : buffer = buffer ?? pulumi.Input.fromValue('*');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'buffer': ?buffer,
      'ephemeralType': ?ephemeralType,
      'resourceId': ?resourceId,
      'wellKnownImageName': ?wellKnownImageName,
    };
  }

  factory PoolImageResponse.fromMap(Map<String, dynamic> map) {
    return PoolImageResponse(
      aliases: (() { final guardedValue = map['aliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      buffer: (() { final guardedValue = map['buffer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ephemeralType: (() { final guardedValue = map['ephemeralType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wellKnownImageName: (() { final guardedValue = map['wellKnownImageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
