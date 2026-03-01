// ignore_for_file: unused_element, unnecessary_cast

class UserProfileUserSettingsKernelGatewayAppSettingsCustomImage {
  /// The name of the App Image Config.
  final String appImageConfigName;

  /// The name of the Custom Image.
  final String imageName;

  /// The version number of the Custom Image.
  final int? imageVersionNumber;

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

  factory UserProfileUserSettingsKernelGatewayAppSettingsCustomImage.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserProfileUserSettingsKernelGatewayAppSettingsCustomImage(
      appImageConfigName: map['appImageConfigName'] as String,
      imageName: map['imageName'] as String,
      imageVersionNumber: map['imageVersionNumber'] == null
          ? null
          : map['imageVersionNumber'] as int,
    );
  }
}
