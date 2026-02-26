// ignore_for_file: unused_element, unnecessary_cast

class GetGiVersionsGiVersion {
  /// The GI software version.
  final String version;

  GetGiVersionsGiVersion({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['version'] = version;
    return map;
  }

  factory GetGiVersionsGiVersion.fromMap(Map<String, dynamic> map) {
    return GetGiVersionsGiVersion(
      version: map['version'] as String,
    );
  }
}
