import 'package:pulumi/pulumi.dart';
import '../cx_environment_version_config/cx_environment_version_config.dart';
import 'cx_environment_args.dart';

/// Represents an environment for an agent. You can create multiple versions of your agent and publish them to separate environments.
/// When you edit an agent, you are editing the draft agent. At any point, you can save the draft agent as an agent version, which is an immutable snapshot of your agent.
/// When you save the draft agent, it is published to the default environment. When you create agent versions, you can publish them to custom environments. You can create a variety of custom environments for testing, development, production, etc.
///
///
/// To get more information about Environment, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.environments)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Environment Full
///
///
///
///
/// ## Import
///
/// Environment can be imported using any of these accepted formats:
///
/// * `{{parent}}/environments/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, Environment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxEnvironment:CxEnvironment default {{parent}}/environments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxEnvironment:CxEnvironment default {{parent}}/{{name}}
/// ```
class CxEnvironment extends CustomResource {
  /// The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  late final Output<String?> description;

  /// The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  late final Output<String> displayName;

  /// The name of the environment.
  late final Output<String> name;

  /// The Agent to create an Environment for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  late final Output<String?> parent;

  /// Update time of this environment. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  /// A list of configurations for flow versions. You should include version configs for all flows that are reachable from [Start Flow][Agent.start_flow] in the agent. Otherwise, an error will be returned.
  /// Structure is documented below.
  late final Output<List<CxEnvironmentVersionConfig>> versionConfigs;

  CxEnvironment(
    String name, {
    CxEnvironmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxEnvironment:CxEnvironment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String?>('parent');
    this.updateTime = registerOutput<String>('updateTime');
    this.versionConfigs =
        registerOutput<List<CxEnvironmentVersionConfig>>('versionConfigs');
  }
}
