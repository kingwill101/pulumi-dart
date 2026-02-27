import 'package:pulumi/pulumi.dart' as pulumi;
import '../size_constraint_set_size_constraint/size_constraint_set_size_constraint.dart';
import 'size_constraint_set_args.dart';

/// Use the `aws.waf.SizeConstraintSet` resource to manage WAF size constraint sets.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS WAF Size Constraint Set using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:waf/sizeConstraintSet:SizeConstraintSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class SizeConstraintSet extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN).
  late final pulumi.Output<String> arn;

  /// Name or description of the Size Constraint Set.
  late final pulumi.Output<String> name;

  /// Parts of web requests that you want to inspect the size of.
  late final pulumi.Output<List<SizeConstraintSetSizeConstraint>?>
      sizeConstraints;

  SizeConstraintSet(
    String name, {
    SizeConstraintSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/sizeConstraintSet:SizeConstraintSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.sizeConstraints =
        registerOutput<List<SizeConstraintSetSizeConstraint>?>(
            'sizeConstraints');
  }
}
