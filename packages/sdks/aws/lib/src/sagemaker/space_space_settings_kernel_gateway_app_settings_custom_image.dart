// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpaceSpaceSettingsKernelGatewayAppSettingsCustomImage {
  /// The name of the App Image Config.
  final pulumi.Input<String> appImageConfigName;
  /// The name of the Custom Image.
  final pulumi.Input<String> imageName;
  /// The version number of the Custom Image.
  final pulumi.Input<int>? imageVersionNumber;

  /// Creates a new [SpaceSpaceSettingsKernelGatewayAppSettingsCustomImage].
  /// [appImageConfigName] The name of the App Image Config.
  /// [imageName] The name of the Custom Image.
  /// [imageVersionNumber] The version number of the Custom Image.
  SpaceSpaceSettingsKernelGatewayAppSettingsCustomImage({
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

  factory SpaceSpaceSettingsKernelGatewayAppSettingsCustomImage.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSettingsKernelGatewayAppSettingsCustomImage(
      appImageConfigName: (map['appImageConfigName'] as String).input(),
      imageName: (map['imageName'] as String).input(),
      imageVersionNumber: map['imageVersionNumber'] == null ? null : (map['imageVersionNumber'] as int).input(),
    );
  }
}

