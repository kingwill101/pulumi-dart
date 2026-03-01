// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_resource_properties.dart';

/// {@template pulumi_appplatform_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_appplatform_job_args_doc}
class JobArgs {
  /// The name of the Job resource.
  final pulumi.Input<String>? jobName;
  /// Properties of the Job resource
  final pulumi.Input<JobResourceProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [JobArgs].
  /// [jobName] The name of the Job resource.
  /// [properties] Properties of the Job resource
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  JobArgs({
    String? jobName,
    JobResourceProperties? properties,
    required String resourceGroupName,
    required String serviceName,
  }) :
      jobName = pulumi.Input.asOptionalInput<String>(jobName),
      properties = pulumi.Input.asOptionalInput<JobResourceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobName': ?jobName,
      'properties': ?pulumi.Input.mapOptionalInputValue<JobResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      jobName: map['jobName'] == null ? null : map['jobName'] as String,
      properties: map['properties'] == null ? null : JobResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

