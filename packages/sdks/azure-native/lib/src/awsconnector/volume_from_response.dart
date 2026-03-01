// ignore_for_file: unused_element, unnecessary_cast


/// Definition of VolumeFrom
class VolumeFromResponse {
  /// If this value is ``true``, the container has read-only access to the volume. If this value is ``false``, then the container can write to the volume. The default value is ``false``.
  final bool? readOnly;
  /// The name of another container within the same task definition to mount volumes from.
  final String? sourceContainer;

  /// Creates a new [VolumeFromResponse].
  /// [readOnly] If this value is ``true``, the container has read-only access to the volume. If this value is ``false``, then the container can write to the volume. The default value is ``false``.
  /// [sourceContainer] The name of another container within the same task definition to mount volumes from.
  VolumeFromResponse({
    this.readOnly,
    this.sourceContainer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readOnly': ?readOnly,
      'sourceContainer': ?sourceContainer,
    };
  }

  factory VolumeFromResponse.fromMap(Map<String, dynamic> map) {
    return VolumeFromResponse(
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      sourceContainer: map['sourceContainer'] == null ? null : map['sourceContainer'] as String,
    );
  }
}

