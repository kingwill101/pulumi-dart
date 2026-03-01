// ignore_for_file: unused_element, unnecessary_cast


/// Describes the volume options for the container
class VolumeOptions {
  /// Indicate whether volume is nocopy
  final bool? nocopy;

  /// Creates a new [VolumeOptions].
  /// [nocopy] Indicate whether volume is nocopy
  VolumeOptions({
    this.nocopy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nocopy': ?nocopy,
    };
  }

  factory VolumeOptions.fromMap(Map<String, dynamic> map) {
    return VolumeOptions(
      nocopy: map['nocopy'] == null ? null : map['nocopy'] as bool,
    );
  }
}

