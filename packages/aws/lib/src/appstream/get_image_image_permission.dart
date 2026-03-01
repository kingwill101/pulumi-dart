// ignore_for_file: unused_element, unnecessary_cast

class GetImageImagePermission {
  /// Boolean indicating if the image can be used for a fleet.
  final bool allowFleet;

  /// indicated whether the image can be used for an image builder.
  final bool allowImageBuilder;

  /// Creates a new [GetImageImagePermission].
  /// [allowFleet] Boolean indicating if the image can be used for a fleet.
  /// [allowImageBuilder] indicated whether the image can be used for an image builder.
  GetImageImagePermission({
    required this.allowFleet,
    required this.allowImageBuilder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowFleet': allowFleet,
      'allowImageBuilder': allowImageBuilder,
    };
  }

  factory GetImageImagePermission.fromMap(Map<String, dynamic> map) {
    return GetImageImagePermission(
      allowFleet: map['allowFleet'] as bool,
      allowImageBuilder: map['allowImageBuilder'] as bool,
    );
  }
}
