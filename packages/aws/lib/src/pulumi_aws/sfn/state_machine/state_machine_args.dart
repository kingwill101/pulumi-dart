// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../state_machine_encryption_configuration/state_machine_encryption_configuration.dart';
import '../state_machine_logging_configuration/state_machine_logging_configuration.dart';
import '../state_machine_tracing_configuration/state_machine_tracing_configuration.dart';

/// The set of arguments for StateMachine.
class StateMachineArgs {
  /// The [Amazon States Language](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html) definition of the state machine.
  final Input<String> definition;

  /// Defines what encryption configuration is used to encrypt data in the State Machine. For more information see [TBD] in the AWS Step Functions User Guide.
  final Input<StateMachineEncryptionConfiguration>? encryptionConfiguration;

  /// Defines what execution history events are logged and where they are logged. The <span pulumi-lang-nodejs="`loggingConfiguration`" pulumi-lang-dotnet="`LoggingConfiguration`" pulumi-lang-go="`loggingConfiguration`" pulumi-lang-python="`logging_configuration`" pulumi-lang-yaml="`loggingConfiguration`" pulumi-lang-java="`loggingConfiguration`">`logging_configuration`</span> parameter is valid when <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is set to `STANDARD` or `EXPRESS`. Defaults to `OFF`. For more information see [Logging Express Workflows](https://docs.aws.amazon.com/step-functions/latest/dg/cw-logs.html), [Log Levels](https://docs.aws.amazon.com/step-functions/latest/dg/cloudwatch-log-level.html) and [Logging Configuration](https://docs.aws.amazon.com/step-functions/latest/apireference/API_CreateStateMachine.html) in the AWS Step Functions User Guide.
  final Input<StateMachineLoggingConfiguration>? loggingConfiguration;

  /// The name of the state machine. The name should only contain <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>-<span pulumi-lang-nodejs="`9`" pulumi-lang-dotnet="`9`" pulumi-lang-go="`9`" pulumi-lang-python="`9`" pulumi-lang-yaml="`9`" pulumi-lang-java="`9`">`9`</span>, `A`-`Z`, <span pulumi-lang-nodejs="`a`" pulumi-lang-dotnet="`A`" pulumi-lang-go="`a`" pulumi-lang-python="`a`" pulumi-lang-yaml="`a`" pulumi-lang-java="`a`">`a`</span>-<span pulumi-lang-nodejs="`z`" pulumi-lang-dotnet="`Z`" pulumi-lang-go="`z`" pulumi-lang-python="`z`" pulumi-lang-yaml="`z`" pulumi-lang-java="`z`">`z`</span>, `-` and `_`. If omitted, the provider will assign a random, unique name.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<String>? namePrefix;

  /// Set to true to publish a version of the state machine during creation. Default: false.
  final Input<bool>? publish;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) of the IAM role to use for this state machine.
  final Input<String> roleArn;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Selects whether AWS X-Ray tracing is enabled.
  final Input<StateMachineTracingConfiguration>? tracingConfiguration;

  /// Determines whether a Standard or Express state machine is created. The default is `STANDARD`. You cannot update the type of a state machine once it has been created. Valid values: `STANDARD`, `EXPRESS`.
  final Input<String>? type;

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
    final map = <String, dynamic>{};
    map['definition'] = definition;
    final encryptionConfigurationValue = encryptionConfiguration;
    if (encryptionConfigurationValue != null) {
      map['encryptionConfiguration'] = Input.mapOptionalInputValue<
              StateMachineEncryptionConfiguration, Map<String, dynamic>>(
          encryptionConfigurationValue, (value) => value.toMap());
    }
    final loggingConfigurationValue = loggingConfiguration;
    if (loggingConfigurationValue != null) {
      map['loggingConfiguration'] = Input.mapOptionalInputValue<
              StateMachineLoggingConfiguration, Map<String, dynamic>>(
          loggingConfigurationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final publishValue = publish;
    if (publishValue != null) {
      map['publish'] = publishValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tracingConfigurationValue = tracingConfiguration;
    if (tracingConfigurationValue != null) {
      map['tracingConfiguration'] = Input.mapOptionalInputValue<
              StateMachineTracingConfiguration, Map<String, dynamic>>(
          tracingConfigurationValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory StateMachineArgs.fromMap(Map<String, dynamic> map) {
    return StateMachineArgs(
      definition: Input.asInput<String>(map['definition']),
      encryptionConfiguration:
          Input.asOptionalInput<StateMachineEncryptionConfiguration>(
              map['encryptionConfiguration']),
      loggingConfiguration:
          Input.asOptionalInput<StateMachineLoggingConfiguration>(
              map['loggingConfiguration']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      publish: Input.asOptionalInput<bool>(map['publish']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tracingConfiguration:
          Input.asOptionalInput<StateMachineTracingConfiguration>(
              map['tracingConfiguration']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
