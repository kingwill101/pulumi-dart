import 'package:pulumi/pulumi.dart';
import '../lf_tag_expression_expression/lf_tag_expression_expression.dart';
import 'lf_tag_expression_args.dart';

/// Resource for managing an AWS Lake Formation LF Tag Expression.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Lake Formation LF Tag Expression using the `name,catalog_id`. For example:
///
/// ```sh
/// $ pulumi import aws:lakeformation/lfTagExpression:LfTagExpression example example-tag-expression,123456789012
/// ```
class LfTagExpression extends CustomResource {
  /// ID of the Data Catalog. Defaults to the account ID if not specified.
  late final Output<String> catalogId;

  /// Description of the LF-Tag Expression.
  late final Output<String?> description;

  /// A list of LF-Tag conditions (key-value pairs). See expression for more details.
  ///
  /// The following arguments are optional:
  late final Output<List<LfTagExpressionExpression>> expressions;

  /// Name of the LF-Tag Expression.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  LfTagExpression(
    String name, {
    LfTagExpressionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/lfTagExpression:LfTagExpression',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String>('catalogId');
    this.description = registerOutput<String?>('description');
    this.expressions =
        registerOutput<List<LfTagExpressionExpression>>('expressions');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
