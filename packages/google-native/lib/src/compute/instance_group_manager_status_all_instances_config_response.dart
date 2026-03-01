// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerStatusAllInstancesConfigResponse {
  /// Current all-instances configuration revision. This value is in RFC3339 text format.
  final String currentRevision;

  /// A bit indicating whether this configuration has been applied to all managed instances in the group.
  final bool effective;

  /// Creates a new [InstanceGroupManagerStatusAllInstancesConfigResponse].
  /// [currentRevision] Current all-instances configuration revision. This value is in RFC3339 text format.
  /// [effective] A bit indicating whether this configuration has been applied to all managed instances in the group.
  InstanceGroupManagerStatusAllInstancesConfigResponse({
    required this.currentRevision,
    required this.effective,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentRevision': currentRevision,
      'effective': effective,
    };
  }

  factory InstanceGroupManagerStatusAllInstancesConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceGroupManagerStatusAllInstancesConfigResponse(
      currentRevision: map['currentRevision'] as String,
      effective: map['effective'] as bool,
    );
  }
}
