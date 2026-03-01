// ignore_for_file: unused_element, unnecessary_cast


class GetDirectoryWorkspaceAccessProperty {
  /// (Optional) Indicates whether users can use Android devices to access their WorkSpaces.
  final String deviceTypeAndroid;
  /// (Optional) Indicates whether users can use Chromebooks to access their WorkSpaces.
  final String deviceTypeChromeos;
  /// (Optional) Indicates whether users can use iOS devices to access their WorkSpaces.
  final String deviceTypeIos;
  /// (Optional) Indicates whether users can use Linux clients to access their WorkSpaces.
  final String deviceTypeLinux;
  /// (Optional) Indicates whether users can use macOS clients to access their WorkSpaces.
  final String deviceTypeOsx;
  /// (Optional) Indicates whether users can access their WorkSpaces through a web browser.
  final String deviceTypeWeb;
  /// (Optional) Indicates whether users can use Windows clients to access their WorkSpaces.
  final String deviceTypeWindows;
  /// (Optional) Indicates whether users can use zero client devices to access their WorkSpaces.
  final String deviceTypeZeroclient;

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

  factory GetDirectoryWorkspaceAccessProperty.fromMap(Map<String, dynamic> map) {
    return GetDirectoryWorkspaceAccessProperty(
      deviceTypeAndroid: map['deviceTypeAndroid'] as String,
      deviceTypeChromeos: map['deviceTypeChromeos'] as String,
      deviceTypeIos: map['deviceTypeIos'] as String,
      deviceTypeLinux: map['deviceTypeLinux'] as String,
      deviceTypeOsx: map['deviceTypeOsx'] as String,
      deviceTypeWeb: map['deviceTypeWeb'] as String,
      deviceTypeWindows: map['deviceTypeWindows'] as String,
      deviceTypeZeroclient: map['deviceTypeZeroclient'] as String,
    );
  }
}

