// ignore_for_file: unused_element, unnecessary_cast


/// App service native settings.
class AppSvcNativeSettings {
  /// Gets or sets the isolation required.
  final bool isolationRequired;

  /// Creates a new [AppSvcNativeSettings].
  /// [isolationRequired] Gets or sets the isolation required.
  AppSvcNativeSettings({
    required this.isolationRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isolationRequired': isolationRequired,
    };
  }

  factory AppSvcNativeSettings.fromMap(Map<String, dynamic> map) {
    return AppSvcNativeSettings(
      isolationRequired: map['isolationRequired'] as bool,
    );
  }
}

