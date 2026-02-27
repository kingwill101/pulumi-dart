import 'package:pulumi/pulumi.dart';
import '../alias_routing_configuration/alias_routing_configuration.dart';
import 'alias_args4.dart';

/// Provides a Step Function State Machine Alias.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SFN (Step Functions) Alias using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:sfn/alias:Alias foo arn:aws:states:us-east-1:123456789098:stateMachine:myStateMachine:foo
/// ```
class Alias4 extends CustomResource {
  /// The Amazon Resource Name (ARN) identifying your state machine alias.
  late final Output<String> arn;

  /// The date the state machine alias was created.
  late final Output<String> creationDate;

  /// Description of the alias.
  late final Output<String?> description;

  /// Name for the alias you are creating.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The StateMachine alias' route configuration settings. Fields documented below
  late final Output<List<AliasRoutingConfiguration>> routingConfigurations;

  Alias4(
    String name, {
    AliasArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sfn/alias:Alias',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationDate = registerOutput<String>('creationDate');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.routingConfigurations =
        registerOutput<List<AliasRoutingConfiguration>>(
            'routingConfigurations');
  }
}
