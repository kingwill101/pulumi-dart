// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_instances_instance.dart';

/// Result data returned by getDatabaseInstances.
class GetDatabaseInstancesResult {
  final String? databaseVersion;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetDatabaseInstancesInstance> instances;
  final String? project;
  final String? region;
  final String? state;
  final String? tier;
  final String? zone;

  /// Creates a new [GetDatabaseInstancesResult].
  /// [databaseVersion] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instances] Required.
  /// [project] Optional.
  /// [region] Optional.
  /// [state] Optional.
  /// [tier] Optional.
  /// [zone] Optional.
  GetDatabaseInstancesResult({
    this.databaseVersion,
    required this.id,
    required this.instances,
    this.project,
    this.region,
    this.state,
    this.tier,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseVersion': ?databaseVersion,
      'id': id,
      'instances':
          pulumi.Input.encodeList<
            GetDatabaseInstancesInstance,
            Map<String, dynamic>
          >(instances, (value) => value.toMap()),
      'project': ?project,
      'region': ?region,
      'state': ?state,
      'tier': ?tier,
      'zone': ?zone,
    };
  }

  factory GetDatabaseInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesResult(
      databaseVersion: map['databaseVersion'] == null
          ? null
          : map['databaseVersion'] as String,
      id: map['id'] as String,
      instances: pulumi.Input.decodeList<GetDatabaseInstancesInstance>(
        map['instances'],
        (value) => GetDatabaseInstancesInstance.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
