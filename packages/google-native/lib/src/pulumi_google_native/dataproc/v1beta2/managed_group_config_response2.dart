// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the resources used to actively manage an instance group.
class ManagedGroupConfigResponse2 {
  /// The name of the Instance Group Manager for this group.
  final String instanceGroupManagerName;

  /// The name of the Instance Template used for the Managed Instance Group.
  final String instanceTemplateName;

  ManagedGroupConfigResponse2({
    required this.instanceGroupManagerName,
    required this.instanceTemplateName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceGroupManagerName'] = instanceGroupManagerName;
    map['instanceTemplateName'] = instanceTemplateName;
    return map;
  }

  factory ManagedGroupConfigResponse2.fromMap(Map<String, dynamic> map) {
    return ManagedGroupConfigResponse2(
      instanceGroupManagerName: map['instanceGroupManagerName'] as String,
      instanceTemplateName: map['instanceTemplateName'] as String,
    );
  }
}
