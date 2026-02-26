// ignore_for_file: unused_element, unnecessary_cast

class GetImageImagePermission {
  /// Boolean indicating if the image can be used for a fleet.
  final bool allowFleet;

  /// indicated whether the image can be used for an image builder.
  final bool allowImageBuilder;

  GetImageImagePermission({
    required this.allowFleet,
    required this.allowImageBuilder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowFleet'] = allowFleet;
    map['allowImageBuilder'] = allowImageBuilder;
    return map;
  }

  factory GetImageImagePermission.fromMap(Map<String, dynamic> map) {
    return GetImageImagePermission(
      allowFleet: map['allowFleet'] as bool,
      allowImageBuilder: map['allowImageBuilder'] as bool,
    );
  }
}
