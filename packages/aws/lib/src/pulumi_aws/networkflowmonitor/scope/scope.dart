import 'package:pulumi/pulumi.dart';
import '../scope_target/scope_target.dart';
import '../scope_timeouts/scope_timeouts.dart';
import 'scope_args.dart';

/// Manages a Network Flow Monitor Scope.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Flow Monitor Scope using the scope ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkflowmonitor/scope:Scope example example-scope-id
/// ```
class Scope extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the scope.
  late final Output<String> scopeArn;

  /// The identifier for the scope that includes the resources you want to get data results for.
  late final Output<String> scopeId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The targets to define the scope to be monitored. A target is an array of target resources, which are currently Region-account pairs.
  ///
  /// The following arguments are optional:
  late final Output<List<ScopeTarget>> targets;
  late final Output<ScopeTimeouts?> timeouts;

  Scope(
    String name, {
    ScopeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkflowmonitor/scope:Scope',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.scopeArn = registerOutput<String>('scopeArn');
    this.scopeId = registerOutput<String>('scopeId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targets = registerOutput<List<ScopeTarget>>('targets');
    this.timeouts = registerOutput<ScopeTimeouts?>('timeouts');
  }
}
