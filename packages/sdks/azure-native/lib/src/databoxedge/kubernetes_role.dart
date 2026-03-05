import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_info_response.dart';
import 'kubernetes_role_args.dart';
import 'kubernetes_role_resources_response.dart';
import 'system_data_response.dart';

/// The limited preview of Kubernetes Cluster Management from the Azure supports:
/// 1. Using a simple turn-key option in Azure Portal, deploy a Kubernetes cluster on your Azure Stack Edge device.
/// 2. Configure Kubernetes cluster running on your device with Arc enabled Kubernetes with a click of a button in the Azure Portal.
/// Azure Arc enables organizations to view, manage, and govern their on-premises Kubernetes clusters using the Azure Portal, command line tools, and APIs.
/// 3. Easily configure Persistent Volumes using SMB and NFS shares for storing container data.
/// For more information, refer to the document here: https://databoxupdatepackages.blob.core.windows.net/documentation/Microsoft-Azure-Stack-Edge-K8-Cloud-Management-20210323.pdf
/// Or Demo: https://databoxupdatepackages.blob.core.windows.net/documentation/Microsoft-Azure-Stack-Edge-K8S-Cloud-Management-20210323.mp4
/// By using this feature, you agree to the preview legal terms. See the https://azure.microsoft.com/en-us/support/legal/preview-supplemental-terms/
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
///     var kubernetesRole = new AzureNative.DataBoxEdge.KubernetesRole("kubernetesRole", new()
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
/// 		_, err := databoxedge.NewKubernetesRole(ctx, "kubernetesRole", &databoxedge.KubernetesRoleArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.databoxedge.KubernetesRole;
/// import com.pulumi.azurenative.databoxedge.KubernetesRoleArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var kubernetesRole = new KubernetesRole("kubernetesRole", KubernetesRoleArgs.builder()
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
/// const kubernetesRole = new azure_native.databoxedge.KubernetesRole("kubernetesRole", {
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
/// kubernetes_role = azure_native.databoxedge.KubernetesRole("kubernetesRole",
///     device_name="testedgedevice",
///     name="IoTRole1",
///     resource_group_name="GroupForEdgeAutomation")
///
/// ```
///
/// ```yaml
/// resources:
///   kubernetesRole:
///     type: azure-native:databoxedge:KubernetesRole
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
/// $ pulumi import azure-native:databoxedge:KubernetesRole IoTRole1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/{deviceName}/roles/{name}
/// ```
class KubernetesRole extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Host OS supported by the Kubernetes role.
  late final pulumi.Output<String> hostPlatform;
  /// Platform where the runtime is hosted.
  late final pulumi.Output<String> hostPlatformType;
  /// Role type.
  /// Expected value is 'Kubernetes'.
  late final pulumi.Output<String> kind;
  /// Kubernetes cluster configuration
  late final pulumi.Output<KubernetesClusterInfoResponse> kubernetesClusterInfo;
  /// Kubernetes role resources
  late final pulumi.Output<KubernetesRoleResourcesResponse> kubernetesRoleResources;
  /// The object name.
  late final pulumi.Output<String> name;
  /// State of Kubernetes deployment
  late final pulumi.Output<String> provisioningState;
  /// Role status.
  late final pulumi.Output<String> roleStatus;
  /// Metadata pertaining to creation and last modification of Role
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The hierarchical type of the object.
  late final pulumi.Output<String> type;

  /// Creates a new [KubernetesRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KubernetesRole]. {@macro pulumi_databoxedge_kubernetes_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KubernetesRole(
    String name, {
    KubernetesRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databoxedge:KubernetesRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    hostPlatform = registerOutput<String>('hostPlatform');
    hostPlatformType = registerOutput<String>('hostPlatformType');
    kind = registerOutput<String>('kind');
    kubernetesClusterInfo = registerOutput<KubernetesClusterInfoResponse>('kubernetesClusterInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kubernetesRoleResources = registerOutput<KubernetesRoleResourcesResponse>('kubernetesRoleResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesRoleResourcesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    roleStatus = registerOutput<String>('roleStatus');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
