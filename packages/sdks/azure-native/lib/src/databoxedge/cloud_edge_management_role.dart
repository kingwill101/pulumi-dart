import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_edge_management_role_args.dart';
import 'edge_profile_response.dart';
import 'system_data_response.dart';

/// The preview of Virtual Machine Cloud Management from the Azure supports deploying and managing VMs on your Azure Stack Edge device from Azure Portal.
/// For more information, refer to: https://docs.microsoft.com/en-us/azure/databox-online/azure-stack-edge-gpu-virtual-machine-overview
/// By using this feature, you agree to the preview legal terms. See the https://azure.microsoft.com/en-us/support/legal/preview-supplemental-terms/ for additional details.
///
/// Uses Azure REST API version 2023-07-01. In version 2.x of the Azure Native provider, it used API version 2022-03-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RolePut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudEdgeManagementRole = new AzureNative.DataBoxEdge.CloudEdgeManagementRole("cloudEdgeManagementRole", new()
///     {
///         DeviceName = "testedgedevice",
///         Name = "IoTRole1",
///         ResourceGroupName = "GroupForEdgeAutomation",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	databoxedge "github.com/pulumi/pulumi-azure-native-sdk/databoxedge/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databoxedge.NewCloudEdgeManagementRole(ctx, "cloudEdgeManagementRole", &databoxedge.CloudEdgeManagementRoleArgs{
/// 			DeviceName:        pulumi.String("testedgedevice"),
/// 			Name:              pulumi.String("IoTRole1"),
/// 			ResourceGroupName: pulumi.String("GroupForEdgeAutomation"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_databoxedge_cloudedgemanagementrole" "cloudEdgeManagementRole" {
///   device_name         = "testedgedevice"
///   name                = "IoTRole1"
///   resource_group_name = "GroupForEdgeAutomation"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.databoxedge.CloudEdgeManagementRole;
/// import com.pulumi.azurenative.databoxedge.CloudEdgeManagementRoleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var cloudEdgeManagementRole = new CloudEdgeManagementRole("cloudEdgeManagementRole", CloudEdgeManagementRoleArgs.builder()
///             .deviceName("testedgedevice")
///             .name("IoTRole1")
///             .resourceGroupName("GroupForEdgeAutomation")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const cloudEdgeManagementRole = new azure_native.databoxedge.CloudEdgeManagementRole("cloudEdgeManagementRole", {
///     deviceName: "testedgedevice",
///     name: "IoTRole1",
///     resourceGroupName: "GroupForEdgeAutomation",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cloud_edge_management_role = azure_native.databoxedge.CloudEdgeManagementRole("cloudEdgeManagementRole",
///     device_name="testedgedevice",
///     name="IoTRole1",
///     resource_group_name="GroupForEdgeAutomation")
///
/// ```
///
/// ```yaml
/// resources:
///   cloudEdgeManagementRole:
///     type: azure-native:databoxedge:CloudEdgeManagementRole
///     properties:
///       deviceName: testedgedevice
///       name: IoTRole1
///       resourceGroupName: GroupForEdgeAutomation
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:databoxedge:CloudEdgeManagementRole IoTRole1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/{deviceName}/roles/{name}
/// ```
class CloudEdgeManagementRole extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Edge Profile of the resource
  late final pulumi.Output<EdgeProfileResponse> edgeProfile;
  /// Role type.
  /// Expected value is 'CloudEdgeManagement'.
  late final pulumi.Output<String> kind;
  /// Local Edge Management Status
  late final pulumi.Output<String> localManagementStatus;
  /// The object name.
  late final pulumi.Output<String> name;
  /// Role status.
  late final pulumi.Output<String> roleStatus;
  /// Metadata pertaining to creation and last modification of Role
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The hierarchical type of the object.
  late final pulumi.Output<String> type;

  /// Creates a new [CloudEdgeManagementRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudEdgeManagementRole]. {@macro pulumi_databoxedge_cloud_edge_management_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudEdgeManagementRole(
    String name, {
    CloudEdgeManagementRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databoxedge:CloudEdgeManagementRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    edgeProfile = registerOutput<EdgeProfileResponse>('edgeProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EdgeProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    localManagementStatus = registerOutput<String>('localManagementStatus');
    this.name = registerOutput<String>('name');
    roleStatus = registerOutput<String>('roleStatus');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
