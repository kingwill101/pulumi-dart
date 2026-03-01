// ignore_for_file: unused_element, unnecessary_cast


/// App service container settings.
class AppSvcContainerSettingsResponse {
  /// Gets or sets the isolation required.
  final bool isolationRequired;

  /// Creates a new [AppSvcContainerSettingsResponse].
  /// [isolationRequired] Gets or sets the isolation required.
  AppSvcContainerSettingsResponse({
    required this.isolationRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isolationRequired': isolationRequired,
    };
  }

  factory AppSvcContainerSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AppSvcContainerSettingsResponse(
      isolationRequired: map['isolationRequired'] as bool,
    );
  }
}

