import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_constraint_args.dart';

/// Creates a custom constraint. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the organization does not exist. Returns a `google.rpc.Status` with `google.rpc.Code.ALREADY_EXISTS` if the constraint already exists on the given organization.
class CustomConstraint extends pulumi.CustomResource {
  /// Allow or deny type.
  late final pulumi.Output<String> actionType;

  /// Org policy condition/expression. For example: `resource.instanceName.matches("[production|test]_.*_(\d)+")` or, `resource.management.auto_upgrade == true` The max length of the condition is 1000 characters.
  late final pulumi.Output<String> condition;

  /// Detailed information about this custom policy constraint. The max length of the description is 2000 characters.
  late final pulumi.Output<String> description;

  /// One line display name for the UI. The max length of the display_name is 200 characters.
  late final pulumi.Output<String> displayName;

  /// All the operations being applied for this constraint.
  late final pulumi.Output<List<String>> methodTypes;

  /// Immutable. Name of the constraint. This is unique within the organization. Format of the name should be * `organizations/{organization_id}/customConstraints/{custom_constraint_id}` Example: `organizations/123/customConstraints/custom.createOnlyE2TypeVms` The max length is 70 characters and the minimum length is 1. Note that the prefix `organizations/{organization_id}/customConstraints/` is not counted.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Immutable. The resource instance type on which this policy applies. Format will be of the form : `/` Example: * `compute.googleapis.com/Instance`.
  late final pulumi.Output<List<String>> resourceTypes;

  /// The last time this custom constraint was updated. This represents the last time that the `CreateCustomConstraint` or `UpdateCustomConstraint` RPC was called
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CustomConstraint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomConstraint]. {@macro pulumi_orgpolicy_v2_custom_constraint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomConstraint(
    String name, {
    CustomConstraintArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:orgpolicy/v2:CustomConstraint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actionType = registerOutput<String>('actionType');
    this.condition = registerOutput<String>('condition');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.methodTypes = registerOutput<List<String>>('methodTypes');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.resourceTypes = registerOutput<List<String>>('resourceTypes');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
