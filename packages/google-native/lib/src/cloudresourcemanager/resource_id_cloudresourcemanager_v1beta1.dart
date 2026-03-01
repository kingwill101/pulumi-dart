// ignore_for_file: unused_element, unnecessary_cast

/// A container to reference an id for any resource type. A `resource` in Google Cloud Platform is a generic term for something you (a developer) may want to interact with through one of our API's. Some examples are an App Engine app, a Compute Engine instance, a Cloud SQL database, and so on.
class ResourceIdCloudresourcemanagerV1beta1 {
  /// Required field for the type-specific id. This should correspond to the id used in the type-specific API's.
  final String? id;

  /// Required field representing the resource type this id is for. At present, the valid types are "project", "folder", and "organization".
  final String? type;

  /// Creates a new [ResourceIdCloudresourcemanagerV1beta1].
  /// [id] Required field for the type-specific id. This should correspond to the id used in the type-specific API's.
  /// [type] Required field representing the resource type this id is for. At present, the valid types are "project", "folder", and "organization".
  ResourceIdCloudresourcemanagerV1beta1({this.id, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id, 'type': ?type};
  }

  factory ResourceIdCloudresourcemanagerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceIdCloudresourcemanagerV1beta1(
      id: map['id'] == null ? null : map['id'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
