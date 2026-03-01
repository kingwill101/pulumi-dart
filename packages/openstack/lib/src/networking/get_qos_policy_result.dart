// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQosPolicy.
class GetQosPolicyResult {
  /// The set of string tags applied on the QoS policy.
  final List<String> allTags;
  /// The time at which QoS policy was created.
  final String createdAt;
  /// See Argument Reference above.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// See Argument Reference above.
  final bool isDefault;
  /// See Argument Reference above.
  final String name;
  final String projectId;
  /// See Argument Reference above.
  final String region;
  /// The revision number of the QoS policy.
  final int revisionNumber;
  /// See Argument Reference above.
  final bool shared;
  final List<String>? tags;
  /// The time at which QoS policy was created.
  final String updatedAt;

  /// Creates a new [GetQosPolicyResult].
  /// [allTags] The set of string tags applied on the QoS policy.
  /// [createdAt] The time at which QoS policy was created.
  /// [description] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isDefault] See Argument Reference above.
  /// [name] See Argument Reference above.
  /// [projectId] Required.
  /// [region] See Argument Reference above.
  /// [revisionNumber] The revision number of the QoS policy.
  /// [shared] See Argument Reference above.
  /// [tags] Optional.
  /// [updatedAt] The time at which QoS policy was created.
  GetQosPolicyResult({
    required this.allTags,
    required this.createdAt,
    required this.description,
    required this.id,
    required this.isDefault,
    required this.name,
    required this.projectId,
    required this.region,
    required this.revisionNumber,
    required this.shared,
    this.tags,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allTags': allTags,
      'createdAt': createdAt,
      'description': description,
      'id': id,
      'isDefault': isDefault,
      'name': name,
      'projectId': projectId,
      'region': region,
      'revisionNumber': revisionNumber,
      'shared': shared,
      'tags': ?tags,
      'updatedAt': updatedAt,
    };
  }

  factory GetQosPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetQosPolicyResult(
      allTags: (map['allTags'] as List).cast<String>(),
      createdAt: map['createdAt'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      isDefault: map['isDefault'] as bool,
      name: map['name'] as String,
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      revisionNumber: map['revisionNumber'] as int,
      shared: map['shared'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      updatedAt: map['updatedAt'] as String,
    );
  }
}

