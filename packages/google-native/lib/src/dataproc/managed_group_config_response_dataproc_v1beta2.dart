// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the resources used to actively manage an instance group.
class ManagedGroupConfigResponseDataprocV1beta2 {
  /// The name of the Instance Group Manager for this group.
  final String instanceGroupManagerName;

  /// The name of the Instance Template used for the Managed Instance Group.
  final String instanceTemplateName;

  /// Creates a new [ManagedGroupConfigResponseDataprocV1beta2].
  /// [instanceGroupManagerName] The name of the Instance Group Manager for this group.
  /// [instanceTemplateName] The name of the Instance Template used for the Managed Instance Group.
  ManagedGroupConfigResponseDataprocV1beta2({
    required this.instanceGroupManagerName,
    required this.instanceTemplateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceGroupManagerName': instanceGroupManagerName,
      'instanceTemplateName': instanceTemplateName,
    };
  }

  factory ManagedGroupConfigResponseDataprocV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedGroupConfigResponseDataprocV1beta2(
      instanceGroupManagerName: map['instanceGroupManagerName'] as String,
      instanceTemplateName: map['instanceTemplateName'] as String,
    );
  }
}
