// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAccessEntry.
class GetAccessEntryResult {
  /// Amazon Resource Name (ARN) of the Access Entry.
  final String accessEntryArn;
  final String clusterName;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was created.
  final String createdAt;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of string which can optionally specify the Kubernetes groups the user would belong to when creating an access entry.
  final List<String> kubernetesGroups;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was updated.
  final String modifiedAt;
  final String principalArn;
  final String region;
  final Map<String, String>? tags;

  /// (Optional) Key-value map of resource tags, including those inherited from the provider `default_tags` configuration block.
  final Map<String, String> tagsAll;

  /// Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or groups, and prevent associations.
  final String type;

  /// Defaults to principal ARN if user is principal else defaults to assume-role/session-name is role is used.
  final String userName;

  /// Creates a new [GetAccessEntryResult].
  /// [accessEntryArn] Amazon Resource Name (ARN) of the Access Entry.
  /// [clusterName] Required.
  /// [createdAt] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kubernetesGroups] List of string which can optionally specify the Kubernetes groups the user would belong to when creating an access entry.
  /// [modifiedAt] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was updated.
  /// [principalArn] Required.
  /// [region] Required.
  /// [tags] Optional.
  /// [tagsAll] (Optional) Key-value map of resource tags, including those inherited from the provider `default_tags` configuration block.
  /// [type] Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or groups, and prevent associations.
  /// [userName] Defaults to principal ARN if user is principal else defaults to assume-role/session-name is role is used.
  GetAccessEntryResult({
    required this.accessEntryArn,
    required this.clusterName,
    required this.createdAt,
    required this.id,
    required this.kubernetesGroups,
    required this.modifiedAt,
    required this.principalArn,
    required this.region,
    this.tags,
    required this.tagsAll,
    required this.type,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessEntryArn'] = accessEntryArn;
    map['clusterName'] = clusterName;
    map['createdAt'] = createdAt;
    map['id'] = id;
    map['kubernetesGroups'] = kubernetesGroups;
    map['modifiedAt'] = modifiedAt;
    map['principalArn'] = principalArn;
    map['region'] = region;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['tagsAll'] = tagsAll;
    map['type'] = type;
    map['userName'] = userName;
    return map;
  }

  factory GetAccessEntryResult.fromMap(Map<String, dynamic> map) {
    return GetAccessEntryResult(
      accessEntryArn: map['accessEntryArn'] as String,
      clusterName: map['clusterName'] as String,
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      kubernetesGroups: (map['kubernetesGroups'] as List).cast<String>(),
      modifiedAt: map['modifiedAt'] as String,
      principalArn: map['principalArn'] as String,
      region: map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      tagsAll: (map['tagsAll'] as Map).cast<String, String>(),
      type: map['type'] as String,
      userName: map['userName'] as String,
    );
  }
}
