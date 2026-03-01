import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_agent_config_args.dart';

/// ## Import
///
/// Cloud Monitor Service Agent Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudmonitor/serviceAgentConfig:ServiceAgentConfig example <Alibaba Cloud Account ID>
/// ```
class ServiceAgentConfig extends pulumi.CustomResource {
  /// Whether the cloud monitoring plug-in is automatically installed on the newly purchased ECS host. Value:
  /// - true (default): The cloud monitoring plug-in is automatically installed on the newly purchased ECS host.
  /// - false: The cloud monitoring plug-in is not automatically installed on the newly purchased ECS host.
  late final pulumi.Output<bool?> enableInstallAgentNewEcs;

  /// Creates a new [ServiceAgentConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceAgentConfig]. {@macro pulumi_cloudmonitor_service_agent_config_service_agent_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceAgentConfig(
    String name, {
    ServiceAgentConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudmonitor/serviceAgentConfig:ServiceAgentConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enableInstallAgentNewEcs = registerOutput<bool?>('enableInstallAgentNewEcs');
  }
}
