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
    final map = <String, dynamic>{};
    map['deviceTypeAndroid'] = deviceTypeAndroid;
    map['deviceTypeChromeos'] = deviceTypeChromeos;
    map['deviceTypeIos'] = deviceTypeIos;
    map['deviceTypeLinux'] = deviceTypeLinux;
    map['deviceTypeOsx'] = deviceTypeOsx;
    map['deviceTypeWeb'] = deviceTypeWeb;
    map['deviceTypeWindows'] = deviceTypeWindows;
    map['deviceTypeZeroclient'] = deviceTypeZeroclient;
    return map;
  }

  factory GetDirectoryWorkspaceAccessProperty.fromMap(
      Map<String, dynamic> map) {
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
