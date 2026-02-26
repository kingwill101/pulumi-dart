// ignore_for_file: unused_element, unnecessary_cast

/// App Engine service. Learn more at https://cloud.google.com/appengine.
class AppEngineResponse {
  /// The ID of the App Engine module underlying this service. Corresponds to the module_id resource label in the gae_app monitored resource (https://cloud.google.com/monitoring/api/resources#tag_gae_app).
  final String moduleId;

  AppEngineResponse({
    required this.moduleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['moduleId'] = moduleId;
    return map;
  }

  factory AppEngineResponse.fromMap(Map<String, dynamic> map) {
    return AppEngineResponse(
      moduleId: map['moduleId'] as String,
    );
  }
}
