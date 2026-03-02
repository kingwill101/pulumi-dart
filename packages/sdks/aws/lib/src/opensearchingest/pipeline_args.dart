// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_buffer_options.dart';
import 'pipeline_encryption_at_rest_options.dart';
import 'pipeline_log_publishing_options.dart';
import 'pipeline_timeouts.dart';
import 'pipeline_vpc_options.dart';

/// {@template pulumi_opensearchingest_pipeline_pipeline_args_doc}
/// The set of arguments for Pipeline.
/// {@endtemplate}
/// {@macro pulumi_opensearchingest_pipeline_pipeline_args_doc}
class PipelineArgs {
  /// Key-value pairs to configure persistent buffering for the pipeline. See `buffer_options` below.
  final pulumi.Input<PipelineBufferOptions>? bufferOptions;
  /// Key-value pairs to configure encryption for data that is written to a persistent buffer. See `encryption_at_rest_options` below.
  final pulumi.Input<PipelineEncryptionAtRestOptions>? encryptionAtRestOptions;
  /// Key-value pairs to configure log publishing. See `log_publishing_options` below.
  final pulumi.Input<PipelineLogPublishingOptions>? logPublishingOptions;
  /// The maximum pipeline capacity, in Ingestion Compute Units (ICUs).
  final pulumi.Input<int> maxUnits;
  /// The minimum pipeline capacity, in Ingestion Compute Units (ICUs).
  final pulumi.Input<int> minUnits;
  /// The pipeline configuration in YAML format. This argument accepts the pipeline configuration as a string or within a .yaml file. If you provide the configuration as a string, each new line must be escaped with \n.
  final pulumi.Input<String> pipelineConfigurationBody;
  /// The name of the OpenSearch Ingestion pipeline to create. Pipeline names are unique across the pipelines owned by an account within an AWS Region.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> pipelineName;
  /// ARN of the IAM role that grants the pipeline permission to access AWS resources.
  final pulumi.Input<String>? pipelineRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the pipeline. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<PipelineTimeouts>? timeouts;
  /// Container for the values required to configure VPC access for the pipeline. If you don't specify these values, OpenSearch Ingestion creates the pipeline with a public endpoint. See `vpc_options` below.
  final pulumi.Input<PipelineVpcOptions>? vpcOptions;

  /// Creates a new [PipelineArgs].
  /// [bufferOptions] Key-value pairs to configure persistent buffering for the pipeline. See `buffer_options` below.
  /// [encryptionAtRestOptions] Key-value pairs to configure encryption for data that is written to a persistent buffer. See `encryption_at_rest_options` below.
  /// [logPublishingOptions] Key-value pairs to configure log publishing. See `log_publishing_options` below.
  /// [maxUnits] The maximum pipeline capacity, in Ingestion Compute Units (ICUs).
  /// [minUnits] The minimum pipeline capacity, in Ingestion Compute Units (ICUs).
  /// [pipelineConfigurationBody] The pipeline configuration in YAML format. This argument accepts the pipeline configuration as a string or within a .yaml file. If you provide the configuration as a string, each new line must be escaped with \n.
  /// [pipelineName] The name of the OpenSearch Ingestion pipeline to create. Pipeline names are unique across the pipelines owned by an account within an AWS Region.
  /// [pipelineRoleArn] ARN of the IAM role that grants the pipeline permission to access AWS resources.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the pipeline. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [vpcOptions] Container for the values required to configure VPC access for the pipeline. If you don't specify these values, OpenSearch Ingestion creates the pipeline with a public endpoint. See `vpc_options` below.
  PipelineArgs({
    this.bufferOptions,
    this.encryptionAtRestOptions,
    this.logPublishingOptions,
    required this.maxUnits,
    required this.minUnits,
    required this.pipelineConfigurationBody,
    required this.pipelineName,
    this.pipelineRoleArn,
    this.region,
    this.tags,
    this.timeouts,
    this.vpcOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferOptions': ?pulumi.Input.mapOptionalInputValue<PipelineBufferOptions, Map<String, dynamic>>(bufferOptions, (value) => value.toMap()),
      'encryptionAtRestOptions': ?pulumi.Input.mapOptionalInputValue<PipelineEncryptionAtRestOptions, Map<String, dynamic>>(encryptionAtRestOptions, (value) => value.toMap()),
      'logPublishingOptions': ?pulumi.Input.mapOptionalInputValue<PipelineLogPublishingOptions, Map<String, dynamic>>(logPublishingOptions, (value) => value.toMap()),
      'maxUnits': maxUnits,
      'minUnits': minUnits,
      'pipelineConfigurationBody': pipelineConfigurationBody,
      'pipelineName': pipelineName,
      'pipelineRoleArn': ?pipelineRoleArn,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<PipelineTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcOptions': ?pulumi.Input.mapOptionalInputValue<PipelineVpcOptions, Map<String, dynamic>>(vpcOptions, (value) => value.toMap()),
    };
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      bufferOptions: map['bufferOptions'] == null ? null : ((PipelineBufferOptions.fromMap((map['bufferOptions']! as Map).cast<String, dynamic>())).input()).input(),
      encryptionAtRestOptions: map['encryptionAtRestOptions'] == null ? null : ((PipelineEncryptionAtRestOptions.fromMap((map['encryptionAtRestOptions']! as Map).cast<String, dynamic>())).input()).input(),
      logPublishingOptions: map['logPublishingOptions'] == null ? null : ((PipelineLogPublishingOptions.fromMap((map['logPublishingOptions']! as Map).cast<String, dynamic>())).input()).input(),
      maxUnits: (map['maxUnits'] as int).input(),
      minUnits: (map['minUnits'] as int).input(),
      pipelineConfigurationBody: (map['pipelineConfigurationBody'] as String).input(),
      pipelineName: (map['pipelineName'] as String).input(),
      pipelineRoleArn: map['pipelineRoleArn'] == null ? null : ((map['pipelineRoleArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((PipelineTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      vpcOptions: map['vpcOptions'] == null ? null : ((PipelineVpcOptions.fromMap((map['vpcOptions']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

