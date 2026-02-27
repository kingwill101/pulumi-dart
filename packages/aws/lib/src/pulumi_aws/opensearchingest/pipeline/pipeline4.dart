import 'package:pulumi/pulumi.dart';
import '../pipeline_buffer_options/pipeline_buffer_options.dart';
import '../pipeline_encryption_at_rest_options/pipeline_encryption_at_rest_options.dart';
import '../pipeline_log_publishing_options/pipeline_log_publishing_options.dart';
import '../pipeline_timeouts/pipeline_timeouts.dart';
import '../pipeline_vpc_options/pipeline_vpc_options.dart';
import 'pipeline_args4.dart';

/// Resource for managing an AWS OpenSearch Ingestion Pipeline.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Using file function
///
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearch Ingestion Pipeline using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearchingest/pipeline:Pipeline example example
/// ```
class Pipeline4 extends CustomResource {
  /// Key-value pairs to configure persistent buffering for the pipeline. See `buffer_options` below.
  late final Output<PipelineBufferOptions?> bufferOptions;

  /// Key-value pairs to configure encryption for data that is written to a persistent buffer. See `encryption_at_rest_options` below.
  late final Output<PipelineEncryptionAtRestOptions?> encryptionAtRestOptions;

  /// The list of ingestion endpoints for the pipeline, which you can send data to.
  late final Output<List<String>> ingestEndpointUrls;

  /// Key-value pairs to configure log publishing. See `log_publishing_options` below.
  late final Output<PipelineLogPublishingOptions?> logPublishingOptions;

  /// The maximum pipeline capacity, in Ingestion Compute Units (ICUs).
  late final Output<int> maxUnits;

  /// The minimum pipeline capacity, in Ingestion Compute Units (ICUs).
  late final Output<int> minUnits;

  /// Amazon Resource Name (ARN) of the pipeline.
  late final Output<String> pipelineArn;

  /// The pipeline configuration in YAML format. This argument accepts the pipeline configuration as a string or within a .yaml file. If you provide the configuration as a string, each new line must be escaped with \n.
  late final Output<String> pipelineConfigurationBody;

  /// The name of the OpenSearch Ingestion pipeline to create. Pipeline names are unique across the pipelines owned by an account within an AWS Region.
  ///
  /// The following arguments are optional:
  late final Output<String> pipelineName;

  /// ARN of the IAM role that grants the pipeline permission to access AWS resources.
  late final Output<String> pipelineRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the pipeline. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;
  late final Output<PipelineTimeouts?> timeouts;

  /// Container for the values required to configure VPC access for the pipeline. If you don't specify these values, OpenSearch Ingestion creates the pipeline with a public endpoint. See `vpc_options` below.
  late final Output<PipelineVpcOptions?> vpcOptions;

  Pipeline4(
    String name, {
    PipelineArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:opensearchingest/pipeline:Pipeline',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bufferOptions =
        registerOutput<PipelineBufferOptions?>('bufferOptions');
    this.encryptionAtRestOptions =
        registerOutput<PipelineEncryptionAtRestOptions?>(
            'encryptionAtRestOptions');
    this.ingestEndpointUrls =
        registerOutput<List<String>>('ingestEndpointUrls');
    this.logPublishingOptions =
        registerOutput<PipelineLogPublishingOptions?>('logPublishingOptions');
    this.maxUnits = registerOutput<int>('maxUnits');
    this.minUnits = registerOutput<int>('minUnits');
    this.pipelineArn = registerOutput<String>('pipelineArn');
    this.pipelineConfigurationBody =
        registerOutput<String>('pipelineConfigurationBody');
    this.pipelineName = registerOutput<String>('pipelineName');
    this.pipelineRoleArn = registerOutput<String>('pipelineRoleArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<PipelineTimeouts?>('timeouts');
    this.vpcOptions = registerOutput<PipelineVpcOptions?>('vpcOptions');
  }
}
