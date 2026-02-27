import 'package:pulumi/pulumi.dart';
import '../mltransform_input_record_table/mltransform_input_record_table.dart';
import '../mltransform_parameters/mltransform_parameters.dart';
import '../mltransform_schema/mltransform_schema.dart';
import 'mltransform_args.dart';

/// Provides a Glue ML Transform resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue ML Transforms using `id`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/mLTransform:MLTransform example tfm-c2cafbe83b1c575f49eaca9939220e2fcd58e2d5
/// ```
class MLTransform extends CustomResource {
  /// Amazon Resource Name (ARN) of Glue ML Transform.
  late final Output<String> arn;

  /// Description of the ML Transform.
  late final Output<String?> description;

  /// The version of glue to use, for example "1.0". For information about available versions, see the [AWS Glue Release Notes](https://docs.aws.amazon.com/glue/latest/dg/release-notes.html).
  late final Output<String> glueVersion;

  /// A list of AWS Glue table definitions used by the transform. see Input Record Tables.
  late final Output<List<MLTransformInputRecordTable>> inputRecordTables;

  /// The number of labels available for this transform.
  late final Output<int> labelCount;

  /// The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from `2` to `100` DPUs; the default is `10`. `max_capacity` is a mutually exclusive option with `number_of_workers` and `worker_type`.
  late final Output<double> maxCapacity;

  /// The maximum number of times to retry this ML Transform if it fails.
  late final Output<int?> maxRetries;

  /// The name you assign to this ML Transform. It must be unique in your account.
  late final Output<String> name;

  /// The number of workers of a defined `worker_type` that are allocated when an ML Transform runs. Required with `worker_type`.
  late final Output<int?> numberOfWorkers;

  /// The algorithmic parameters that are specific to the transform type used. Conditionally dependent on the transform type. see Parameters.
  late final Output<MLTransformParameters> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ARN of the IAM role associated with this ML Transform.
  late final Output<String> roleArn;

  /// The object that represents the schema that this transform accepts. see Schema.
  late final Output<List<MLTransformSchema>> schemas;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The ML Transform timeout in minutes. The default is 2880 minutes (48 hours).
  late final Output<int?> timeout;

  /// The type of predefined worker that is allocated when an ML Transform runs. Accepts a value of `Standard`, `G.1X`, or `G.2X`. Required with `number_of_workers`.
  late final Output<String?> workerType;

  MLTransform(
    String name, {
    MLTransformArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/mLTransform:MLTransform',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.glueVersion = registerOutput<String>('glueVersion');
    this.inputRecordTables =
        registerOutput<List<MLTransformInputRecordTable>>('inputRecordTables');
    this.labelCount = registerOutput<int>('labelCount');
    this.maxCapacity = registerOutput<double>('maxCapacity');
    this.maxRetries = registerOutput<int?>('maxRetries');
    this.name = registerOutput<String>('name');
    this.numberOfWorkers = registerOutput<int?>('numberOfWorkers');
    this.parameters = registerOutput<MLTransformParameters>('parameters');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.schemas = registerOutput<List<MLTransformSchema>>('schemas');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeout = registerOutput<int?>('timeout');
    this.workerType = registerOutput<String?>('workerType');
  }
}
