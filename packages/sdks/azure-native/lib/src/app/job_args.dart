// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'job_configuration.dart';
import 'job_template.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_app_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_app_job_args_doc}
class JobArgs {
  /// Container Apps Job configuration properties.
  final pulumi.Input<JobConfiguration>? configuration;
  /// Resource ID of environment.
  final pulumi.Input<String>? environmentId;
  /// The complex type of the extended location.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Managed identities needed by a container app job to interact with other Azure services to not maintain any secrets or credentials in code.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Job Name
  final pulumi.Input<String>? jobName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Container Apps job definition.
  final pulumi.Input<JobTemplate>? template;
  /// Workload profile name to pin for container apps job execution.
  final pulumi.Input<String>? workloadProfileName;

  /// Creates a new [JobArgs].
  /// [configuration] Container Apps Job configuration properties.
  /// [environmentId] Resource ID of environment.
  /// [extendedLocation] The complex type of the extended location.
  /// [identity] Managed identities needed by a container app job to interact with other Azure services to not maintain any secrets or credentials in code.
  /// [jobName] Job Name
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [template] Container Apps job definition.
  /// [workloadProfileName] Workload profile name to pin for container apps job execution.
  JobArgs({
    this.configuration,
    this.environmentId,
    this.extendedLocation,
    this.identity,
    this.jobName,
    this.location,
    required this.resourceGroupName,
    this.tags,
    this.template,
    this.workloadProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<JobConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'environmentId': ?environmentId,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'jobName': ?jobName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'template': ?pulumi.Input.mapOptionalInputValue<JobTemplate, Map<String, dynamic>>(template, (value) => value.toMap()),
      'workloadProfileName': ?workloadProfileName,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      configuration: map['configuration'] == null ? null : (JobConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())).input(),
      environmentId: map['environmentId'] == null ? null : (map['environmentId'] as String).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      jobName: map['jobName'] == null ? null : (map['jobName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      template: map['template'] == null ? null : (JobTemplate.fromMap((map['template'] as Map).cast<String, dynamic>())).input(),
      workloadProfileName: map['workloadProfileName'] == null ? null : (map['workloadProfileName'] as String).input(),
    );
  }
}

