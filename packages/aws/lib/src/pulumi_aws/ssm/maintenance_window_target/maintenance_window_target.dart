import 'package:pulumi/pulumi.dart' as pulumi;
import '../maintenance_window_target_target/maintenance_window_target_target.dart';
import 'maintenance_window_target_args.dart';

/// Provides an SSM Maintenance Window Target resource
///
/// ## Example Usage
///
/// ### Instance Target
///
///
///
/// ### Resource Group Target
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `window_id` - (String) ID of the maintenance window.
/// * `id` - (String) ID of the maintenance window target.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSM Maintenance Window targets using `WINDOW_ID/WINDOW_TARGET_ID`. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/maintenanceWindowTarget:MaintenanceWindowTarget example mw-0c50858d01EXAMPLE/23639a0b-ddbc-4bca-9e72-78d96EXAMPLE
/// ```
class MaintenanceWindowTarget extends pulumi.CustomResource {
  /// The description of the maintenance window target.
  late final pulumi.Output<String?> description;

  /// The name of the maintenance window target.
  late final pulumi.Output<String> name;

  /// User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this Maintenance Window.
  late final pulumi.Output<String?> ownerInformation;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The type of target being registered with the Maintenance Window. Possible values are `INSTANCE` and `RESOURCE_GROUP`.
  late final pulumi.Output<String> resourceType;

  /// The targets to register with the maintenance window. In other words, the instances to run commands on when the maintenance window runs. You can specify targets using instance IDs, resource group names, or tags that have been applied to instances. For more information about these examples formats see
  /// (https://docs.aws.amazon.com/systems-manager/latest/userguide/mw-cli-tutorial-targets-examples.html)
  late final pulumi.Output<List<MaintenanceWindowTargetTarget>> targets;

  /// The Id of the maintenance window to register the target with.
  late final pulumi.Output<String> windowId;

  MaintenanceWindowTarget(
    String name, {
    MaintenanceWindowTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/maintenanceWindowTarget:MaintenanceWindowTarget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.ownerInformation = registerOutput<String?>('ownerInformation');
    this.region = registerOutput<String>('region');
    this.resourceType = registerOutput<String>('resourceType');
    this.targets =
        registerOutput<List<MaintenanceWindowTargetTarget>>('targets');
    this.windowId = registerOutput<String>('windowId');
  }
}
