import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_dynamic_scope_args.dart';
import 'assignment_dynamic_scope_filter.dart';

/// Manages a Dynamic Maintenance Assignment.
///
/// > **Note:** Only valid for `InGuestPatch` Maintenance Configuration Scopes.
///
/// ## Import
///
/// Dynamic Maintenance Assignments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:maintenance/assignmentDynamicScope:AssignmentDynamicScope example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Maintenance/configurationAssignments/assignmentName
/// ```
class AssignmentDynamicScope extends pulumi.CustomResource {
  /// A `filter` block as defined below.
  late final pulumi.Output<AssignmentDynamicScopeFilter> filter;
  /// The ID of the Maintenance Configuration Resource. Changing this forces a new Dynamic Maintenance Assignment to be created.
  late final pulumi.Output<String> maintenanceConfigurationId;
  /// The name which should be used for this Dynamic Maintenance Assignment. Changing this forces a new Dynamic Maintenance Assignment to be created.
  ///
  /// > **Note:** The `name` must be unique per subscription.
  late final pulumi.Output<String> name;

  /// Creates a new [AssignmentDynamicScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssignmentDynamicScope]. {@macro pulumi_maintenance_assignment_dynamic_scope_assignment_dynamic_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssignmentDynamicScope(
    String name, {
    AssignmentDynamicScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:maintenance/assignmentDynamicScope:AssignmentDynamicScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.filter = registerOutput<AssignmentDynamicScopeFilter>('filter');
    this.maintenanceConfigurationId = registerOutput<String>('maintenanceConfigurationId');
    this.name = registerOutput<String>('name');
  }
}
