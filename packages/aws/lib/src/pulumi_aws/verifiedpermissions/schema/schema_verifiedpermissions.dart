import 'package:pulumi/pulumi.dart' as pulumi;
import '../schema_definition/schema_definition.dart';
import 'schema_verifiedpermissions_args.dart';

/// This is a Terraform resource for managing an AWS Verified Permissions Policy Store Schema.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Verified Permissions Policy Store Schema using the `policy_store_id`. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedpermissions/schema:Schema example DxQg2j8xvXJQ1tQCYNWj9T
/// ```
class SchemaVerifiedpermissions extends pulumi.CustomResource {
  /// The definition of the schema.
  late final pulumi.Output<SchemaDefinition> definition;

  /// (Optional) Identifies the namespaces of the entities referenced by this schema.
  late final pulumi.Output<List<String>> namespaces;

  /// The ID of the Policy Store.
  late final pulumi.Output<String> policyStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  SchemaVerifiedpermissions(
    String name, {
    SchemaVerifiedpermissionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:verifiedpermissions/schema:Schema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.definition = registerOutput<SchemaDefinition>('definition');
    this.namespaces = registerOutput<List<String>>('namespaces');
    this.policyStoreId = registerOutput<String>('policyStoreId');
    this.region = registerOutput<String>('region');
  }
}
