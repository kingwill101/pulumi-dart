import 'package:pulumi/pulumi.dart';
import 'prepared_statement_args.dart';

/// Resource for managing an Athena Prepared Statement.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Athena Prepared Statement using the `WORKGROUP-NAME/STATEMENT-NAME`. For example:
///
/// ```sh
/// $ pulumi import aws:athena/preparedStatement:PreparedStatement example 12345abcde/example
/// ```
class PreparedStatement extends CustomResource {
  /// Brief explanation of prepared statement. Maximum length of 1024.
  late final Output<String?> description;

  /// The name of the prepared statement. Maximum length of 256.
  late final Output<String> name;

  /// The query string for the prepared statement.
  late final Output<String> queryStatement;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the workgroup to which the prepared statement belongs.
  late final Output<String> workgroup;

  PreparedStatement(
    String name, {
    PreparedStatementArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:athena/preparedStatement:PreparedStatement',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.queryStatement = registerOutput<String>('queryStatement');
    this.region = registerOutput<String>('region');
    this.workgroup = registerOutput<String>('workgroup');
  }
}
