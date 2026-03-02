// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'state_machine_encryption_configuration.dart';
import 'state_machine_logging_configuration.dart';
import 'state_machine_tracing_configuration.dart';

/// {@template pulumi_sfn_state_machine_state_machine_args_doc}
/// The set of arguments for StateMachine.
/// {@endtemplate}
/// {@macro pulumi_sfn_state_machine_state_machine_args_doc}
class StateMachineArgs {
  /// The [Amazon States Language](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html) definition of the state machine.
  final pulumi.Input<String> definition;
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
  /// The Amazon Resource Name (ARN) of the IAM role to use for this state machine.
  final pulumi.Input<String> roleArn;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Selects whether AWS X-Ray tracing is enabled.
  final pulumi.Input<StateMachineTracingConfiguration>? tracingConfiguration;
  /// Determines whether a Standard or Express state machine is created. The default is `STANDARD`. You cannot update the type of a state machine once it has been created. Valid values: `STANDARD`, `EXPRESS`.
  final pulumi.Input<String>? type;

  /// Creates a new [StateMachineArgs].
  /// [definition] The [Amazon States Language](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html) definition of the state machine.
  /// [encryptionConfiguration] Defines what encryption configuration is used to encrypt data in the State Machine. For more information see [TBD] in the AWS Step Functions User Guide.
  /// [loggingConfiguration] Defines what execution history events are logged and where they are logged. The `logging_configuration` parameter is valid when `type` is set to `STANDARD` or `EXPRESS`. Defaults to `OFF`. For more information see [Logging Express Workflows](https://docs.aws.amazon.com/step-functions/latest/dg/cw-logs.html), [Log Levels](https://docs.aws.amazon.com/step-functions/latest/dg/cloudwatch-log-level.html) and [Logging Configuration](https://docs.aws.amazon.com/step-functions/latest/apireference/API_CreateStateMachine.html) in the AWS Step Functions User Guide.
  /// [name] The name of the state machine. The name should only contain `0`-`9`, `A`-`Z`, `a`-`z`, `-` and `_`. If omitted, the provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [publish] Set to true to publish a version of the state machine during creation. Default: false.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) of the IAM role to use for this state machine.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tracingConfiguration] Selects whether AWS X-Ray tracing is enabled.
  /// [type] Determines whether a Standard or Express state machine is created. The default is `STANDARD`. You cannot update the type of a state machine once it has been created. Valid values: `STANDARD`, `EXPRESS`.
  StateMachineArgs({
    required this.definition,
    this.encryptionConfiguration,
    this.loggingConfiguration,
    this.name,
    this.namePrefix,
    this.publish,
    this.region,
    required this.roleArn,
    this.tags,
    this.tracingConfiguration,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': definition,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<StateMachineEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'loggingConfiguration': ?pulumi.Input.mapOptionalInputValue<StateMachineLoggingConfiguration, Map<String, dynamic>>(loggingConfiguration, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'publish': ?publish,
      'region': ?region,
      'roleArn': roleArn,
      'tags': ?tags,
      'tracingConfiguration': ?pulumi.Input.mapOptionalInputValue<StateMachineTracingConfiguration, Map<String, dynamic>>(tracingConfiguration, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory StateMachineArgs.fromMap(Map<String, dynamic> map) {
    return StateMachineArgs(
      definition: (map['definition'] as String).input(),
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : ((StateMachineEncryptionConfiguration.fromMap((map['encryptionConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      loggingConfiguration: map['loggingConfiguration'] == null ? null : ((StateMachineLoggingConfiguration.fromMap((map['loggingConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      namePrefix: map['namePrefix'] == null ? null : ((map['namePrefix'] as String).input()).input(),
      publish: map['publish'] == null ? null : ((map['publish'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: (map['roleArn'] as String).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tracingConfiguration: map['tracingConfiguration'] == null ? null : ((StateMachineTracingConfiguration.fromMap((map['tracingConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
    );
  }
}

