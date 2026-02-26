// ignore_for_file: unused_element, unnecessary_cast

class KxVolumeNas1Configuration {
  /// The size of the network attached storage.
  final int size;

  /// The type of the network attached storage.
  final String type;

  KxVolumeNas1Configuration({
    required this.size,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['size'] = size;
    map['type'] = type;
    return map;
  }

  factory KxVolumeNas1Configuration.fromMap(Map<String, dynamic> map) {
    return KxVolumeNas1Configuration(
      size: map['size'] as int,
      type: map['type'] as String,
    );
  }
}
