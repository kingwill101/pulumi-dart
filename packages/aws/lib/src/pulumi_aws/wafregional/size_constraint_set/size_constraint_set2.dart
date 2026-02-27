import 'package:pulumi/pulumi.dart';
import '../size_constraint_set_size_constraint/size_constraint_set_size_constraint2.dart';
import 'size_constraint_set_args2.dart';

/// Provides a WAF Regional Size Constraint Set Resource for use with Application Load Balancer.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Size Constraint Set using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/sizeConstraintSet:SizeConstraintSet size_constraint_set a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class SizeConstraintSet2 extends CustomResource {
  late final Output<String> arn;

  /// The name or description of the Size Constraint Set.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the parts of web requests that you want to inspect the size of.
  late final Output<List<SizeConstraintSetSizeConstraint2>?> sizeConstraints;

  SizeConstraintSet2(
    String name, {
    SizeConstraintSetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/sizeConstraintSet:SizeConstraintSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.sizeConstraints =
        registerOutput<List<SizeConstraintSetSizeConstraint2>?>(
            'sizeConstraints');
  }
}
