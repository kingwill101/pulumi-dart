import 'package:pulumi/pulumi.dart';
import '../alias_routing_strategy/alias_routing_strategy.dart';
import 'alias_args.dart';

/// Provides a GameLift Alias resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import GameLift Aliases using the ID. For example:
///
/// ```sh
/// $ pulumi import aws:gamelift/alias:Alias example <alias-id>
/// ```
class Alias extends CustomResource {
  /// Alias ARN.
  late final Output<String> arn;

  /// Description of the alias.
  late final Output<String?> description;

  /// Name of the alias.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the fleet and/or routing type to use for the alias.
  late final Output<AliasRoutingStrategy> routingStrategy;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Alias(
    String name, {
    AliasArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:gamelift/alias:Alias',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.routingStrategy =
        registerOutput<AliasRoutingStrategy>('routingStrategy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
