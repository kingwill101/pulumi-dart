// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../mltransform_input_record_table/mltransform_input_record_table.dart';
import '../mltransform_parameters/mltransform_parameters.dart';

/// The set of arguments for MLTransform.
class MLTransformArgs {
  /// Description of the ML Transform.
  final pulumi.Input<String>? description;

  /// The version of glue to use, for example "1.0". For information about available versions, see the [AWS Glue Release Notes](https://docs.aws.amazon.com/glue/latest/dg/release-notes.html).
  final pulumi.Input<String>? glueVersion;

  /// A list of AWS Glue table definitions used by the transform. see Input Record Tables.
  final pulumi.Input<List<MLTransformInputRecordTable>> inputRecordTables;

  /// The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from `2` to `100` DPUs; the default is `10`. `max_capacity` is a mutually exclusive option with `number_of_workers` and `worker_type`.
  final pulumi.Input<double>? maxCapacity;

  /// The maximum number of times to retry this ML Transform if it fails.
  final pulumi.Input<int>? maxRetries;

  /// The name you assign to this ML Transform. It must be unique in your account.
  final pulumi.Input<String>? name;

  /// The number of workers of a defined `worker_type` that are allocated when an ML Transform runs. Required with `worker_type`.
  final pulumi.Input<int>? numberOfWorkers;

  /// The algorithmic parameters that are specific to the transform type used. Conditionally dependent on the transform type. see Parameters.
  final pulumi.Input<MLTransformParameters> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ARN of the IAM role associated with this ML Transform.
  final pulumi.Input<String> roleArn;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ML Transform timeout in minutes. The default is 2880 minutes (48 hours).
  final pulumi.Input<int>? timeout;

  /// The type of predefined worker that is allocated when an ML Transform runs. Accepts a value of `Standard`, `G.1X`, or `G.2X`. Required with `number_of_workers`.
  final pulumi.Input<String>? workerType;

  MLTransformArgs({
    this.description,
    this.glueVersion,
    required this.inputRecordTables,
    this.maxCapacity,
    this.maxRetries,
    this.name,
    this.numberOfWorkers,
    required this.parameters,
    this.region,
    required this.roleArn,
    this.tags,
    this.timeout,
    this.workerType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final glueVersionValue = glueVersion;
    if (glueVersionValue != null) {
      map['glueVersion'] = glueVersionValue;
    }
    map['inputRecordTables'] = pulumi.Input.mapInputValue<
            List<MLTransformInputRecordTable>, List<Map<String, dynamic>>>(
        inputRecordTables,
        (value) => pulumi.Input.encodeList<MLTransformInputRecordTable,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final maxCapacityValue = maxCapacity;
    if (maxCapacityValue != null) {
      map['maxCapacity'] = maxCapacityValue;
    }
    final maxRetriesValue = maxRetries;
    if (maxRetriesValue != null) {
      map['maxRetries'] = maxRetriesValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final numberOfWorkersValue = numberOfWorkers;
    if (numberOfWorkersValue != null) {
      map['numberOfWorkers'] = numberOfWorkersValue;
    }
    map['parameters'] =
        pulumi.Input.mapInputValue<MLTransformParameters, Map<String, dynamic>>(
            parameters, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    final workerTypeValue = workerType;
    if (workerTypeValue != null) {
      map['workerType'] = workerTypeValue;
    }
    return map;
  }

  factory MLTransformArgs.fromMap(Map<String, dynamic> map) {
    return MLTransformArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      glueVersion: pulumi.Input.asOptionalInput<String>(map['glueVersion']),
      inputRecordTables:
          pulumi.Input.asInput<List<MLTransformInputRecordTable>>(
              map['inputRecordTables']),
      maxCapacity: pulumi.Input.asOptionalInput<double>(map['maxCapacity']),
      maxRetries: pulumi.Input.asOptionalInput<int>(map['maxRetries']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      numberOfWorkers:
          pulumi.Input.asOptionalInput<int>(map['numberOfWorkers']),
      parameters:
          pulumi.Input.asInput<MLTransformParameters>(map['parameters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeout: pulumi.Input.asOptionalInput<int>(map['timeout']),
      workerType: pulumi.Input.asOptionalInput<String>(map['workerType']),
    );
  }
}
