// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'state_machine_encryption_configuration.dart';
import 'state_machine_logging_configuration.dart';
import 'state_machine_tracing_configuration.dart';

/// Input properties used for looking up and filtering StateMachine resources.
class StateMachineState {
  /// The ARN of the state machine.
  final pulumi.Input<String>? arn;
  /// The date the state machine was created.
  final pulumi.Input<String>? creationDate;
  /// The [Amazon States Language](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html) definition of the state machine.
  final pulumi.Input<String>? definition;
  final pulumi.Input<String>? description;
  /// Defines what encryption configuration is used to encrypt data in the State Machine. For more information see [TBD] in the AWS Step Functions User Guide.
  final pulumi.Input<StateMachineEncryptionConfiguration>? encryptionConfiguration;
  /// Defines what execution history events are logged and where they are logged. The `logging_configuration` parameter is valid when `type` is set to `STANDARD` or `EXPRESS`. Defaults to `OFF`. For more information see [Logging Express Workflows](https://docs.aws.amazon.com/step-functions/latest/dg/cw-logs.html), [Log Levels](https://docs.aws.amazon.com/step-functions/latest/dg/cloudwatch-log-level.html) and [Logging Configuration](https://docs.aws.amazon.com/step-functions/latest/apireference/API_CreateStateMachine.html) in the AWS Step Functions User Guide.
  final pulumi.Input<StateMachineLoggingConfiguration>? loggingConfiguration;
  /// The name of the state machine. The name should only contain `0`-`9`, `A`-`Z`, `a`-`z`, `-` and `_`. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Set to true to publish a version of the state machine during creation. Default: false.
  final pulumi.Input<bool>? publish;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? revisionId;
  /// The Amazon Resource Name (ARN) of the IAM role to use for this state machine.
  final pulumi.Input<String>? roleArn;
  /// The ARN of the state machine version.
  final pulumi.Input<String>? stateMachineVersionArn;
  /// The current status of the state machine. Either `ACTIVE` or `DELETING`.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Selects whether AWS X-Ray tracing is enabled.
  final pulumi.Input<StateMachineTracingConfiguration>? tracingConfiguration;
  /// Determines whether a Standard or Express state machine is created. The default is `STANDARD`. You cannot update the type of a state machine once it has been created. Valid values: `STANDARD`, `EXPRESS`.
  final pulumi.Input<String>? type;
  final pulumi.Input<String>? versionDescription;

