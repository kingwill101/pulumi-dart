// ignore_for_file: unused_element, unnecessary_cast


/// Describes the volume options for the container
class VolumeOptionsResponse {
  /// Indicate whether volume is nocopy
  final bool? nocopy;

  /// Creates a new [VolumeOptionsResponse].
  /// [nocopy] Indicate whether volume is nocopy
  VolumeOptionsResponse({
    this.nocopy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nocopy': ?nocopy,
    };
  }

  factory VolumeOptionsResponse.fromMap(Map<String, dynamic> map) {
    return VolumeOptionsResponse(
      nocopy: map['nocopy'] == null ? null : map['nocopy'] as bool,
    );
  }
}

