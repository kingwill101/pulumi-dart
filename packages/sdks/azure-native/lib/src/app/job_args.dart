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
      'configuration':
          ?pulumi.Input.mapOptionalInputValue<
            JobConfiguration,
            Map<String, dynamic>
          >(configuration, (value) => value.toMap()),
      'environmentId': ?environmentId,
      'extendedLocation':
          ?pulumi.Input.mapOptionalInputValue<
            ExtendedLocation,
            Map<String, dynamic>
          >(extendedLocation, (value) => value.toMap()),
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'jobName': ?jobName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'template':
          ?pulumi.Input.mapOptionalInputValue<
            JobTemplate,
            Map<String, dynamic>
          >(template, (value) => value.toMap()),
      'workloadProfileName': ?workloadProfileName,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      configuration: (() {
        final guardedValue = map['configuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      environmentId: (() {
        final guardedValue = map['environmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      extendedLocation: (() {
        final guardedValue = map['extendedLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExtendedLocation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedServiceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      jobName: (() {
        final guardedValue = map['jobName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      template: (() {
        final guardedValue = map['template'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      workloadProfileName: (() {
        final guardedValue = map['workloadProfileName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
