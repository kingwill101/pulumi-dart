// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../pipeline_buffer_options/pipeline_buffer_options.dart';
import '../pipeline_encryption_at_rest_options/pipeline_encryption_at_rest_options.dart';
import '../pipeline_log_publishing_options/pipeline_log_publishing_options.dart';
import '../pipeline_timeouts/pipeline_timeouts.dart';
import '../pipeline_vpc_options/pipeline_vpc_options.dart';

/// The set of arguments for Pipeline.
class PipelineArgs4 {
  /// Key-value pairs to configure persistent buffering for the pipeline. See `buffer_options` below.
  final Input<PipelineBufferOptions>? bufferOptions;

  /// Key-value pairs to configure encryption for data that is written to a persistent buffer. See `encryption_at_rest_options` below.
  final Input<PipelineEncryptionAtRestOptions>? encryptionAtRestOptions;

  /// Key-value pairs to configure log publishing. See `log_publishing_options` below.
  final Input<PipelineLogPublishingOptions>? logPublishingOptions;

  /// The maximum pipeline capacity, in Ingestion Compute Units (ICUs).
  final Input<int> maxUnits;

  /// The minimum pipeline capacity, in Ingestion Compute Units (ICUs).
  final Input<int> minUnits;

  /// The pipeline configuration in YAML format. This argument accepts the pipeline configuration as a string or within a .yaml file. If you provide the configuration as a string, each new line must be escaped with \n.
  final Input<String> pipelineConfigurationBody;

  /// The name of the OpenSearch Ingestion pipeline to create. Pipeline names are unique across the pipelines owned by an account within an AWS Region.
  ///
  /// The following arguments are optional:
  final Input<String> pipelineName;

  /// ARN of the IAM role that grants the pipeline permission to access AWS resources.
  final Input<String>? pipelineRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the pipeline. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<PipelineTimeouts>? timeouts;

  /// Container for the values required to configure VPC access for the pipeline. If you don't specify these values, OpenSearch Ingestion creates the pipeline with a public endpoint. See `vpc_options` below.
  final Input<PipelineVpcOptions>? vpcOptions;

  PipelineArgs4({
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
    final map = <String, dynamic>{};
    final bufferOptionsValue = bufferOptions;
    if (bufferOptionsValue != null) {
      map['bufferOptions'] = Input.mapOptionalInputValue<PipelineBufferOptions,
          Map<String, dynamic>>(bufferOptionsValue, (value) => value.toMap());
    }
    final encryptionAtRestOptionsValue = encryptionAtRestOptions;
    if (encryptionAtRestOptionsValue != null) {
      map['encryptionAtRestOptions'] = Input.mapOptionalInputValue<
              PipelineEncryptionAtRestOptions, Map<String, dynamic>>(
          encryptionAtRestOptionsValue, (value) => value.toMap());
    }
    final logPublishingOptionsValue = logPublishingOptions;
    if (logPublishingOptionsValue != null) {
      map['logPublishingOptions'] = Input.mapOptionalInputValue<
              PipelineLogPublishingOptions, Map<String, dynamic>>(
          logPublishingOptionsValue, (value) => value.toMap());
    }
    map['maxUnits'] = maxUnits;
    map['minUnits'] = minUnits;
    map['pipelineConfigurationBody'] = pipelineConfigurationBody;
    map['pipelineName'] = pipelineName;
    final pipelineRoleArnValue = pipelineRoleArn;
    if (pipelineRoleArnValue != null) {
      map['pipelineRoleArn'] = pipelineRoleArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] =
          Input.mapOptionalInputValue<PipelineTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    final vpcOptionsValue = vpcOptions;
    if (vpcOptionsValue != null) {
      map['vpcOptions'] =
          Input.mapOptionalInputValue<PipelineVpcOptions, Map<String, dynamic>>(
              vpcOptionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PipelineArgs4.fromMap(Map<String, dynamic> map) {
    return PipelineArgs4(
      bufferOptions:
          Input.asOptionalInput<PipelineBufferOptions>(map['bufferOptions']),
      encryptionAtRestOptions:
          Input.asOptionalInput<PipelineEncryptionAtRestOptions>(
              map['encryptionAtRestOptions']),
      logPublishingOptions: Input.asOptionalInput<PipelineLogPublishingOptions>(
          map['logPublishingOptions']),
      maxUnits: Input.asInput<int>(map['maxUnits']),
      minUnits: Input.asInput<int>(map['minUnits']),
      pipelineConfigurationBody:
          Input.asInput<String>(map['pipelineConfigurationBody']),
      pipelineName: Input.asInput<String>(map['pipelineName']),
      pipelineRoleArn: Input.asOptionalInput<String>(map['pipelineRoleArn']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<PipelineTimeouts>(map['timeouts']),
      vpcOptions: Input.asOptionalInput<PipelineVpcOptions>(map['vpcOptions']),
    );
  }
}
