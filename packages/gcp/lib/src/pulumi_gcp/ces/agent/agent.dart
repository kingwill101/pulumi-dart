import 'package:pulumi/pulumi.dart' as pulumi;
import '../agent_after_agent_callback/agent_after_agent_callback.dart';
import '../agent_after_model_callback/agent_after_model_callback.dart';
import '../agent_after_tool_callback/agent_after_tool_callback.dart';
import '../agent_before_agent_callback/agent_before_agent_callback.dart';
import '../agent_before_model_callback/agent_before_model_callback.dart';
import '../agent_before_tool_callback/agent_before_tool_callback.dart';
import '../agent_model_settings/agent_model_settings.dart';
import '../agent_remote_dialogflow_agent/agent_remote_dialogflow_agent.dart';
import '../agent_toolset/agent_toolset.dart';
import 'agent_args.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Ces Agent Basic
///
///
///
/// ### Ces Agent Remote Dialogflow Agent
///
///
///
///
/// ## Import
///
/// Agent can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{app}}/agents/{{name}}`
///
/// * `{{project}}/{{location}}/{{app}}/{{name}}`
///
/// * `{{location}}/{{app}}/{{name}}`
///
/// When using the `pulumi import` command, Agent can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/agent:Agent default projects/{{project}}/locations/{{location}}/apps/{{app}}/agents/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/agent:Agent default {{project}}/{{location}}/{{app}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/agent:Agent default {{location}}/{{app}}/{{name}}
/// ```
class Agent extends pulumi.CustomResource {
  /// The callbacks to execute after the agent is called.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  late final pulumi.Output<List<AgentAfterAgentCallback>?> afterAgentCallbacks;

  /// The callbacks to execute after the model is called. If there are multiple
  /// calls to the model, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  late final pulumi.Output<List<AgentAfterModelCallback>?> afterModelCallbacks;

  /// The callbacks to execute after the tool is invoked. If there are multiple
  /// tool invocations, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  late final pulumi.Output<List<AgentAfterToolCallback>?> afterToolCallbacks;

  /// The ID to use for the agent, which will become the final component of
  /// the agent's resource name. If not provided, a unique ID will be
  /// automatically assigned for the agent.
  late final pulumi.Output<String?> agentId;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> app;

  /// The callbacks to execute before the agent is called.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  late final pulumi.Output<List<AgentBeforeAgentCallback>?>
      beforeAgentCallbacks;

  /// The callbacks to execute before the model is called. If there are multiple
  /// calls to the model, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  late final pulumi.Output<List<AgentBeforeModelCallback>?>
      beforeModelCallbacks;

  /// The callbacks to execute before the tool is invoked. If there are multiple
  /// tool invocations, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  late final pulumi.Output<List<AgentBeforeToolCallback>?> beforeToolCallbacks;

  /// List of child agents in the agent tree.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  late final pulumi.Output<List<String>?> childAgents;

  /// Timestamp when the agent was created.
  late final pulumi.Output<String> createTime;

  /// Human-readable description of the agent.
  late final pulumi.Output<String?> description;

  /// Display name of the agent.
  late final pulumi.Output<String> displayName;

  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  late final pulumi.Output<String> etag;

  /// If the agent is generated by the LLM assistant, this field contains a
  /// descriptive summary of the generation.
  late final pulumi.Output<String> generatedSummary;

  /// List of guardrails for the agent.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  late final pulumi.Output<List<String>?> guardrails;

  /// Instructions for the LLM model to guide the agent's behavior.
  late final pulumi.Output<String?> instruction;

  /// Default agent type. The agent uses instructions and callbacks specified in
  /// the agent to perform the task using a large language model.
  late final pulumi.Output<Map<String, dynamic>?> llmAgent;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  late final pulumi.Output<AgentModelSettings?> modelSettings;

  /// Identifier. The unique identifier of the agent.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The agent which will transfer execution to an existing remote
  /// [Dialogflow](https://cloud.google.com/dialogflow/cx/docs/concept/console-conversational-agents)
  /// agent flow. The corresponding Dialogflow agent will process subsequent user
  /// queries until the session ends or flow ends and the control is transferred
  /// back to the parent CES agent.
  /// Structure is documented below.
  late final pulumi.Output<AgentRemoteDialogflowAgent?> remoteDialogflowAgent;

  /// List of available tools for the agent.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  late final pulumi.Output<List<String>?> tools;

  /// List of toolsets for the agent.
  /// Structure is documented below.
  late final pulumi.Output<List<AgentToolset>?> toolsets;

  /// Timestamp when the agent was last updated.
  late final pulumi.Output<String> updateTime;

  Agent(
    String name, {
    AgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/agent:Agent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.afterAgentCallbacks =
        registerOutput<List<AgentAfterAgentCallback>?>('afterAgentCallbacks');
    this.afterModelCallbacks =
        registerOutput<List<AgentAfterModelCallback>?>('afterModelCallbacks');
    this.afterToolCallbacks =
        registerOutput<List<AgentAfterToolCallback>?>('afterToolCallbacks');
    this.agentId = registerOutput<String?>('agentId');
    this.app = registerOutput<String>('app');
    this.beforeAgentCallbacks =
        registerOutput<List<AgentBeforeAgentCallback>?>('beforeAgentCallbacks');
    this.beforeModelCallbacks =
        registerOutput<List<AgentBeforeModelCallback>?>('beforeModelCallbacks');
    this.beforeToolCallbacks =
        registerOutput<List<AgentBeforeToolCallback>?>('beforeToolCallbacks');
    this.childAgents = registerOutput<List<String>?>('childAgents');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.generatedSummary = registerOutput<String>('generatedSummary');
    this.guardrails = registerOutput<List<String>?>('guardrails');
    this.instruction = registerOutput<String?>('instruction');
    this.llmAgent = registerOutput<Map<String, dynamic>?>('llmAgent');
    this.location = registerOutput<String>('location');
    this.modelSettings = registerOutput<AgentModelSettings?>('modelSettings');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.remoteDialogflowAgent =
        registerOutput<AgentRemoteDialogflowAgent?>('remoteDialogflowAgent');
    this.tools = registerOutput<List<String>?>('tools');
    this.toolsets = registerOutput<List<AgentToolset>?>('toolsets');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
