// ignore_for_file: unused_element, unnecessary_cast

/// App Engine service. Learn more at https://cloud.google.com/appengine.
class AppEngine {
  /// The ID of the App Engine module underlying this service. Corresponds to the module_id resource label in the gae_app monitored resource (https://cloud.google.com/monitoring/api/resources#tag_gae_app).
  final String? moduleId;

  AppEngine({
    this.moduleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final moduleIdValue = moduleId;
    if (moduleIdValue != null) {
      map['moduleId'] = moduleIdValue;
    }
    return map;
  }

  factory AppEngine.fromMap(Map<String, dynamic> map) {
    return AppEngine(
      moduleId: map['moduleId'] == null ? null : map['moduleId'] as String,
    );
  }
}
