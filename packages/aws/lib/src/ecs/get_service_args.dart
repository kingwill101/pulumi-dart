// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_service_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_service_get_service_args_doc}
class GetServiceArgs {
  /// ARN of the ECS Cluster
  final pulumi.Input<String> clusterArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name of the ECS Service
  final pulumi.Input<String> serviceName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetServiceArgs].
  /// [clusterArn] ARN of the ECS Cluster
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceName] Name of the ECS Service
  /// [tags] Resource tags.
  GetServiceArgs({
    required String clusterArn,
    String? region,
    required String serviceName,
    Map<String, String>? tags,
  }) : clusterArn = pulumi.Input.asInput<String>(clusterArn),
       region = pulumi.Input.asOptionalInput<String>(region),
       serviceName = pulumi.Input.asInput<String>(serviceName),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': clusterArn,
      'region': ?region,
      'serviceName': serviceName,
      'tags': ?tags,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      clusterArn: map['clusterArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serviceName: map['serviceName'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
