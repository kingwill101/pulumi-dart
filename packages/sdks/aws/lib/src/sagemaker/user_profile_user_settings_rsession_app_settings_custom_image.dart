// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserProfileUserSettingsRSessionAppSettingsCustomImage {
  /// The name of the App Image Config.
  final pulumi.Input<String> appImageConfigName;
  /// The name of the Custom Image.
  final pulumi.Input<String> imageName;
  /// The version number of the Custom Image.
  final pulumi.Input<int?>? imageVersionNumber;

  /// Creates a new [UserProfileUserSettingsRSessionAppSettingsCustomImage].
  /// [appImageConfigName] The name of the App Image Config.
  /// [imageName] The name of the Custom Image.
  /// [imageVersionNumber] The version number of the Custom Image.
  const UserProfileUserSettingsRSessionAppSettingsCustomImage({
    required this.appImageConfigName,
    required this.imageName,
    this.imageVersionNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appImageConfigName': appImageConfigName,
      'imageName': imageName,
      'imageVersionNumber': ?imageVersionNumber,
    };
  }

  factory UserProfileUserSettingsRSessionAppSettingsCustomImage.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsRSessionAppSettingsCustomImage(
      appImageConfigName: pulumi.Input.fromValue(map['appImageConfigName'] as String),
      imageName: pulumi.Input.fromValue(map['imageName'] as String),
      imageVersionNumber: (() { final guardedValue = map['imageVersionNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
