// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_enrichment_parameters.dart';
import 'pipe_log_configuration.dart';
import 'pipe_source_parameters.dart';
import 'pipe_target_parameters.dart';

/// {@template pulumi_pipes_pipe_pipe_args_doc}
/// The set of arguments for Pipe.
/// {@endtemplate}
/// {@macro pulumi_pipes_pipe_pipe_args_doc}
class PipeArgs {
  /// A description of the pipe. At most 512 characters.
  final pulumi.Input<String?>? description;
  /// The state the pipe should be in. One of: `RUNNING`, `STOPPED`.
  final pulumi.Input<String?>? desiredState;
  /// Enrichment resource of the pipe (typically an ARN). Read more about enrichment in the [User Guide](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html#pipes-enrichment).
  final pulumi.Input<String?>? enrichment;
  /// Parameters to configure enrichment for your pipe. Detailed below.
  final pulumi.Input<PipeEnrichmentParameters?>? enrichmentParameters;
  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt pipe data. The identifier can be the key ARN, KeyId, key alias, or key alias ARN. If not set, EventBridge uses an AWS owned key to encrypt pipe data.
  final pulumi.Input<String?>? kmsKeyIdentifier;
  /// Logging configuration settings for the pipe. Detailed below.
  final pulumi.Input<PipeLogConfiguration?>? logConfiguration;
  /// Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  final pulumi.Input<String?>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String?>? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the role that allows the pipe to send data to the target.
  final pulumi.Input<String> roleArn;
  /// Source resource of the pipe. This field typically requires an ARN. However, when using a self-managed Kafka cluster, you should use a different format. Instead of an ARN, use 'smk://' followed by the bootstrap server's address.
  final pulumi.Input<String> source;
  /// Parameters to configure a source for the pipe. Detailed below.
  final pulumi.Input<PipeSourceParameters?>? sourceParameters;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Target resource of the pipe (typically an ARN).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> target;
  /// Parameters to configure a target for your pipe. Detailed below.
  final pulumi.Input<PipeTargetParameters?>? targetParameters;

  /// Creates a new [PipeArgs].
  /// [description] A description of the pipe. At most 512 characters.
  /// [desiredState] The state the pipe should be in. One of: `RUNNING`, `STOPPED`.
  /// [enrichment] Enrichment resource of the pipe (typically an ARN). Read more about enrichment in the [User Guide](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html#pipes-enrichment).
  /// [enrichmentParameters] Parameters to configure enrichment for your pipe. Detailed below.
  /// [kmsKeyIdentifier] Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt pipe data. The identifier can be the key ARN, KeyId, key alias, or key alias ARN. If not set, EventBridge uses an AWS owned key to encrypt pipe data.
  /// [logConfiguration] Logging configuration settings for the pipe. Detailed below.
  /// [name] Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the role that allows the pipe to send data to the target.
  /// [source] Source resource of the pipe. This field typically requires an ARN. However, when using a self-managed Kafka cluster, you should use a different format. Instead of an ARN, use 'smk://' followed by the bootstrap server's address.
  /// [sourceParameters] Parameters to configure a source for the pipe. Detailed below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [target] Target resource of the pipe (typically an ARN).
  /// [targetParameters] Parameters to configure a target for your pipe. Detailed below.
  const PipeArgs({
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
    return <String, dynamic>{
      'description': ?description,
      'desiredState': ?desiredState,
      'enrichment': ?enrichment,
      'enrichmentParameters': ?pulumi.Input.mapOptionalInputValue<PipeEnrichmentParameters, Map<String, dynamic>>(enrichmentParameters, (value) => value.toMap()),
      'kmsKeyIdentifier': ?kmsKeyIdentifier,
      'logConfiguration': ?pulumi.Input.mapOptionalInputValue<PipeLogConfiguration, Map<String, dynamic>>(logConfiguration, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'roleArn': roleArn,
      'source': source,
      'sourceParameters': ?pulumi.Input.mapOptionalInputValue<PipeSourceParameters, Map<String, dynamic>>(sourceParameters, (value) => value.toMap()),
      'tags': ?tags,
      'target': target,
      'targetParameters': ?pulumi.Input.mapOptionalInputValue<PipeTargetParameters, Map<String, dynamic>>(targetParameters, (value) => value.toMap()),
    };
  }

  factory PipeArgs.fromMap(Map<String, dynamic> map) {
    return PipeArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredState: (() { final guardedValue = map['desiredState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enrichment: (() { final guardedValue = map['enrichment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enrichmentParameters: (() { final guardedValue = map['enrichmentParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeEnrichmentParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kmsKeyIdentifier: (() { final guardedValue = map['kmsKeyIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logConfiguration: (() { final guardedValue = map['logConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeLogConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      sourceParameters: (() { final guardedValue = map['sourceParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeSourceParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      target: pulumi.Input.fromValue(map['target'] as String),
      targetParameters: (() { final guardedValue = map['targetParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeTargetParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
