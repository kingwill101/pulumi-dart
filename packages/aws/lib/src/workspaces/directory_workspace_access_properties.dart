// ignore_for_file: unused_element, unnecessary_cast

class DirectoryWorkspaceAccessProperties {
  /// Indicates whether users can use Android devices to access their WorkSpaces.
  final String? deviceTypeAndroid;

  /// Indicates whether users can use Chromebooks to access their WorkSpaces.
  final String? deviceTypeChromeos;

  /// Indicates whether users can use iOS devices to access their WorkSpaces.
  final String? deviceTypeIos;

  /// Indicates whether users can use Linux clients to access their WorkSpaces.
  final String? deviceTypeLinux;

  /// Indicates whether users can use macOS clients to access their WorkSpaces.
  final String? deviceTypeOsx;

  /// Indicates whether users can access their WorkSpaces through a web browser.
  final String? deviceTypeWeb;

  /// Indicates whether users can use Windows clients to access their WorkSpaces.
  final String? deviceTypeWindows;

  /// Indicates whether users can use zero client devices to access their WorkSpaces.
  final String? deviceTypeZeroclient;

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
      deviceTypeAndroid: map['deviceTypeAndroid'] == null
          ? null
          : map['deviceTypeAndroid'] as String,
      deviceTypeChromeos: map['deviceTypeChromeos'] == null
          ? null
          : map['deviceTypeChromeos'] as String,
      deviceTypeIos: map['deviceTypeIos'] == null
          ? null
          : map['deviceTypeIos'] as String,
      deviceTypeLinux: map['deviceTypeLinux'] == null
          ? null
          : map['deviceTypeLinux'] as String,
      deviceTypeOsx: map['deviceTypeOsx'] == null
          ? null
          : map['deviceTypeOsx'] as String,
      deviceTypeWeb: map['deviceTypeWeb'] == null
          ? null
          : map['deviceTypeWeb'] as String,
      deviceTypeWindows: map['deviceTypeWindows'] == null
          ? null
          : map['deviceTypeWindows'] as String,
      deviceTypeZeroclient: map['deviceTypeZeroclient'] == null
          ? null
          : map['deviceTypeZeroclient'] as String,
    );
  }
}
