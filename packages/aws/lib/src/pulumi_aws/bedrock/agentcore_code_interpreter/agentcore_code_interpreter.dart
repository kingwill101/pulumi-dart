import 'package:pulumi/pulumi.dart';
import '../agentcore_code_interpreter_network_configuration/agentcore_code_interpreter_network_configuration.dart';
import '../agentcore_code_interpreter_timeouts/agentcore_code_interpreter_timeouts.dart';
import 'agentcore_code_interpreter_args.dart';

/// Manages an AWS Bedrock AgentCore Code Interpreter. Code Interpreter provides a secure environment for AI agents to execute Python code, enabling data analysis, calculations, and file processing capabilities.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Code Interpreter with Execution Role
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Code Interpreter using the code interpreter ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreCodeInterpreter:AgentcoreCodeInterpreter example CODEINTERPRETER1234567890
/// ```
class AgentcoreCodeInterpreter extends CustomResource {
  /// ARN of the Code Interpreter.
  late final Output<String> codeInterpreterArn;

  /// Unique identifier of the Code Interpreter.
  late final Output<String> codeInterpreterId;

  /// Description of the code interpreter.
  late final Output<String?> description;

  /// ARN of the IAM role that the code interpreter assumes for execution. Required when using `SANDBOX` network mode.
  late final Output<String?> executionRoleArn;

  /// Name of the code interpreter.
  late final Output<String> name;

  /// Network configuration for the code interpreter. See `network_configuration` below.
  ///
  /// The following arguments are optional:
  late final Output<AgentcoreCodeInterpreterNetworkConfiguration>
      networkConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<AgentcoreCodeInterpreterTimeouts?> timeouts;

  AgentcoreCodeInterpreter(
    String name, {
    AgentcoreCodeInterpreterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreCodeInterpreter:AgentcoreCodeInterpreter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.codeInterpreterArn = registerOutput<String>('codeInterpreterArn');
    this.codeInterpreterId = registerOutput<String>('codeInterpreterId');
    this.description = registerOutput<String?>('description');
    this.executionRoleArn = registerOutput<String?>('executionRoleArn');
    this.name = registerOutput<String>('name');
    this.networkConfiguration =
        registerOutput<AgentcoreCodeInterpreterNetworkConfiguration>(
            'networkConfiguration');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts =
        registerOutput<AgentcoreCodeInterpreterTimeouts?>('timeouts');
  }
}
