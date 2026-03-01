// ignore_for_file: unused_element, unnecessary_cast


class SpaceSpaceSharingSettings {
  /// Specifies the sharing type of the space. Valid values are `Private` and `Shared`.
  final String sharingType;

  /// Creates a new [SpaceSpaceSharingSettings].
  /// [sharingType] Specifies the sharing type of the space. Valid values are `Private` and `Shared`.
  SpaceSpaceSharingSettings({
    required this.sharingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharingType': sharingType,
    };
  }

  factory SpaceSpaceSharingSettings.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSharingSettings(
      sharingType: map['sharingType'] as String,
    );
  }
}

