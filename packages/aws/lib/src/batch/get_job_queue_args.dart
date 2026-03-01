// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_batch_get_job_queue_get_job_queue_args_doc}
/// Arguments for getJobQueue.
/// {@endtemplate}
/// {@macro pulumi_batch_get_job_queue_get_job_queue_args_doc}
class GetJobQueueArgs {
  /// Name of the job queue.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetJobQueueArgs].
  /// [name] Name of the job queue.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags
  GetJobQueueArgs({
    required String name,
    String? region,
    Map<String, String>? tags,
  }) : name = pulumi.Input.asInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'region': ?region, 'tags': ?tags};
  }

  factory GetJobQueueArgs.fromMap(Map<String, dynamic> map) {
    return GetJobQueueArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
