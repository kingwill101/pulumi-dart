// ignore_for_file: unused_element, unnecessary_cast

/// A container to reference an id for any resource type. A `resource` in Google Cloud Platform is a generic term for something you (a developer) may want to interact with through one of our API's. Some examples are an App Engine app, a Compute Engine instance, a Cloud SQL database, and so on.
class ResourceIdResponse2 {
  /// Required field representing the resource type this id is for. At present, the valid types are "project", "folder", and "organization".
  final String type;

  ResourceIdResponse2({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory ResourceIdResponse2.fromMap(Map<String, dynamic> map) {
    return ResourceIdResponse2(
      type: map['type'] as String,
    );
  }
}
