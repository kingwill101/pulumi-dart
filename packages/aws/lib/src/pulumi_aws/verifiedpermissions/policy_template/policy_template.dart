import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_template_args.dart';

/// Resource for managing an AWS Verified Permissions Policy Template.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Verified Permissions Policy Store using the `policy_store_id:policy_template_id`. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedpermissions/policyTemplate:PolicyTemplate example policyStoreId:policyTemplateId
/// ```
class PolicyTemplate extends pulumi.CustomResource {
  /// The date the Policy Store was created.
  late final pulumi.Output<String> createdDate;

  /// Provides a description for the policy template.
  late final pulumi.Output<String?> description;

  /// The ID of the Policy Store.
  late final pulumi.Output<String> policyStoreId;

  /// The ID of the Policy Store.
  late final pulumi.Output<String> policyTemplateId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Defines the content of the statement, written in Cedar policy language.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> statement;

  PolicyTemplate(
    String name, {
    PolicyTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:verifiedpermissions/policyTemplate:PolicyTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createdDate = registerOutput<String>('createdDate');
    this.description = registerOutput<String?>('description');
    this.policyStoreId = registerOutput<String>('policyStoreId');
    this.policyTemplateId = registerOutput<String>('policyTemplateId');
    this.region = registerOutput<String>('region');
    this.statement = registerOutput<String>('statement');
  }
}
