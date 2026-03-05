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
    this.arn,
    this.description,
    this.glueVersion,
    this.inputRecordTables,
    this.labelCount,
    this.maxCapacity,
    this.maxRetries,
    this.name,
    this.numberOfWorkers,
    this.parameters,
    this.region,
    this.roleArn,
    this.schemas,
    this.tags,
    this.tagsAll,
    this.timeout,
    this.workerType,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      glueVersion: (() { final guardedValue = map['glueVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputRecordTables: (() { final guardedValue = map['inputRecordTables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MLTransformInputRecordTable>(guardedValue, (value) => MLTransformInputRecordTable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labelCount: (() { final guardedValue = map['labelCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxCapacity: (() { final guardedValue = map['maxCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfWorkers: (() { final guardedValue = map['numberOfWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MLTransformParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemas: (() { final guardedValue = map['schemas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MLTransformSchema>(guardedValue, (value) => MLTransformSchema.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      workerType: (() { final guardedValue = map['workerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

