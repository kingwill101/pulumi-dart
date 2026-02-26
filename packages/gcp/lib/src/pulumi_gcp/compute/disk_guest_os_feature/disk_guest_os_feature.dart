// ignore_for_file: unused_element, unnecessary_cast

class DiskGuestOsFeature {
  /// The type of supported feature. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options.
  final String type;

  DiskGuestOsFeature({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory DiskGuestOsFeature.fromMap(Map<String, dynamic> map) {
    return DiskGuestOsFeature(
      type: map['type'] as String,
    );
  }
}
