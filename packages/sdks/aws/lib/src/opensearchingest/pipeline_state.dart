// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_buffer_options.dart';
import 'pipeline_encryption_at_rest_options.dart';
import 'pipeline_log_publishing_options.dart';
import 'pipeline_timeouts.dart';
import 'pipeline_vpc_options.dart';

/// Input properties used for looking up and filtering Pipeline resources.
class PipelineState {
  /// Key-value pairs to configure persistent buffering for the pipeline. See `bufferOptions` below.
  final pulumi.Input<PipelineBufferOptions?>? bufferOptions;
  /// Key-value pairs to configure encryption for data that is written to a persistent buffer. See `encryptionAtRestOptions` below.
  final pulumi.Input<PipelineEncryptionAtRestOptions?>? encryptionAtRestOptions;
  /// The list of ingestion endpoints for the pipeline, which you can send data to.
  final pulumi.Input<List<String>?>? ingestEndpointUrls;
  /// Key-value pairs to configure log publishing. See `logPublishingOptions` below.
  final pulumi.Input<PipelineLogPublishingOptions?>? logPublishingOptions;
  /// The maximum pipeline capacity, in Ingestion Compute Units (ICUs).
  final pulumi.Input<int?>? maxUnits;
  /// The minimum pipeline capacity, in Ingestion Compute Units (ICUs).
  final pulumi.Input<int?>? minUnits;
  /// ARN of the pipeline.
  final pulumi.Input<String?>? pipelineArn;
  /// The pipeline configuration in YAML format. This argument accepts the pipeline configuration as a string or within a .yaml file. If you provide the configuration as a string, each new line must be escaped with `\n`.
  final pulumi.Input<String?>? pipelineConfigurationBody;
  /// Name of the pipeline. Pipeline names are unique across the pipelines owned by an account within an AWS Region.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? pipelineName;
  /// ARN of the IAM role that grants the pipeline permission to access AWS resources.
  final pulumi.Input<String?>? pipelineRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the pipeline. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<PipelineTimeouts?>? timeouts;
  /// Container for the values required to configure VPC access for the pipeline. If you don't specify these values, OpenSearch Ingestion creates the pipeline with a public endpoint. See `vpcOptions` below.
  final pulumi.Input<PipelineVpcOptions?>? vpcOptions;

  /// Creates a new [PipelineState].
  /// [bufferOptions] Key-value pairs to configure persistent buffering for the pipeline. See `bufferOptions` below.
  /// [encryptionAtRestOptions] Key-value pairs to configure encryption for data that is written to a persistent buffer. See `encryptionAtRestOptions` below.
  /// [ingestEndpointUrls] The list of ingestion endpoints for the pipeline, which you can send data to.
  /// [logPublishingOptions] Key-value pairs to configure log publishing. See `logPublishingOptions` below.
  /// [maxUnits] The maximum pipeline capacity, in Ingestion Compute Units (ICUs).
  /// [minUnits] The minimum pipeline capacity, in Ingestion Compute Units (ICUs).
  /// [pipelineArn] ARN of the pipeline.
  /// [pipelineConfigurationBody] The pipeline configuration in YAML format. This argument accepts the pipeline configuration as a string or within a .yaml file. If you provide the configuration as a string, each new line must be escaped with `\n`.
  /// [pipelineName] Name of the pipeline. Pipeline names are unique across the pipelines owned by an account within an AWS Region.
  /// [pipelineRoleArn] ARN of the IAM role that grants the pipeline permission to access AWS resources.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the pipeline. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  /// [vpcOptions] Container for the values required to configure VPC access for the pipeline. If you don't specify these values, OpenSearch Ingestion creates the pipeline with a public endpoint. See `vpcOptions` below.
  const PipelineState({
    this.bufferOptions,
    this.encryptionAtRestOptions,
    this.ingestEndpointUrls,
    this.logPublishingOptions,
    this.maxUnits,
    this.minUnits,
    this.pipelineArn,
    this.pipelineConfigurationBody,
    this.pipelineName,
    this.pipelineRoleArn,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.vpcOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferOptions': ?pulumi.Input.mapOptionalInputValue<PipelineBufferOptions, Map<String, dynamic>>(bufferOptions, (value) => value.toMap()),
      'encryptionAtRestOptions': ?pulumi.Input.mapOptionalInputValue<PipelineEncryptionAtRestOptions, Map<String, dynamic>>(encryptionAtRestOptions, (value) => value.toMap()),
      'ingestEndpointUrls': ?ingestEndpointUrls,
      'logPublishingOptions': ?pulumi.Input.mapOptionalInputValue<PipelineLogPublishingOptions, Map<String, dynamic>>(logPublishingOptions, (value) => value.toMap()),
      'maxUnits': ?maxUnits,
      'minUnits': ?minUnits,
      'pipelineArn': ?pipelineArn,
      'pipelineConfigurationBody': ?pipelineConfigurationBody,
      'pipelineName': ?pipelineName,
      'pipelineRoleArn': ?pipelineRoleArn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<PipelineTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcOptions': ?pulumi.Input.mapOptionalInputValue<PipelineVpcOptions, Map<String, dynamic>>(vpcOptions, (value) => value.toMap()),
    };
  }

  factory PipelineState.fromMap(Map<String, dynamic> map) {
    return PipelineState(
      bufferOptions: (() { final guardedValue = map['bufferOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineBufferOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptionAtRestOptions: (() { final guardedValue = map['encryptionAtRestOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineEncryptionAtRestOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ingestEndpointUrls: (() { final guardedValue = map['ingestEndpointUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logPublishingOptions: (() { final guardedValue = map['logPublishingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineLogPublishingOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxUnits: (() { final guardedValue = map['maxUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      minUnits: (() { final guardedValue = map['minUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      pipelineArn: (() { final guardedValue = map['pipelineArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineConfigurationBody: (() { final guardedValue = map['pipelineConfigurationBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineName: (() { final guardedValue = map['pipelineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineRoleArn: (() { final guardedValue = map['pipelineRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcOptions: (() { final guardedValue = map['vpcOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineVpcOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
