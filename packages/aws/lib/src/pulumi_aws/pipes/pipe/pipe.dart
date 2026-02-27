import 'package:pulumi/pulumi.dart';
import '../pipe_enrichment_parameters/pipe_enrichment_parameters.dart';
import '../pipe_log_configuration/pipe_log_configuration.dart';
import '../pipe_source_parameters/pipe_source_parameters.dart';
import '../pipe_target_parameters/pipe_target_parameters.dart';
import 'pipe_args.dart';

/// Resource for managing an AWS EventBridge Pipes Pipe.
///
/// You can find out more about EventBridge Pipes in the [User Guide](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html).
///
/// EventBridge Pipes are very configurable, and may require IAM permissions to work correctly. More information on the configuration options and IAM permissions can be found in the [User Guide](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html).
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Enrichment Usage
///
///
///
/// ### Filter Usage
///
///
///
/// ### CloudWatch Logs Logging Configuration Usage
///
///
///
/// ### SQS Source and Target Configuration Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import pipes using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:pipes/pipe:Pipe example my-pipe
/// ```
class Pipe extends CustomResource {
  /// ARN of this pipe.
  late final Output<String> arn;

  /// A description of the pipe. At most 512 characters.
  late final Output<String?> description;

  /// The state the pipe should be in. One of: `RUNNING`, `STOPPED`.
  late final Output<String?> desiredState;

  /// Enrichment resource of the pipe (typically an ARN). Read more about enrichment in the [User Guide](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html#pipes-enrichment).
  late final Output<String?> enrichment;

  /// Parameters to configure enrichment for your pipe. Detailed below.
  late final Output<PipeEnrichmentParameters?> enrichmentParameters;

  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt pipe data. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN. If not set, EventBridge uses an AWS owned key to encrypt pipe data.
  late final Output<String?> kmsKeyIdentifier;

  /// Logging configuration settings for the pipe. Detailed below.
  late final Output<PipeLogConfiguration?> logConfiguration;

  /// Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the role that allows the pipe to send data to the target.
  late final Output<String> roleArn;

  /// Source resource of the pipe. This field typically requires an ARN (Amazon Resource Name). However, when using a self-managed Kafka cluster, you should use a different format. Instead of an ARN, use 'smk://' followed by the bootstrap server's address.
  late final Output<String> source;

  /// Parameters to configure a source for the pipe. Detailed below.
  late final Output<PipeSourceParameters> sourceParameters;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Target resource of the pipe (typically an ARN).
  ///
  /// The following arguments are optional:
  late final Output<String> target;

  /// Parameters to configure a target for your pipe. Detailed below.
  late final Output<PipeTargetParameters?> targetParameters;

  Pipe(
    String name, {
    PipeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:pipes/pipe:Pipe',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.desiredState = registerOutput<String?>('desiredState');
    this.enrichment = registerOutput<String?>('enrichment');
    this.enrichmentParameters =
        registerOutput<PipeEnrichmentParameters?>('enrichmentParameters');
    this.kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.logConfiguration =
        registerOutput<PipeLogConfiguration?>('logConfiguration');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.source = registerOutput<String>('source');
    this.sourceParameters =
        registerOutput<PipeSourceParameters>('sourceParameters');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.target = registerOutput<String>('target');
    this.targetParameters =
        registerOutput<PipeTargetParameters?>('targetParameters');
  }
}
