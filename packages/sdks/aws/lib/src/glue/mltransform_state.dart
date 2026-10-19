// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mltransform_input_record_table.dart';
import 'mltransform_parameters.dart';
import 'mltransform_schema.dart';

/// Input properties used for looking up and filtering MLTransform resources.
class MLTransformState {
  /// ARN of Glue ML Transform.
  final pulumi.Input<String?>? arn;
  /// Description of the ML Transform.
  final pulumi.Input<String?>? description;
  /// Version of glue to use, for example "1.0". For information about available versions, see the [AWS Glue Release Notes](https://docs.aws.amazon.com/glue/latest/dg/release-notes.html).
  final pulumi.Input<String?>? glueVersion;
  /// List of AWS Glue table definitions used by the transform. See `inputRecordTables`.
  final pulumi.Input<List<MLTransformInputRecordTable>?>? inputRecordTables;
  /// Number of labels available for this transform.
  final pulumi.Input<int?>? labelCount;
  /// Number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from `2` to `100` DPUs; the default is `10`. `maxCapacity` is a mutually exclusive option with `numberOfWorkers` and `workerType`.
  final pulumi.Input<double?>? maxCapacity;
  /// Maximum number of times to retry this ML Transform if it fails.
  final pulumi.Input<int?>? maxRetries;
  /// Name you assign to this ML Transform. It must be unique in your account.
  final pulumi.Input<String?>? name;
  /// Number of workers of a defined `workerType` that are allocated when an ML Transform runs. Required with `workerType`.
  final pulumi.Input<int?>? numberOfWorkers;
  /// Algorithmic parameters that are specific to the transform type used. Conditionally dependent on the transform type. See `parameters`.
  final pulumi.Input<MLTransformParameters?>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the IAM role associated with this ML Transform.
  final pulumi.Input<String?>? roleArn;
  /// Object that represents the schema that this transform accepts. See `schema`.
  final pulumi.Input<List<MLTransformSchema>?>? schemas;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// ML Transform timeout in minutes. The default is 2880 minutes (48 hours).
  final pulumi.Input<int?>? timeout;
  /// Type of predefined worker that is allocated when an ML Transform runs. Accepts a value of `Standard`, `G.1X`, or `G.2X`. Required with `numberOfWorkers`.
  final pulumi.Input<String?>? workerType;

  /// Creates a new [MLTransformState].
  /// [arn] ARN of Glue ML Transform.
  /// [description] Description of the ML Transform.
  /// [glueVersion] Version of glue to use, for example "1.0". For information about available versions, see the [AWS Glue Release Notes](https://docs.aws.amazon.com/glue/latest/dg/release-notes.html).
  /// [inputRecordTables] List of AWS Glue table definitions used by the transform. See `inputRecordTables`.
  /// [labelCount] Number of labels available for this transform.
  /// [maxCapacity] Number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from `2` to `100` DPUs; the default is `10`. `maxCapacity` is a mutually exclusive option with `numberOfWorkers` and `workerType`.
  /// [maxRetries] Maximum number of times to retry this ML Transform if it fails.
  /// [name] Name you assign to this ML Transform. It must be unique in your account.
  /// [numberOfWorkers] Number of workers of a defined `workerType` that are allocated when an ML Transform runs. Required with `workerType`.
  /// [parameters] Algorithmic parameters that are specific to the transform type used. Conditionally dependent on the transform type. See `parameters`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM role associated with this ML Transform.
  /// [schemas] Object that represents the schema that this transform accepts. See `schema`.
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeout] ML Transform timeout in minutes. The default is 2880 minutes (48 hours).
  /// [workerType] Type of predefined worker that is allocated when an ML Transform runs. Accepts a value of `Standard`, `G.1X`, or `G.2X`. Required with `numberOfWorkers`.
  const MLTransformState({
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
      labelCount: (() { final guardedValue = map['labelCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxCapacity: (() { final guardedValue = map['maxCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfWorkers: (() { final guardedValue = map['numberOfWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MLTransformParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemas: (() { final guardedValue = map['schemas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MLTransformSchema>(guardedValue, (value) => MLTransformSchema.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      workerType: (() { final guardedValue = map['workerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
