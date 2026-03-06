// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_details.dart';

/// {@template pulumi_importexport_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_importexport_job_args_doc}
class JobArgs {
  /// The name of the import/export job.
  final pulumi.Input<String>? jobName;
  /// Specifies the supported Azure location where the job should be created
  final pulumi.Input<String>? location;
  /// Specifies the job properties
  final pulumi.Input<JobDetails>? properties;
  /// The resource group name uniquely identifies the resource group within the user subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the tags that will be assigned to the job.
  final pulumi.Input<dynamic>? tags;

  /// Creates a new [JobArgs].
  /// [jobName] The name of the import/export job.
  /// [location] Specifies the supported Azure location where the job should be created
  /// [properties] Specifies the job properties
  /// [resourceGroupName] The resource group name uniquely identifies the resource group within the user subscription.
  /// [tags] Specifies the tags that will be assigned to the job.
  const JobArgs({
    this.jobName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobName': ?jobName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<JobDetails, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      jobName: (() { final guardedValue = map['jobName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

