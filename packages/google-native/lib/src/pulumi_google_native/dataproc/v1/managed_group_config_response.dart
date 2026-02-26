// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the resources used to actively manage an instance group.
class ManagedGroupConfigResponse {
  /// The name of the Instance Group Manager for this group.
  final String instanceGroupManagerName;

  /// The partial URI to the instance group manager for this group. E.g. projects/my-project/regions/us-central1/instanceGroupManagers/my-igm.
  final String instanceGroupManagerUri;

  /// The name of the Instance Template used for the Managed Instance Group.
  final String instanceTemplateName;

  ManagedGroupConfigResponse({
    required this.instanceGroupManagerName,
    required this.instanceGroupManagerUri,
    required this.instanceTemplateName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceGroupManagerName'] = instanceGroupManagerName;
    map['instanceGroupManagerUri'] = instanceGroupManagerUri;
    map['instanceTemplateName'] = instanceTemplateName;
    return map;
  }

  factory ManagedGroupConfigResponse.fromMap(Map<String, dynamic> map) {
    return ManagedGroupConfigResponse(
      instanceGroupManagerName: map['instanceGroupManagerName'] as String,
      instanceGroupManagerUri: map['instanceGroupManagerUri'] as String,
      instanceTemplateName: map['instanceTemplateName'] as String,
    );
  }
}
