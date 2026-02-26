// ignore_for_file: unused_element, unnecessary_cast

class SpaceSpaceSharingSettings {
  /// Specifies the sharing type of the space. Valid values are `Private` and `Shared`.
  final String sharingType;

  SpaceSpaceSharingSettings({
    required this.sharingType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sharingType'] = sharingType;
    return map;
  }

  factory SpaceSpaceSharingSettings.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSharingSettings(
      sharingType: map['sharingType'] as String,
    );
  }
}
