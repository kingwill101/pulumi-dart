// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDefaultUserSettingsRSessionAppSettingsCustomImage {
  /// The name of the App Image Config.
  final pulumi.Input<String> appImageConfigName;
  /// The name of the Custom Image.
  final pulumi.Input<String> imageName;
  /// The version number of the Custom Image.
  final pulumi.Input<int>? imageVersionNumber;

  /// Creates a new [DomainDefaultUserSettingsRSessionAppSettingsCustomImage].
  /// [appImageConfigName] The name of the App Image Config.
  /// [imageName] The name of the Custom Image.
  /// [imageVersionNumber] The version number of the Custom Image.
  const DomainDefaultUserSettingsRSessionAppSettingsCustomImage({
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

  factory DomainDefaultUserSettingsRSessionAppSettingsCustomImage.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsRSessionAppSettingsCustomImage(
      appImageConfigName: pulumi.Input.fromValue(map['appImageConfigName'] as String),
      imageName: pulumi.Input.fromValue(map['imageName'] as String),
      imageVersionNumber: (() { final guardedValue = map['imageVersionNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