  /// Creates a new [StateMachineState].
  /// [arn] The ARN of the state machine.
  /// [creationDate] The date the state machine was created.
  /// [definition] The [Amazon States Language](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html) definition of the state machine.
  /// [description] Optional.
  /// [encryptionConfiguration] Defines what encryption configuration is used to encrypt data in the State Machine. For more information see [TBD] in the AWS Step Functions User Guide.
  /// [loggingConfiguration] Defines what execution history events are logged and where they are logged. The `logging_configuration` parameter is valid when `type` is set to `STANDARD` or `EXPRESS`. Defaults to `OFF`. For more information see [Logging Express Workflows](https://docs.aws.amazon.com/step-functions/latest/dg/cw-logs.html), [Log Levels](https://docs.aws.amazon.com/step-functions/latest/dg/cloudwatch-log-level.html) and [Logging Configuration](https://docs.aws.amazon.com/step-functions/latest/apireference/API_CreateStateMachine.html) in the AWS Step Functions User Guide.
  /// [name] The name of the state machine. The name should only contain `0`-`9`, `A`-`Z`, `a`-`z`, `-` and `_`. If omitted, the provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [publish] Set to true to publish a version of the state machine during creation. Default: false.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revisionId] Optional.
  /// [roleArn] The Amazon Resource Name (ARN) of the IAM role to use for this state machine.
  /// [stateMachineVersionArn] The ARN of the state machine version.
  /// [status] The current status of the state machine. Either `ACTIVE` or `DELETING`.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [tracingConfiguration] Selects whether AWS X-Ray tracing is enabled.
  /// [type] Determines whether a Standard or Express state machine is created. The default is `STANDARD`. You cannot update the type of a state machine once it has been created. Valid values: `STANDARD`, `EXPRESS`.
  /// [versionDescription] Optional.
  StateMachineState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? creationDate,
    pulumi.Output<String>? definition,
    pulumi.Output<String>? description,
    pulumi.Output<StateMachineEncryptionConfiguration>? encryptionConfiguration,
    pulumi.Output<StateMachineLoggingConfiguration>? loggingConfiguration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<bool>? publish,
    pulumi.Output<String>? region,
    pulumi.Output<String>? revisionId,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? stateMachineVersionArn,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<StateMachineTracingConfiguration>? tracingConfiguration,
    pulumi.Output<String>? type,
    pulumi.Output<String>? versionDescription,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      creationDate = pulumi.Input.asOptionalInput<String>(creationDate),
      definition = pulumi.Input.asOptionalInput<String>(definition),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptionConfiguration = pulumi.Input.asOptionalInput<StateMachineEncryptionConfiguration>(encryptionConfiguration),
      loggingConfiguration = pulumi.Input.asOptionalInput<StateMachineLoggingConfiguration>(loggingConfiguration),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      publish = pulumi.Input.asOptionalInput<bool>(publish),
      region = pulumi.Input.asOptionalInput<String>(region),
      revisionId = pulumi.Input.asOptionalInput<String>(revisionId),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      stateMachineVersionArn = pulumi.Input.asOptionalInput<String>(stateMachineVersionArn),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      tracingConfiguration = pulumi.Input.asOptionalInput<StateMachineTracingConfiguration>(tracingConfiguration),
      type = pulumi.Input.asOptionalInput<String>(type),
      versionDescription = pulumi.Input.asOptionalInput<String>(versionDescription);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationDate': ?creationDate,
      'definition': ?definition,
      'description': ?description,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<StateMachineEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'loggingConfiguration': ?pulumi.Input.mapOptionalInputValue<StateMachineLoggingConfiguration, Map<String, dynamic>>(loggingConfiguration, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'publish': ?publish,
      'region': ?region,
      'revisionId': ?revisionId,
      'roleArn': ?roleArn,
      'stateMachineVersionArn': ?stateMachineVersionArn,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tracingConfiguration': ?pulumi.Input.mapOptionalInputValue<StateMachineTracingConfiguration, Map<String, dynamic>>(tracingConfiguration, (value) => value.toMap()),
      'type': ?type,
      'versionDescription': ?versionDescription,
    };
  }

  factory StateMachineState.fromMap(Map<String, dynamic> map) {
    return StateMachineState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      creationDate: map['creationDate'] == null ? null : pulumi.Output.create<String>(map['creationDate'] as String),
      definition: map['definition'] == null ? null : pulumi.Output.create<String>(map['definition'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : pulumi.Output.create<StateMachineEncryptionConfiguration>(StateMachineEncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>())),
      loggingConfiguration: map['loggingConfiguration'] == null ? null : pulumi.Output.create<StateMachineLoggingConfiguration>(StateMachineLoggingConfiguration.fromMap((map['loggingConfiguration'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      publish: map['publish'] == null ? null : pulumi.Output.create<bool>(map['publish'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      revisionId: map['revisionId'] == null ? null : pulumi.Output.create<String>(map['revisionId'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      stateMachineVersionArn: map['stateMachineVersionArn'] == null ? null : pulumi.Output.create<String>(map['stateMachineVersionArn'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      tracingConfiguration: map['tracingConfiguration'] == null ? null : pulumi.Output.create<StateMachineTracingConfiguration>(StateMachineTracingConfiguration.fromMap((map['tracingConfiguration'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      versionDescription: map['versionDescription'] == null ? null : pulumi.Output.create<String>(map['versionDescription'] as String),
    );
  }
}

