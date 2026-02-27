import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_target_args.dart';

/// Creates Security Hub custom action.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Security Hub custom action using the action target ARN. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/actionTarget:ActionTarget example arn:aws:securityhub:eu-west-1:312940875350:action/custom/a
/// ```
class ActionTarget extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Security Hub custom action target.
  late final pulumi.Output<String> arn;

  /// The name of the custom action target.
  late final pulumi.Output<String> description;

  /// The ID for the custom action target.
  late final pulumi.Output<String> identifier;

  /// The description for the custom action target.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  ActionTarget(
    String name, {
    ActionTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/actionTarget:ActionTarget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.identifier = registerOutput<String>('identifier');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
