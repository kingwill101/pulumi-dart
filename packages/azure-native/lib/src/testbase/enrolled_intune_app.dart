// ignore_for_file: unused_element, unnecessary_cast


/// Metadata of the enrolled Intune app.
class EnrolledIntuneApp {
  /// Intune app id.
  final String appId;
  /// Intune app name.
  final String appName;
  /// Intune app expected installation path.
  final String expectedInstallationPath;

  /// Creates a new [EnrolledIntuneApp].
  /// [appId] Intune app id.
  /// [appName] Intune app name.
  /// [expectedInstallationPath] Intune app expected installation path.
  EnrolledIntuneApp({
    required this.appId,
    required this.appName,
    required this.expectedInstallationPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appName': appName,
      'expectedInstallationPath': expectedInstallationPath,
    };
  }

  factory EnrolledIntuneApp.fromMap(Map<String, dynamic> map) {
    return EnrolledIntuneApp(
      appId: map['appId'] as String,
      appName: map['appName'] as String,
      expectedInstallationPath: map['expectedInstallationPath'] as String,
    );
  }
}

