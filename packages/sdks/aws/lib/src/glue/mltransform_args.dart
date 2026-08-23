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
  /// The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from `2` to `100` DPUs; the default is `10`. `maxCapacity` is a mutually exclusive option with `numberOfWorkers` and `workerType`.
  final pulumi.Input<double>? maxCapacity;
  /// The maximum number of times to retry this ML Transform if it fails.
  final pulumi.Input<int>? maxRetries;
  /// The name you assign to this ML Transform. It must be unique in your account.
  final pulumi.Input<String>? name;
  /// The number of workers of a defined `workerType` that are allocated when an ML Transform runs. Required with `workerType`.
  final pulumi.Input<int>? numberOfWorkers;
  /// The algorithmic parameters that are specific to the transform type used. Conditionally dependent on the transform type. see Parameters.
  final pulumi.Input<MLTransformParameters> parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the IAM role associated with this ML Transform.
  final pulumi.Input<String> roleArn;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ML Transform timeout in minutes. The default is 2880 minutes (48 hours).
  final pulumi.Input<int>? timeout;
  /// The type of predefined worker that is allocated when an ML Transform runs. Accepts a value of `Standard`, `G.1X`, or `G.2X`. Required with `numberOfWorkers`.
  final pulumi.Input<String>? workerType;

  /// Creates a new [MLTransformArgs].
  /// [description] Description of the ML Transform.
  /// [glueVersion] The version of glue to use, for example "1.0". For information about available versions, see the [AWS Glue Release Notes](https://docs.aws.amazon.com/glue/latest/dg/release-notes.html).
  /// [inputRecordTables] A list of AWS Glue table definitions used by the transform. see Input Record Tables.
  /// [maxCapacity] The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from `2` to `100` DPUs; the default is `10`. `maxCapacity` is a mutually exclusive option with `numberOfWorkers` and `workerType`.
  /// [maxRetries] The maximum number of times to retry this ML Transform if it fails.
  /// [name] The name you assign to this ML Transform. It must be unique in your account.
  /// [numberOfWorkers] The number of workers of a defined `workerType` that are allocated when an ML Transform runs. Required with `workerType`.
  /// [parameters] The algorithmic parameters that are specific to the transform type used. Conditionally dependent on the transform type. see Parameters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The ARN of the IAM role associated with this ML Transform.
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeout] The ML Transform timeout in minutes. The default is 2880 minutes (48 hours).
  /// [workerType] The type of predefined worker that is allocated when an ML Transform runs. Accepts a value of `Standard`, `G.1X`, or `G.2X`. Required with `numberOfWorkers`.
  const MLTransformArgs({
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
    return <String, dynamic>{
      'description': ?description,
      'glueVersion': ?glueVersion,
      'inputRecordTables': pulumi.Input.mapInputValue<List<MLTransformInputRecordTable>, List<Map<String, dynamic>>>(inputRecordTables, (value) => pulumi.Input.encodeList<MLTransformInputRecordTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxCapacity': ?maxCapacity,
      'maxRetries': ?maxRetries,
      'name': ?name,
      'numberOfWorkers': ?numberOfWorkers,
      'parameters': pulumi.Input.mapInputValue<MLTransformParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'region': ?region,
      'roleArn': roleArn,
      'tags': ?tags,
      'timeout': ?timeout,
      'workerType': ?workerType,
    };
  }

  factory MLTransformArgs.fromMap(Map<String, dynamic> map) {
    return MLTransformArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      glueVersion: (() { final guardedValue = map['glueVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputRecordTables: pulumi.Input.fromValue(pulumi.Input.decodeList<MLTransformInputRecordTable>(map['inputRecordTables']!, (value) => MLTransformInputRecordTable.fromMap((value as Map).cast<String, dynamic>()))),
      maxCapacity: (() { final guardedValue = map['maxCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfWorkers: (() { final guardedValue = map['numberOfWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      parameters: pulumi.Input.fromValue(MLTransformParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      workerType: (() { final guardedValue = map['workerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
