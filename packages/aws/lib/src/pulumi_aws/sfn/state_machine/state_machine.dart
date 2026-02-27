import 'package:pulumi/pulumi.dart';
import '../state_machine_encryption_configuration/state_machine_encryption_configuration.dart';
import '../state_machine_logging_configuration/state_machine_logging_configuration.dart';
import '../state_machine_tracing_configuration/state_machine_tracing_configuration.dart';
import 'state_machine_args.dart';

/// Provides a Step Function State Machine resource
///
/// ## Example Usage
///
/// ### Basic (Standard Workflow)
///
///
///
/// ### Basic (Express Workflow)
///
///
///
/// ### Publish (Publish SFN version)
///
///
///
/// ### Logging
///
/// > *NOTE:* See the [AWS Step Functions Developer Guide](https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html) for more information about enabling Step Function logging.
///
///
///
/// ### Encryption
///
/// > *NOTE:* See the section [Data at rest encyption](https://docs.aws.amazon.com/step-functions/latest/dg/encryption-at-rest.html) in the [AWS Step Functions Developer Guide](https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html) for more information about enabling encryption of data using a customer-managed key for Step Functions State Machines data.
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the state machine.
///
///
/// Using `pulumi import`, import State Machines using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:sfn/stateMachine:StateMachine foo arn:aws:states:eu-west-1:123456789098:stateMachine:bar
/// ```
class StateMachine extends CustomResource {
  /// The ARN of the state machine.
  late final Output<String> arn;

  /// The date the state machine was created.
  late final Output<String> creationDate;

  /// The [Amazon States Language](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html) definition of the state machine.
  late final Output<String> definition;
  late final Output<String> description;

  /// Defines what encryption configuration is used to encrypt data in the State Machine. For more information see [TBD] in the AWS Step Functions User Guide.
  late final Output<StateMachineEncryptionConfiguration>
      encryptionConfiguration;

  /// Defines what execution history events are logged and where they are logged. The `logging_configuration` parameter is valid when `type` is set to `STANDARD` or `EXPRESS`. Defaults to `OFF`. For more information see [Logging Express Workflows](https://docs.aws.amazon.com/step-functions/latest/dg/cw-logs.html), [Log Levels](https://docs.aws.amazon.com/step-functions/latest/dg/cloudwatch-log-level.html) and [Logging Configuration](https://docs.aws.amazon.com/step-functions/latest/apireference/API_CreateStateMachine.html) in the AWS Step Functions User Guide.
  late final Output<StateMachineLoggingConfiguration> loggingConfiguration;

  /// The name of the state machine. The name should only contain `0`-`9`, `A`-`Z`, `a`-`z`, `-` and `_`. If omitted, the provider will assign a random, unique name.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// Set to true to publish a version of the state machine during creation. Default: false.
  late final Output<bool?> publish;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<String> revisionId;

  /// The Amazon Resource Name (ARN) of the IAM role to use for this state machine.
  late final Output<String> roleArn;

  /// The ARN of the state machine version.
  late final Output<String> stateMachineVersionArn;

  /// The current status of the state machine. Either `ACTIVE` or `DELETING`.
  late final Output<String> status;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Selects whether AWS X-Ray tracing is enabled.
  late final Output<StateMachineTracingConfiguration> tracingConfiguration;

  /// Determines whether a Standard or Express state machine is created. The default is `STANDARD`. You cannot update the type of a state machine once it has been created. Valid values: `STANDARD`, `EXPRESS`.
  late final Output<String?> type;
  late final Output<String> versionDescription;

  StateMachine(
    String name, {
    StateMachineArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sfn/stateMachine:StateMachine',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationDate = registerOutput<String>('creationDate');
    this.definition = registerOutput<String>('definition');
    this.description = registerOutput<String>('description');
    this.encryptionConfiguration =
        registerOutput<StateMachineEncryptionConfiguration>(
            'encryptionConfiguration');
    this.loggingConfiguration =
        registerOutput<StateMachineLoggingConfiguration>(
            'loggingConfiguration');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.publish = registerOutput<bool?>('publish');
    this.region = registerOutput<String>('region');
    this.revisionId = registerOutput<String>('revisionId');
    this.roleArn = registerOutput<String>('roleArn');
    this.stateMachineVersionArn =
        registerOutput<String>('stateMachineVersionArn');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tracingConfiguration =
        registerOutput<StateMachineTracingConfiguration>(
            'tracingConfiguration');
    this.type = registerOutput<String?>('type');
    this.versionDescription = registerOutput<String>('versionDescription');
  }
}
