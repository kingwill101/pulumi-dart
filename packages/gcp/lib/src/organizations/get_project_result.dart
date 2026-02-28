// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getProject.
class GetProjectResult {
  final bool autoCreateNetwork;
  final String billingAccount;
  final String deletionPolicy;
  final Map<String, String> effectiveLabels;
  final String folderId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String name;

  /// The numeric identifier of the project.
  final String number;
  final String orgId;
  final String? projectId;
  final Map<String, String> pulumiLabels;
  final Map<String, String> tags;

  /// Creates a new [GetProjectResult].
  /// [autoCreateNetwork] Required.
  /// [billingAccount] Required.
  /// [deletionPolicy] Required.
  /// [effectiveLabels] Required.
  /// [folderId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [name] Required.
  /// [number] The numeric identifier of the project.
  /// [orgId] Required.
  /// [projectId] Optional.
  /// [pulumiLabels] Required.
  /// [tags] Required.
  GetProjectResult({
    required this.autoCreateNetwork,
    required this.billingAccount,
    required this.deletionPolicy,
    required this.effectiveLabels,
    required this.folderId,
    required this.id,
    required this.labels,
    required this.name,
    required this.number,
    required this.orgId,
    this.projectId,
    required this.pulumiLabels,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoCreateNetwork'] = autoCreateNetwork;
    map['billingAccount'] = billingAccount;
    map['deletionPolicy'] = deletionPolicy;
    map['effectiveLabels'] = effectiveLabels;
    map['folderId'] = folderId;
    map['id'] = id;
    map['labels'] = labels;
    map['name'] = name;
    map['number'] = number;
    map['orgId'] = orgId;
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['tags'] = tags;
    return map;
  }

  factory GetProjectResult.fromMap(Map<String, dynamic> map) {
    return GetProjectResult(
      autoCreateNetwork: map['autoCreateNetwork'] as bool,
      billingAccount: map['billingAccount'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      folderId: map['folderId'] as String,
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      number: map['number'] as String,
      orgId: map['orgId'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
