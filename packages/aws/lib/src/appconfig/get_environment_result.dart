// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_monitor.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentResult {
  final String applicationId;
  /// ARN of the environment.
  final String arn;
  /// Name of the environment.
  final String description;
  final String environmentId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Set of Amazon CloudWatch alarms to monitor during the deployment process.
  final List<GetEnvironmentMonitor> monitors;
  /// Name of the environment.
  final String name;
  final String region;
  /// State of the environment. Possible values are `READY_FOR_DEPLOYMENT`, `DEPLOYING`, `ROLLING_BACK`
  /// or `ROLLED_BACK`.
  final String state;
  /// Map of tags for the resource.
  final Map<String, String> tags;

  /// Creates a new [GetEnvironmentResult].
  /// [applicationId] Required.
  /// [arn] ARN of the environment.
  /// [description] Name of the environment.
  /// [environmentId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [monitors] Set of Amazon CloudWatch alarms to monitor during the deployment process.
  /// [name] Name of the environment.
  /// [region] Required.
  /// [state] State of the environment. Possible values are `READY_FOR_DEPLOYMENT`, `DEPLOYING`, `ROLLING_BACK`
  /// [tags] Map of tags for the resource.
  GetEnvironmentResult({
    required this.applicationId,
    required this.arn,
    required this.description,
    required this.environmentId,
    required this.id,
    required this.monitors,
    required this.name,
    required this.region,
    required this.state,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'arn': arn,
      'description': description,
      'environmentId': environmentId,
      'id': id,
      'monitors': pulumi.Input.encodeList<GetEnvironmentMonitor, Map<String, dynamic>>(monitors, (value) => value.toMap()),
      'name': name,
      'region': region,
      'state': state,
      'tags': tags,
    };
  }

  factory GetEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult(
      applicationId: map['applicationId'] as String,
      arn: map['arn'] as String,
      description: map['description'] as String,
      environmentId: map['environmentId'] as String,
      id: map['id'] as String,
      monitors: pulumi.Input.decodeList<GetEnvironmentMonitor>(map['monitors'], (value) => GetEnvironmentMonitor.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      region: map['region'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

