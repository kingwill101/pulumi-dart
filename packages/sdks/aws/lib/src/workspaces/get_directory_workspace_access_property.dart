// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDirectoryWorkspaceAccessProperty {
  /// (Optional) Indicates whether users can use Android devices to access their WorkSpaces.
  final pulumi.Input<String> deviceTypeAndroid;

  /// (Optional) Indicates whether users can use Chromebooks to access their WorkSpaces.
  final pulumi.Input<String> deviceTypeChromeos;

  /// (Optional) Indicates whether users can use iOS devices to access their WorkSpaces.
  final pulumi.Input<String> deviceTypeIos;

  /// (Optional) Indicates whether users can use Linux clients to access their WorkSpaces.
  final pulumi.Input<String> deviceTypeLinux;

  /// (Optional) Indicates whether users can use macOS clients to access their WorkSpaces.
  final pulumi.Input<String> deviceTypeOsx;

  /// (Optional) Indicates whether users can access their WorkSpaces through a web browser.
  final pulumi.Input<String> deviceTypeWeb;

  /// (Optional) Indicates whether users can use Windows clients to access their WorkSpaces.
  final pulumi.Input<String> deviceTypeWindows;

  /// (Optional) Indicates whether users can use zero client devices to access their WorkSpaces.
  final pulumi.Input<String> deviceTypeZeroclient;

  /// Creates a new [GetDirectoryWorkspaceAccessProperty].
  /// [deviceTypeAndroid] (Optional) Indicates whether users can use Android devices to access their WorkSpaces.
  /// [deviceTypeChromeos] (Optional) Indicates whether users can use Chromebooks to access their WorkSpaces.
  /// [deviceTypeIos] (Optional) Indicates whether users can use iOS devices to access their WorkSpaces.
  /// [deviceTypeLinux] (Optional) Indicates whether users can use Linux clients to access their WorkSpaces.
  /// [deviceTypeOsx] (Optional) Indicates whether users can use macOS clients to access their WorkSpaces.
  /// [deviceTypeWeb] (Optional) Indicates whether users can access their WorkSpaces through a web browser.
  /// [deviceTypeWindows] (Optional) Indicates whether users can use Windows clients to access their WorkSpaces.
  /// [deviceTypeZeroclient] (Optional) Indicates whether users can use zero client devices to access their WorkSpaces.
  GetDirectoryWorkspaceAccessProperty({
    required this.deviceTypeAndroid,
    required this.deviceTypeChromeos,
    required this.deviceTypeIos,
    required this.deviceTypeLinux,
    required this.deviceTypeOsx,
    required this.deviceTypeWeb,
    required this.deviceTypeWindows,
    required this.deviceTypeZeroclient,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceTypeAndroid': deviceTypeAndroid,
      'deviceTypeChromeos': deviceTypeChromeos,
      'deviceTypeIos': deviceTypeIos,
      'deviceTypeLinux': deviceTypeLinux,
      'deviceTypeOsx': deviceTypeOsx,
      'deviceTypeWeb': deviceTypeWeb,
      'deviceTypeWindows': deviceTypeWindows,
      'deviceTypeZeroclient': deviceTypeZeroclient,
    };
  }

  factory GetDirectoryWorkspaceAccessProperty.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDirectoryWorkspaceAccessProperty(
      deviceTypeAndroid: pulumi.Input.fromValue(
        map['deviceTypeAndroid'] as String,
      ),
      deviceTypeChromeos: pulumi.Input.fromValue(
        map['deviceTypeChromeos'] as String,
      ),
      deviceTypeIos: pulumi.Input.fromValue(map['deviceTypeIos'] as String),
      deviceTypeLinux: pulumi.Input.fromValue(map['deviceTypeLinux'] as String),
      deviceTypeOsx: pulumi.Input.fromValue(map['deviceTypeOsx'] as String),
      deviceTypeWeb: pulumi.Input.fromValue(map['deviceTypeWeb'] as String),
      deviceTypeWindows: pulumi.Input.fromValue(
        map['deviceTypeWindows'] as String,
      ),
      deviceTypeZeroclient: pulumi.Input.fromValue(
        map['deviceTypeZeroclient'] as String,
      ),
    );
  }
}
