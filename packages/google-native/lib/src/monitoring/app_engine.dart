// ignore_for_file: unused_element, unnecessary_cast

/// App Engine service. Learn more at https://cloud.google.com/appengine.
class AppEngine {
  /// The ID of the App Engine module underlying this service. Corresponds to the module_id resource label in the gae_app monitored resource (https://cloud.google.com/monitoring/api/resources#tag_gae_app).
  final String? moduleId;

  /// Creates a new [AppEngine].
  /// [moduleId] The ID of the App Engine module underlying this service. Corresponds to the module_id resource label in the gae_app monitored resource (https://cloud.google.com/monitoring/api/resources#tag_gae_app).
  AppEngine({this.moduleId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'moduleId': ?moduleId};
  }

  factory AppEngine.fromMap(Map<String, dynamic> map) {
    return AppEngine(
      moduleId: map['moduleId'] == null ? null : map['moduleId'] as String,
    );
  }
}
