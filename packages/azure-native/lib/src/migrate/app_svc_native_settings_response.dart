// ignore_for_file: unused_element, unnecessary_cast


/// App service native settings.
class AppSvcNativeSettingsResponse {
  /// Gets or sets the isolation required.
  final bool isolationRequired;

  /// Creates a new [AppSvcNativeSettingsResponse].
  /// [isolationRequired] Gets or sets the isolation required.
  AppSvcNativeSettingsResponse({
    required this.isolationRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isolationRequired': isolationRequired,
    };
  }

  factory AppSvcNativeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AppSvcNativeSettingsResponse(
      isolationRequired: map['isolationRequired'] as bool,
    );
  }
}

