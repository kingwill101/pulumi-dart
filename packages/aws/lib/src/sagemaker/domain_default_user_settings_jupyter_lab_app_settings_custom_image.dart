// ignore_for_file: unused_element, unnecessary_cast


class DomainDefaultUserSettingsJupyterLabAppSettingsCustomImage {
  /// The name of the App Image Config.
  final String appImageConfigName;
  /// The name of the Custom Image.
  final String imageName;
  /// The version number of the Custom Image.
  final int? imageVersionNumber;

  /// Creates a new [DomainDefaultUserSettingsJupyterLabAppSettingsCustomImage].
  /// [appImageConfigName] The name of the App Image Config.
  /// [imageName] The name of the Custom Image.
  /// [imageVersionNumber] The version number of the Custom Image.
  DomainDefaultUserSettingsJupyterLabAppSettingsCustomImage({
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

  factory DomainDefaultUserSettingsJupyterLabAppSettingsCustomImage.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsJupyterLabAppSettingsCustomImage(
      appImageConfigName: map['appImageConfigName'] as String,
      imageName: map['imageName'] as String,
      imageVersionNumber: map['imageVersionNumber'] == null ? null : map['imageVersionNumber'] as int,
    );
  }
}

