// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mltransform_input_record_table.dart';
import 'mltransform_parameters.dart';
import 'mltransform_schema.dart';

/// Input properties used for looking up and filtering MLTransform resources.
class MLTransformState {
  /// Amazon Resource Name (ARN) of Glue ML Transform.
  final pulumi.Input<String>? arn;
  /// Description of the ML Transform.
  final pulumi.Input<String>? description;
  /// The version of glue to use, for example "1.0". For information about available versions, see the [AWS Glue Release Notes](https://docs.aws.amazon.com/glue/latest/dg/release-notes.html).
  final pulumi.Input<String>? glueVersion;
  /// A list of AWS Glue table definitions used by the transform. see Input Record Tables.
  final pulumi.Input<List<MLTransformInputRecordTable>>? inputRecordTables;
  /// The number of labels available for this transform.
  final pulumi.Input<int>? labelCount;
  /// The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from `2` to `100` DPUs; the default is `10`. `max_capacity` is a mutually exclusive option with `number_of_workers` and `worker_type`.
  final pulumi.Input<double>? maxCapacity;
  /// The maximum number of times to retry this ML Transform if it fails.
  final pulumi.Input<int>? maxRetries;
  /// The name you assign to this ML Transform. It must be unique in your account.
  final pulumi.Input<String>? name;
  /// The number of workers of a defined `worker_type` that are allocated when an ML Transform runs. Required with `worker_type`.
  final pulumi.Input<int>? numberOfWorkers;
  /// The algorithmic parameters that are specific to the transform type used. Conditionally dependent on the transform type. see Parameters.
  final pulumi.Input<MLTransformParameters>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the IAM role associated with this ML Transform.
  final pulumi.Input<String>? roleArn;
  /// The object that represents the schema that this transform accepts. see Schema.
  final pulumi.Input<List<MLTransformSchema>>? schemas;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The ML Transform timeout in minutes. The default is 2880 minutes (48 hours).
  final pulumi.Input<int>? timeout;
  /// The type of predefined worker that is allocated when an ML Transform runs. Accepts a value of `Standard`, `G.1X`, or `G.2X`. Required with `number_of_workers`.
  final pulumi.Input<String>? workerType;

  /// Creates a new [MLTransformState].
  /// [arn] Amazon Resource Name (ARN) of Glue ML Transform.
  /// [description] Description of the ML Transform.
  /// [glueVersion] The version of glue to use, for example "1.0". For information about available versions, see the [AWS Glue Release Notes](https://docs.aws.amazon.com/glue/latest/dg/release-notes.html).
  /// [inputRecordTables] A list of AWS Glue table definitions used by the transform. see Input Record Tables.
  /// [labelCount] The number of labels available for this transform.
  /// [maxCapacity] The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from `2` to `100` DPUs; the default is `10`. `max_capacity` is a mutually exclusive option with `number_of_workers` and `worker_type`.
  /// [maxRetries] The maximum number of times to retry this ML Transform if it fails.
  /// [name] The name you assign to this ML Transform. It must be unique in your account.
  /// [numberOfWorkers] The number of workers of a defined `worker_type` that are allocated when an ML Transform runs. Required with `worker_type`.
  /// [parameters] The algorithmic parameters that are specific to the transform type used. Conditionally dependent on the transform type. see Parameters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The ARN of the IAM role associated with this ML Transform.
  /// [schemas] The object that represents the schema that this transform accepts. see Schema.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeout] The ML Transform timeout in minutes. The default is 2880 minutes (48 hours).
  /// [workerType] The type of predefined worker that is allocated when an ML Transform runs. Accepts a value of `Standard`, `G.1X`, or `G.2X`. Required with `number_of_workers`.
  MLTransformState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? glueVersion,
    pulumi.Output<List<MLTransformInputRecordTable>>? inputRecordTables,
    pulumi.Output<int>? labelCount,
    pulumi.Output<double>? maxCapacity,
    pulumi.Output<int>? maxRetries,
    pulumi.Output<String>? name,
    pulumi.Output<int>? numberOfWorkers,
    pulumi.Output<MLTransformParameters>? parameters,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<List<MLTransformSchema>>? schemas,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<int>? timeout,
    pulumi.Output<String>? workerType,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      glueVersion = pulumi.Input.asOptionalInput<String>(glueVersion),
      inputRecordTables = pulumi.Input.asOptionalInput<List<MLTransformInputRecordTable>>(inputRecordTables),
      labelCount = pulumi.Input.asOptionalInput<int>(labelCount),
      maxCapacity = pulumi.Input.asOptionalInput<double>(maxCapacity),
      maxRetries = pulumi.Input.asOptionalInput<int>(maxRetries),
      name = pulumi.Input.asOptionalInput<String>(name),
      numberOfWorkers = pulumi.Input.asOptionalInput<int>(numberOfWorkers),
      parameters = pulumi.Input.asOptionalInput<MLTransformParameters>(parameters),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      schemas = pulumi.Input.asOptionalInput<List<MLTransformSchema>>(schemas),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeout = pulumi.Input.asOptionalInput<int>(timeout),
      workerType = pulumi.Input.asOptionalInput<String>(workerType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'glueVersion': ?glueVersion,
      'inputRecordTables': ?pulumi.Input.mapOptionalInputValue<List<MLTransformInputRecordTable>, List<Map<String, dynamic>>>(inputRecordTables, (value) => pulumi.Input.encodeList<MLTransformInputRecordTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labelCount': ?labelCount,
      'maxCapacity': ?maxCapacity,
      'maxRetries': ?maxRetries,
      'name': ?name,
      'numberOfWorkers': ?numberOfWorkers,
      'parameters': ?pulumi.Input.mapOptionalInputValue<MLTransformParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'region': ?region,
      'roleArn': ?roleArn,
      'schemas': ?pulumi.Input.mapOptionalInputValue<List<MLTransformSchema>, List<Map<String, dynamic>>>(schemas, (value) => pulumi.Input.encodeList<MLTransformSchema, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeout': ?timeout,
      'workerType': ?workerType,
    };
  }

  factory MLTransformState.fromMap(Map<String, dynamic> map) {
    return MLTransformState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      glueVersion: map['glueVersion'] == null ? null : pulumi.Output.create<String>(map['glueVersion'] as String),
      inputRecordTables: map['inputRecordTables'] == null ? null : pulumi.Output.create<List<MLTransformInputRecordTable>>(pulumi.Input.decodeList<MLTransformInputRecordTable>(map['inputRecordTables'], (value) => MLTransformInputRecordTable.fromMap((value as Map).cast<String, dynamic>()))),
      labelCount: map['labelCount'] == null ? null : pulumi.Output.create<int>(map['labelCount'] as int),
      maxCapacity: map['maxCapacity'] == null ? null : pulumi.Output.create<double>(map['maxCapacity'] as double),
      maxRetries: map['maxRetries'] == null ? null : pulumi.Output.create<int>(map['maxRetries'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      numberOfWorkers: map['numberOfWorkers'] == null ? null : pulumi.Output.create<int>(map['numberOfWorkers'] as int),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<MLTransformParameters>(MLTransformParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      schemas: map['schemas'] == null ? null : pulumi.Output.create<List<MLTransformSchema>>(pulumi.Input.decodeList<MLTransformSchema>(map['schemas'], (value) => MLTransformSchema.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<int>(map['timeout'] as int),
      workerType: map['workerType'] == null ? null : pulumi.Output.create<String>(map['workerType'] as String),
    );
  }
}

