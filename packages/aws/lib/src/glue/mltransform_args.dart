// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mltransform_input_record_table.dart';
import 'mltransform_parameters.dart';

/// {@template pulumi_glue_m_ltransform_mltransform_args_doc}
/// The set of arguments for MLTransform.
/// {@endtemplate}
/// {@macro pulumi_glue_m_ltransform_mltransform_args_doc}
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

  /// Creates a new [MLTransformArgs].
  /// [description] Description of the ML Transform.
  /// [glueVersion] The version of glue to use, for example "1.0". For information about available versions, see the [AWS Glue Release Notes](https://docs.aws.amazon.com/glue/latest/dg/release-notes.html).
  /// [inputRecordTables] A list of AWS Glue table definitions used by the transform. see Input Record Tables.
  /// [maxCapacity] The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from `2` to `100` DPUs; the default is `10`. `max_capacity` is a mutually exclusive option with `number_of_workers` and `worker_type`.
  /// [maxRetries] The maximum number of times to retry this ML Transform if it fails.
  /// [name] The name you assign to this ML Transform. It must be unique in your account.
  /// [numberOfWorkers] The number of workers of a defined `worker_type` that are allocated when an ML Transform runs. Required with `worker_type`.
  /// [parameters] The algorithmic parameters that are specific to the transform type used. Conditionally dependent on the transform type. see Parameters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The ARN of the IAM role associated with this ML Transform.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeout] The ML Transform timeout in minutes. The default is 2880 minutes (48 hours).
  /// [workerType] The type of predefined worker that is allocated when an ML Transform runs. Accepts a value of `Standard`, `G.1X`, or `G.2X`. Required with `number_of_workers`.
  MLTransformArgs({
    String? description,
    String? glueVersion,
    required List<MLTransformInputRecordTable> inputRecordTables,
    double? maxCapacity,
    int? maxRetries,
    String? name,
    int? numberOfWorkers,
    required MLTransformParameters parameters,
    String? region,
    required String roleArn,
    Map<String, String>? tags,
    int? timeout,
    String? workerType,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       glueVersion = pulumi.Input.asOptionalInput<String>(glueVersion),
       inputRecordTables = pulumi
           .Input.asInput<List<MLTransformInputRecordTable>>(inputRecordTables),
       maxCapacity = pulumi.Input.asOptionalInput<double>(maxCapacity),
       maxRetries = pulumi.Input.asOptionalInput<int>(maxRetries),
       name = pulumi.Input.asOptionalInput<String>(name),
       numberOfWorkers = pulumi.Input.asOptionalInput<int>(numberOfWorkers),
       parameters = pulumi.Input.asInput<MLTransformParameters>(parameters),
       region = pulumi.Input.asOptionalInput<String>(region),
       roleArn = pulumi.Input.asInput<String>(roleArn),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       timeout = pulumi.Input.asOptionalInput<int>(timeout),
       workerType = pulumi.Input.asOptionalInput<String>(workerType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'glueVersion': ?glueVersion,
      'inputRecordTables':
          pulumi.Input.mapInputValue<
            List<MLTransformInputRecordTable>,
            List<Map<String, dynamic>>
          >(
            inputRecordTables,
            (value) =>
                pulumi.Input.encodeList<
                  MLTransformInputRecordTable,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'maxCapacity': ?maxCapacity,
      'maxRetries': ?maxRetries,
      'name': ?name,
      'numberOfWorkers': ?numberOfWorkers,
      'parameters':
          pulumi.Input.mapInputValue<
            MLTransformParameters,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
      'region': ?region,
      'roleArn': roleArn,
      'tags': ?tags,
      'timeout': ?timeout,
      'workerType': ?workerType,
    };
  }

  factory MLTransformArgs.fromMap(Map<String, dynamic> map) {
    return MLTransformArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      glueVersion: map['glueVersion'] == null
          ? null
          : map['glueVersion'] as String,
      inputRecordTables: pulumi.Input.decodeList<MLTransformInputRecordTable>(
        map['inputRecordTables'],
        (value) => MLTransformInputRecordTable.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      maxCapacity: map['maxCapacity'] == null
          ? null
          : map['maxCapacity'] as double,
      maxRetries: map['maxRetries'] == null ? null : map['maxRetries'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      numberOfWorkers: map['numberOfWorkers'] == null
          ? null
          : map['numberOfWorkers'] as int,
      parameters: MLTransformParameters.fromMap(
        (map['parameters'] as Map).cast<String, dynamic>(),
      ),
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      workerType: map['workerType'] == null
          ? null
          : map['workerType'] as String,
    );
  }
}
