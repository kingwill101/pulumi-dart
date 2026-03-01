// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_get_streaming_job_args_doc}
/// Arguments for getStreamingJob.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_get_streaming_job_args_doc}
class GetStreamingJobArgs {
  /// The $expand OData query parameter. This is a comma-separated list of additional streaming job properties to include in the response, beyond the default set returned when this parameter is absent. The default set is all streaming job properties other than 'inputs', 'transformation', 'outputs', and 'functions'.
  final pulumi.Input<String>? expand;
  /// The name of the streaming job.
  final pulumi.Input<String> jobName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetStreamingJobArgs].
  /// [expand] The $expand OData query parameter. This is a comma-separated list of additional streaming job properties to include in the response, beyond the default set returned when this parameter is absent. The default set is all streaming job properties other than 'inputs', 'transformation', 'outputs', and 'functions'.
  /// [jobName] The name of the streaming job.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetStreamingJobArgs({
    String? expand,
    required String jobName,
    required String resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      jobName = pulumi.Input.asInput<String>(jobName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'jobName': jobName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetStreamingJobArgs.fromMap(Map<String, dynamic> map) {
    return GetStreamingJobArgs(
      expand: map['expand'] == null ? null : map['expand'] as String,
      jobName: map['jobName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

