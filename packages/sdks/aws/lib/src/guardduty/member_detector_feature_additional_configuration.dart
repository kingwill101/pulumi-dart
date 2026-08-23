// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MemberDetectorFeatureAdditionalConfiguration {
  /// The name of the additional configuration. Valid values: `EKS_ADDON_MANAGEMENT`, `ECS_FARGATE_AGENT_MANAGEMENT`.
  final pulumi.Input<String> name;
  /// The status of the additional configuration. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> status;

  /// Creates a new [MemberDetectorFeatureAdditionalConfiguration].
  /// [name] The name of the additional configuration. Valid values: `EKS_ADDON_MANAGEMENT`, `ECS_FARGATE_AGENT_MANAGEMENT`.
  /// [status] The status of the additional configuration. Valid values: `ENABLED`, `DISABLED`.
  const MemberDetectorFeatureAdditionalConfiguration({
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'status': status,
    };
  }

  factory MemberDetectorFeatureAdditionalConfiguration.fromMap(Map<String, dynamic> map) {
    return MemberDetectorFeatureAdditionalConfiguration(
      name: pulumi.Input.fromValue(map['name'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
