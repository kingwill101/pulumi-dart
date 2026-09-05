// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_monitor.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentResult {
  final String? applicationId;
  /// ARN of the environment.
  final String? arn;
  /// Name of the environment.
  final String? description;
  final String? environmentId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of Amazon CloudWatch alarms to monitor during the deployment process.
  final List<GetEnvironmentMonitor>? monitors;
  /// Name of the environment.
  final String? name;
  final String? region;
  /// State of the environment. Possible values are `READY_FOR_DEPLOYMENT`, `DEPLOYING`, `ROLLING_BACK` or `ROLLED_BACK`.
  final String? state;
  /// Map of tags for the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetEnvironmentResult].
  /// [applicationId] Optional.
  /// [arn] ARN of the environment.
  /// [description] Name of the environment.
  /// [environmentId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [monitors] Set of Amazon CloudWatch alarms to monitor during the deployment process.
  /// [name] Name of the environment.
  /// [region] Optional.
  /// [state] State of the environment. Possible values are `READY_FOR_DEPLOYMENT`, `DEPLOYING`, `ROLLING_BACK` or `ROLLED_BACK`.
  /// [tags] Map of tags for the resource.
  const GetEnvironmentResult({
    this.applicationId,
    this.arn,
    this.description,
    this.environmentId,
    this.id,
    this.monitors,
    this.name,
    this.region,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'arn': ?arn,
      'description': ?description,
      'environmentId': ?environmentId,
      'id': ?id,
      'monitors': ?(() { final guardedValue = monitors; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEnvironmentMonitor, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory GetEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monitors: (() { final guardedValue = map['monitors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEnvironmentMonitor>(guardedValue, (value) => GetEnvironmentMonitor.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
