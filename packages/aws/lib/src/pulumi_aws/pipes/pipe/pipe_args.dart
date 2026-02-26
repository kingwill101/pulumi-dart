// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../pipe_enrichment_parameters/pipe_enrichment_parameters.dart';
import '../pipe_log_configuration/pipe_log_configuration.dart';
import '../pipe_source_parameters/pipe_source_parameters.dart';
import '../pipe_target_parameters/pipe_target_parameters.dart';

/// The set of arguments for Pipe.
class PipeArgs {
  /// A description of the pipe. At most 512 characters.
  final Input<String>? description;

  /// The state the pipe should be in. One of: `RUNNING`, `STOPPED`.
  final Input<String>? desiredState;

  /// Enrichment resource of the pipe (typically an ARN). Read more about enrichment in the [User Guide](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html#pipes-enrichment).
  final Input<String>? enrichment;

  /// Parameters to configure enrichment for your pipe. Detailed below.
  final Input<PipeEnrichmentParameters>? enrichmentParameters;

  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt pipe data. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN. If not set, EventBridge uses an AWS owned key to encrypt pipe data.
  final Input<String>? kmsKeyIdentifier;

  /// Logging configuration settings for the pipe. Detailed below.
  final Input<PipeLogConfiguration>? logConfiguration;

  /// Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the role that allows the pipe to send data to the target.
  final Input<String> roleArn;

  /// Source resource of the pipe. This field typically requires an ARN (Amazon Resource Name). However, when using a self-managed Kafka cluster, you should use a different format. Instead of an ARN, use 'smk://' followed by the bootstrap server's address.
  final Input<String> source;

  /// Parameters to configure a source for the pipe. Detailed below.
  final Input<PipeSourceParameters>? sourceParameters;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Target resource of the pipe (typically an ARN).
  ///
  /// The following arguments are optional:
  final Input<String> target;

  /// Parameters to configure a target for your pipe. Detailed below.
  final Input<PipeTargetParameters>? targetParameters;

  PipeArgs({
    this.description,
    this.desiredState,
    this.enrichment,
    this.enrichmentParameters,
    this.kmsKeyIdentifier,
    this.logConfiguration,
    this.name,
    this.namePrefix,
    this.region,
    required this.roleArn,
    required this.source,
    this.sourceParameters,
    this.tags,
    required this.target,
    this.targetParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final desiredStateValue = desiredState;
    if (desiredStateValue != null) {
      map['desiredState'] = desiredStateValue;
    }
    final enrichmentValue = enrichment;
    if (enrichmentValue != null) {
      map['enrichment'] = enrichmentValue;
    }
    final enrichmentParametersValue = enrichmentParameters;
    if (enrichmentParametersValue != null) {
      map['enrichmentParameters'] = Input.mapOptionalInputValue<
              PipeEnrichmentParameters, Map<String, dynamic>>(
          enrichmentParametersValue, (value) => value.toMap());
    }
    final kmsKeyIdentifierValue = kmsKeyIdentifier;
    if (kmsKeyIdentifierValue != null) {
      map['kmsKeyIdentifier'] = kmsKeyIdentifierValue;
    }
    final logConfigurationValue = logConfiguration;
    if (logConfigurationValue != null) {
      map['logConfiguration'] = Input.mapOptionalInputValue<
              PipeLogConfiguration, Map<String, dynamic>>(
          logConfigurationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    map['source'] = source;
    final sourceParametersValue = sourceParameters;
    if (sourceParametersValue != null) {
      map['sourceParameters'] = Input.mapOptionalInputValue<
              PipeSourceParameters, Map<String, dynamic>>(
          sourceParametersValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['target'] = target;
    final targetParametersValue = targetParameters;
    if (targetParametersValue != null) {
      map['targetParameters'] = Input.mapOptionalInputValue<
              PipeTargetParameters, Map<String, dynamic>>(
          targetParametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory PipeArgs.fromMap(Map<String, dynamic> map) {
    return PipeArgs(
      description: Input.asOptionalInput<String>(map['description']),
      desiredState: Input.asOptionalInput<String>(map['desiredState']),
      enrichment: Input.asOptionalInput<String>(map['enrichment']),
      enrichmentParameters: Input.asOptionalInput<PipeEnrichmentParameters>(
          map['enrichmentParameters']),
      kmsKeyIdentifier: Input.asOptionalInput<String>(map['kmsKeyIdentifier']),
      logConfiguration:
          Input.asOptionalInput<PipeLogConfiguration>(map['logConfiguration']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      source: Input.asInput<String>(map['source']),
      sourceParameters:
          Input.asOptionalInput<PipeSourceParameters>(map['sourceParameters']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      target: Input.asInput<String>(map['target']),
      targetParameters:
          Input.asOptionalInput<PipeTargetParameters>(map['targetParameters']),
    );
  }
}
