import 'package:pulumi/pulumi.dart';
import '../schema_definition/schema_definition.dart';
import 'schema_args3.dart';

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
class Schema3 extends CustomResource {
  /// The definition of the schema.
  late final Output<SchemaDefinition> definition;

  /// (Optional) Identifies the namespaces of the entities referenced by this schema.
  late final Output<List<String>> namespaces;

  /// The ID of the Policy Store.
  late final Output<String> policyStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Schema3(
    String name, {
    SchemaArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:verifiedpermissions/schema:Schema',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.definition = registerOutput<SchemaDefinition>('definition');
    this.namespaces = registerOutput<List<String>>('namespaces');
    this.policyStoreId = registerOutput<String>('policyStoreId');
    this.region = registerOutput<String>('region');
  }
}
