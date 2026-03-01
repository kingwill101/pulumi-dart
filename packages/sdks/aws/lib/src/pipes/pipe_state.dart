// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_enrichment_parameters.dart';
import 'pipe_log_configuration.dart';
import 'pipe_source_parameters.dart';
import 'pipe_target_parameters.dart';

/// Input properties used for looking up and filtering Pipe resources.
class PipeState {
  /// ARN of this pipe.
  final pulumi.Input<String>? arn;
  /// A description of the pipe. At most 512 characters.
  final pulumi.Input<String>? description;
  /// The state the pipe should be in. One of: `RUNNING`, `STOPPED`.
  final pulumi.Input<String>? desiredState;
  /// Enrichment resource of the pipe (typically an ARN). Read more about enrichment in the [User Guide](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html#pipes-enrichment).
  final pulumi.Input<String>? enrichment;
  /// Parameters to configure enrichment for your pipe. Detailed below.
  final pulumi.Input<PipeEnrichmentParameters>? enrichmentParameters;
  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt pipe data. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN. If not set, EventBridge uses an AWS owned key to encrypt pipe data.
  final pulumi.Input<String>? kmsKeyIdentifier;
  /// Logging configuration settings for the pipe. Detailed below.
  final pulumi.Input<PipeLogConfiguration>? logConfiguration;
  /// Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the role that allows the pipe to send data to the target.
  final pulumi.Input<String>? roleArn;
  /// Source resource of the pipe. This field typically requires an ARN (Amazon Resource Name). However, when using a self-managed Kafka cluster, you should use a different format. Instead of an ARN, use 'smk://' followed by the bootstrap server's address.
  final pulumi.Input<String>? source;
  /// Parameters to configure a source for the pipe. Detailed below.
  final pulumi.Input<PipeSourceParameters>? sourceParameters;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Target resource of the pipe (typically an ARN).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? target;
  /// Parameters to configure a target for your pipe. Detailed below.
  final pulumi.Input<PipeTargetParameters>? targetParameters;

  /// Creates a new [PipeState].
  /// [arn] ARN of this pipe.
  /// [description] A description of the pipe. At most 512 characters.
  /// [desiredState] The state the pipe should be in. One of: `RUNNING`, `STOPPED`.
  /// [enrichment] Enrichment resource of the pipe (typically an ARN). Read more about enrichment in the [User Guide](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html#pipes-enrichment).
  /// [enrichmentParameters] Parameters to configure enrichment for your pipe. Detailed below.
  /// [kmsKeyIdentifier] Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt pipe data. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN. If not set, EventBridge uses an AWS owned key to encrypt pipe data.
  /// [logConfiguration] Logging configuration settings for the pipe. Detailed below.
  /// [name] Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the role that allows the pipe to send data to the target.
  /// [source] Source resource of the pipe. This field typically requires an ARN (Amazon Resource Name). However, when using a self-managed Kafka cluster, you should use a different format. Instead of an ARN, use 'smk://' followed by the bootstrap server's address.
  /// [sourceParameters] Parameters to configure a source for the pipe. Detailed below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [target] Target resource of the pipe (typically an ARN).
  /// [targetParameters] Parameters to configure a target for your pipe. Detailed below.
  PipeState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? desiredState,
    pulumi.Output<String>? enrichment,
    pulumi.Output<PipeEnrichmentParameters>? enrichmentParameters,
    pulumi.Output<String>? kmsKeyIdentifier,
    pulumi.Output<PipeLogConfiguration>? logConfiguration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? source,
    pulumi.Output<PipeSourceParameters>? sourceParameters,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? target,
    pulumi.Output<PipeTargetParameters>? targetParameters,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      desiredState = pulumi.Input.asOptionalInput<String>(desiredState),
      enrichment = pulumi.Input.asOptionalInput<String>(enrichment),
      enrichmentParameters = pulumi.Input.asOptionalInput<PipeEnrichmentParameters>(enrichmentParameters),
      kmsKeyIdentifier = pulumi.Input.asOptionalInput<String>(kmsKeyIdentifier),
      logConfiguration = pulumi.Input.asOptionalInput<PipeLogConfiguration>(logConfiguration),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      source = pulumi.Input.asOptionalInput<String>(source),
      sourceParameters = pulumi.Input.asOptionalInput<PipeSourceParameters>(sourceParameters),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      target = pulumi.Input.asOptionalInput<String>(target),
      targetParameters = pulumi.Input.asOptionalInput<PipeTargetParameters>(targetParameters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'desiredState': ?desiredState,
      'enrichment': ?enrichment,
      'enrichmentParameters': ?pulumi.Input.mapOptionalInputValue<PipeEnrichmentParameters, Map<String, dynamic>>(enrichmentParameters, (value) => value.toMap()),
      'kmsKeyIdentifier': ?kmsKeyIdentifier,
      'logConfiguration': ?pulumi.Input.mapOptionalInputValue<PipeLogConfiguration, Map<String, dynamic>>(logConfiguration, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'roleArn': ?roleArn,
      'source': ?source,
      'sourceParameters': ?pulumi.Input.mapOptionalInputValue<PipeSourceParameters, Map<String, dynamic>>(sourceParameters, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'target': ?target,
      'targetParameters': ?pulumi.Input.mapOptionalInputValue<PipeTargetParameters, Map<String, dynamic>>(targetParameters, (value) => value.toMap()),
    };
  }

  factory PipeState.fromMap(Map<String, dynamic> map) {
    return PipeState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      desiredState: map['desiredState'] == null ? null : pulumi.Output.create<String>(map['desiredState'] as String),
      enrichment: map['enrichment'] == null ? null : pulumi.Output.create<String>(map['enrichment'] as String),
      enrichmentParameters: map['enrichmentParameters'] == null ? null : pulumi.Output.create<PipeEnrichmentParameters>(PipeEnrichmentParameters.fromMap((map['enrichmentParameters'] as Map).cast<String, dynamic>())),
      kmsKeyIdentifier: map['kmsKeyIdentifier'] == null ? null : pulumi.Output.create<String>(map['kmsKeyIdentifier'] as String),
      logConfiguration: map['logConfiguration'] == null ? null : pulumi.Output.create<PipeLogConfiguration>(PipeLogConfiguration.fromMap((map['logConfiguration'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      sourceParameters: map['sourceParameters'] == null ? null : pulumi.Output.create<PipeSourceParameters>(PipeSourceParameters.fromMap((map['sourceParameters'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      target: map['target'] == null ? null : pulumi.Output.create<String>(map['target'] as String),
      targetParameters: map['targetParameters'] == null ? null : pulumi.Output.create<PipeTargetParameters>(PipeTargetParameters.fromMap((map['targetParameters'] as Map).cast<String, dynamic>())),
    );
  }
}

