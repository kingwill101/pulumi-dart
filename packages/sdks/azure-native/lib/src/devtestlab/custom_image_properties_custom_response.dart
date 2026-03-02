// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for creating a custom image from a VHD.
class CustomImagePropertiesCustomResponse {
  /// The image name.
  final pulumi.Input<String>? imageName;
  /// The OS type of the custom image (i.e. Windows, Linux)
  final pulumi.Input<String> osType;
  /// Indicates whether sysprep has been run on the VHD.
  final pulumi.Input<bool>? sysPrep;

  /// Creates a new [CustomImagePropertiesCustomResponse].
  /// [imageName] The image name.
  /// [osType] The OS type of the custom image (i.e. Windows, Linux)
  /// [sysPrep] Indicates whether sysprep has been run on the VHD.
  CustomImagePropertiesCustomResponse({
    this.imageName,
    required this.osType,
    this.sysPrep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': ?imageName,
      'osType': osType,
      'sysPrep': ?sysPrep,
    };
  }

  factory CustomImagePropertiesCustomResponse.fromMap(Map<String, dynamic> map) {
    return CustomImagePropertiesCustomResponse(
      imageName: map['imageName'] == null ? null : (map['imageName']! as String).input(),
      osType: (map['osType'] as String).input(),
      sysPrep: map['sysPrep'] == null ? null : (map['sysPrep']! as bool).input(),
    );
  }
}

