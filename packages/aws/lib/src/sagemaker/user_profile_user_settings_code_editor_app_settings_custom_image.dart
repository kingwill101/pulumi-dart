// ignore_for_file: unused_element, unnecessary_cast

class UserProfileUserSettingsCodeEditorAppSettingsCustomImage {
  /// The name of the App Image Config.
  final String appImageConfigName;

  /// The name of the Custom Image.
  final String imageName;

  /// The version number of the Custom Image.
  final int? imageVersionNumber;

  /// Creates a new [UserProfileUserSettingsCodeEditorAppSettingsCustomImage].
  /// [appImageConfigName] The name of the App Image Config.
  /// [imageName] The name of the Custom Image.
  /// [imageVersionNumber] The version number of the Custom Image.
  UserProfileUserSettingsCodeEditorAppSettingsCustomImage({
    required this.appImageConfigName,
    required this.imageName,
    this.imageVersionNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appImageConfigName'] = appImageConfigName;
    map['imageName'] = imageName;
    final imageVersionNumberValue = imageVersionNumber;
    if (imageVersionNumberValue != null) {
      map['imageVersionNumber'] = imageVersionNumberValue;
    }
    return map;
  }

  factory UserProfileUserSettingsCodeEditorAppSettingsCustomImage.fromMap(
      Map<String, dynamic> map) {
    return UserProfileUserSettingsCodeEditorAppSettingsCustomImage(
      appImageConfigName: map['appImageConfigName'] as String,
      imageName: map['imageName'] as String,
      imageVersionNumber: map['imageVersionNumber'] == null
          ? null
          : map['imageVersionNumber'] as int,
    );
  }
}
