import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_agent_route_args.dart';

class GradientaiAgentRoute extends pulumi.CustomResource {
  /// The UUID of the child agent.
  late final pulumi.Output<String> childAgentUuid;
  /// if-case condition for the route.
  late final pulumi.Output<String?> ifCase;
  /// The UUID of the parent agent.
  late final pulumi.Output<String> parentAgentUuid;
  late final pulumi.Output<bool?> rollback;
  /// A name for the route.
  late final pulumi.Output<String?> routeName;
  /// The UUID of the linkage
  late final pulumi.Output<String> uuid;

  /// Creates a new [GradientaiAgentRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GradientaiAgentRoute]. {@macro pulumi_index_gradientai_agent_route_gradientai_agent_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GradientaiAgentRoute(
    String name, {
    GradientaiAgentRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/gradientaiAgentRoute:GradientaiAgentRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.childAgentUuid = registerOutput<String>('childAgentUuid');
    this.ifCase = registerOutput<String?>('ifCase');
    this.parentAgentUuid = registerOutput<String>('parentAgentUuid');
    this.rollback = registerOutput<bool?>('rollback');
    this.routeName = registerOutput<String?>('routeName');
    this.uuid = registerOutput<String>('uuid');
  }
}
