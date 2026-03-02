// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserProfileUserSettingsKernelGatewayAppSettingsCustomImage {
  /// The name of the App Image Config.
  final pulumi.Input<String> appImageConfigName;
  /// The name of the Custom Image.
  final pulumi.Input<String> imageName;
  /// The version number of the Custom Image.
  final pulumi.Input<int>? imageVersionNumber;

  /// Creates a new [UserProfileUserSettingsKernelGatewayAppSettingsCustomImage].
  /// [appImageConfigName] The name of the App Image Config.
  /// [imageName] The name of the Custom Image.
  /// [imageVersionNumber] The version number of the Custom Image.
  UserProfileUserSettingsKernelGatewayAppSettingsCustomImage({
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

  factory UserProfileUserSettingsKernelGatewayAppSettingsCustomImage.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsKernelGatewayAppSettingsCustomImage(
      appImageConfigName: (map['appImageConfigName'] as String).input(),
      imageName: (map['imageName'] as String).input(),
      imageVersionNumber: map['imageVersionNumber'] == null ? null : ((map['imageVersionNumber'] as int).input()).input(),
    );
  }
}

