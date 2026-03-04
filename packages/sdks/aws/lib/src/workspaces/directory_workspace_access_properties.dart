// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectoryWorkspaceAccessProperties {
  /// Indicates whether users can use Android devices to access their WorkSpaces.
  final pulumi.Input<String>? deviceTypeAndroid;

  /// Indicates whether users can use Chromebooks to access their WorkSpaces.
  final pulumi.Input<String>? deviceTypeChromeos;

  /// Indicates whether users can use iOS devices to access their WorkSpaces.
  final pulumi.Input<String>? deviceTypeIos;

  /// Indicates whether users can use Linux clients to access their WorkSpaces.
  final pulumi.Input<String>? deviceTypeLinux;

  /// Indicates whether users can use macOS clients to access their WorkSpaces.
  final pulumi.Input<String>? deviceTypeOsx;

  /// Indicates whether users can access their WorkSpaces through a web browser.
  final pulumi.Input<String>? deviceTypeWeb;

  /// Indicates whether users can use Windows clients to access their WorkSpaces.
  final pulumi.Input<String>? deviceTypeWindows;

  /// Indicates whether users can use zero client devices to access their WorkSpaces.
  final pulumi.Input<String>? deviceTypeZeroclient;

  /// Creates a new [DirectoryWorkspaceAccessProperties].
  /// [deviceTypeAndroid] Indicates whether users can use Android devices to access their WorkSpaces.
  /// [deviceTypeChromeos] Indicates whether users can use Chromebooks to access their WorkSpaces.
  /// [deviceTypeIos] Indicates whether users can use iOS devices to access their WorkSpaces.
  /// [deviceTypeLinux] Indicates whether users can use Linux clients to access their WorkSpaces.
  /// [deviceTypeOsx] Indicates whether users can use macOS clients to access their WorkSpaces.
  /// [deviceTypeWeb] Indicates whether users can access their WorkSpaces through a web browser.
  /// [deviceTypeWindows] Indicates whether users can use Windows clients to access their WorkSpaces.
  /// [deviceTypeZeroclient] Indicates whether users can use zero client devices to access their WorkSpaces.
  DirectoryWorkspaceAccessProperties({
    this.deviceTypeAndroid,
    this.deviceTypeChromeos,
    this.deviceTypeIos,
    this.deviceTypeLinux,
    this.deviceTypeOsx,
    this.deviceTypeWeb,
    this.deviceTypeWindows,
    this.deviceTypeZeroclient,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceTypeAndroid': ?deviceTypeAndroid,
      'deviceTypeChromeos': ?deviceTypeChromeos,
      'deviceTypeIos': ?deviceTypeIos,
      'deviceTypeLinux': ?deviceTypeLinux,
      'deviceTypeOsx': ?deviceTypeOsx,
      'deviceTypeWeb': ?deviceTypeWeb,
      'deviceTypeWindows': ?deviceTypeWindows,
      'deviceTypeZeroclient': ?deviceTypeZeroclient,
    };
  }

  factory DirectoryWorkspaceAccessProperties.fromMap(Map<String, dynamic> map) {
    return DirectoryWorkspaceAccessProperties(
      deviceTypeAndroid: (() {
        final guardedValue = map['deviceTypeAndroid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deviceTypeChromeos: (() {
        final guardedValue = map['deviceTypeChromeos'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deviceTypeIos: (() {
        final guardedValue = map['deviceTypeIos'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deviceTypeLinux: (() {
        final guardedValue = map['deviceTypeLinux'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deviceTypeOsx: (() {
        final guardedValue = map['deviceTypeOsx'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deviceTypeWeb: (() {
        final guardedValue = map['deviceTypeWeb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deviceTypeWindows: (() {
        final guardedValue = map['deviceTypeWindows'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deviceTypeZeroclient: (() {
        final guardedValue = map['deviceTypeZeroclient'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
