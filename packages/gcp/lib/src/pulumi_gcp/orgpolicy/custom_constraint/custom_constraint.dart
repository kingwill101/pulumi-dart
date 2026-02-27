import 'package:pulumi/pulumi.dart';
import 'custom_constraint_args.dart';

/// Custom constraints are created by administrators to provide more granular and customizable control over the specific fields that are restricted by your organization policies.
///
///
/// To get more information about CustomConstraint, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/docs/reference/orgpolicy/rest/v2/organizations.constraints)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints)
/// * [Supported Services](https://docs.cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services)
///
/// ## Example Usage
///
/// ### Org Policy Custom Constraint Basic
///
///
///
/// ### Org Policy Custom Constraint Full
///
///
///
///
/// ## Import
///
/// CustomConstraint can be imported using any of these accepted formats:
///
/// * `{{parent}}/customConstraints/{{name}}`
///
/// When using the `pulumi import` command, CustomConstraint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:orgpolicy/customConstraint:CustomConstraint default {{parent}}/customConstraints/{{name}}
/// ```
class CustomConstraint extends CustomResource {
  /// The action to take if the condition is met.
  /// Possible values are: `ALLOW`, `DENY`.
  late final Output<String> actionType;

  /// A CEL condition that refers to a supported service resource, for example `resource.management.autoUpgrade == false`. For details about CEL usage, see [Common Expression Language](https://docs.cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints#common_expression_language).
  late final Output<String> condition;

  /// A human-friendly description of the constraint to display as an error message when the policy is violated.
  late final Output<String?> description;

  /// A human-friendly name for the constraint.
  late final Output<String?> displayName;

  /// A list of RESTful methods for which to enforce the constraint. Can be `CREATE`, `UPDATE`, or both. Not all Google Cloud services support both methods. To see supported methods for each service, find the service in [Supported services](https://docs.cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services).
  late final Output<List<String>> methodTypes;

  /// Immutable. The name of the custom constraint. This is unique within the organization.
  late final Output<String> name;

  /// The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  late final Output<String> parent;

  /// Immutable. The fully qualified name of the Google Cloud REST resource containing the object and field you want to restrict. For example, `container.googleapis.com/NodePool`.
  late final Output<List<String>> resourceTypes;

  /// Output only. The timestamp representing when the constraint was last updated.
  late final Output<String> updateTime;

  CustomConstraint(
    String name, {
    CustomConstraintArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:orgpolicy/customConstraint:CustomConstraint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actionType = registerOutput<String>('actionType');
    this.condition = registerOutput<String>('condition');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.methodTypes = registerOutput<List<String>>('methodTypes');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.resourceTypes = registerOutput<List<String>>('resourceTypes');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
