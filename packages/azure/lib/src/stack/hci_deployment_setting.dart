import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_deployment_setting_args.dart';
import 'hci_deployment_setting_scale_unit.dart';

/// Manages a Stack HCI Deployment Setting.
///
/// > **Note:** Completion of the prerequisites of deploying the Azure Stack HCI in your environment is outside the scope of this document. For more details refer to the [Azure Stack HCI deployment sequence](https://learn.microsoft.com/en-us/azure-stack/hci/deploy/deployment-introduction#deployment-sequence). If you encounter issues completing the prerequisites, we'd recommend opening a ticket with Microsoft Support.
///
/// > **Note:** During the deployment process, the service will generate additional resources, including a new Arc Bridge Appliance and a Custom Location containing several Stack HCI Storage Paths. The provider will attempt to remove these resources on the deletion or recreation of `azure.stack.HciDeploymentSetting`.
///
/// ## Import
///
/// Stack HCI Deployment Settings can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:stack/hciDeploymentSetting:HciDeploymentSetting example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.AzureStackHCI/clusters/clus1/deploymentSettings/default
/// ```
class HciDeploymentSetting extends pulumi.CustomResource {
  /// Specifies a list of IDs of Azure ARC machine resource to be part of cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  late final pulumi.Output<List<String>> arcResourceIds;
  /// One or more `scale_unit` blocks as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  late final pulumi.Output<List<HciDeploymentSettingScaleUnit>> scaleUnits;
  /// The ID of the Azure Stack HCI cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  late final pulumi.Output<String> stackHciClusterId;
  /// The deployment template version. The format must be a set of numbers separated by dots such as `10.0.0.0`. Changing this forces a new Stack HCI Deployment Setting to be created.
  late final pulumi.Output<String> version;

  /// Creates a new [HciDeploymentSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HciDeploymentSetting]. {@macro pulumi_stack_hci_deployment_setting_hci_deployment_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HciDeploymentSetting(
    String name, {
    HciDeploymentSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:stack/hciDeploymentSetting:HciDeploymentSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arcResourceIds = registerOutput<List<String>>('arcResourceIds');
    this.scaleUnits = registerOutput<List<HciDeploymentSettingScaleUnit>>('scaleUnits');
    this.stackHciClusterId = registerOutput<String>('stackHciClusterId');
    this.version = registerOutput<String>('version');
  }
}
