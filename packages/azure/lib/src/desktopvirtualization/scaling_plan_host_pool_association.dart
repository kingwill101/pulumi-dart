import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_plan_host_pool_association_args.dart';

/// Manages a Virtual Desktop Scaling Plan Host Pool Association.
///
/// ## Import
///
/// Associations between Virtual Desktop Scaling Plans and Virtual Desktop Host Pools can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:desktopvirtualization/scalingPlanHostPoolAssociation:ScalingPlanHostPoolAssociation example "/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.DesktopVirtualization/scalingPlans/plan1|/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myGroup1/providers/Microsoft.DesktopVirtualization/hostPools/myhostpool"
/// ```
///
/// > **Note:** This ID is specific to Terraform - and is of the format `{virtualDesktopScalingPlanID}|{virtualDesktopHostPoolID}`.
class ScalingPlanHostPoolAssociation extends pulumi.CustomResource {
  /// Should the Scaling Plan be enabled on this Host Pool.
  late final pulumi.Output<bool> enabled;
  /// The resource ID for the Virtual Desktop Host Pool. Changing this forces a new resource to be created.
  late final pulumi.Output<String> hostPoolId;
  /// The resource ID for the Virtual Desktop Scaling Plan. Changing this forces a new resource to be created.
  late final pulumi.Output<String> scalingPlanId;

  /// Creates a new [ScalingPlanHostPoolAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScalingPlanHostPoolAssociation]. {@macro pulumi_desktopvirtualization_scaling_plan_host_pool_association_scaling_plan_host_pool_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScalingPlanHostPoolAssociation(
    String name, {
    ScalingPlanHostPoolAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:desktopvirtualization/scalingPlanHostPoolAssociation:ScalingPlanHostPoolAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool>('enabled');
    this.hostPoolId = registerOutput<String>('hostPoolId');
    this.scalingPlanId = registerOutput<String>('scalingPlanId');
  }
}
