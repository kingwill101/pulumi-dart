// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getProject.
class GetProjectCloudresourcemanagerV3Result {
  /// Creation time.
  final String createTime;

  /// The time at which this resource was requested for deletion.
  final String deleteTime;

  /// Optional. A user-assigned display name of the project. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `My Project`
  final String displayName;

  /// A checksum computed by the server based on the current value of the Project resource. This may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String etag;

  /// Optional. The labels associated with this project. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: \[a-z\](\[-a-z0-9\]*\[a-z0-9\])?. Label values must be between 0 and 63 characters long and must conform to the regular expression (\[a-z\](\[-a-z0-9\]*\[a-z0-9\])?)?. No more than 64 labels can be associated with a given resource. Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed. Example: `"myBusinessDimension" : "businessValue"`
  final Map<String, String> labels;

  /// The unique resource name of the project. It is an int64 generated number prefixed by "projects/". Example: `projects/415104041262`
  final String name;

  /// Optional. A reference to a parent Resource. eg., `organizations/123` or `folders/876`.
  final String parent;

  /// Immutable. The unique, user-assigned id of the project. It must be 6 to 30 lowercase ASCII letters, digits, or hyphens. It must start with a letter. Trailing hyphens are prohibited. Example: `tokyo-rain-123`
  final String projectId;

  /// The project lifecycle state.
  final String state;

  /// The most recent time this resource was modified.
  final String updateTime;

  GetProjectCloudresourcemanagerV3Result({
    required this.createTime,
    required this.deleteTime,
    required this.displayName,
    required this.etag,
    required this.labels,
    required this.name,
    required this.parent,
    required this.projectId,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['deleteTime'] = deleteTime;
    map['displayName'] = displayName;
    map['etag'] = etag;
    map['labels'] = labels;
    map['name'] = name;
    map['parent'] = parent;
    map['projectId'] = projectId;
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetProjectCloudresourcemanagerV3Result.fromMap(
      Map<String, dynamic> map) {
    return GetProjectCloudresourcemanagerV3Result(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      parent: map['parent'] as String,
      projectId: map['projectId'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
