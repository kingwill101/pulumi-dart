import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'application_properties_response.dart';
import 'system_data_response.dart';

/// The HDInsight cluster application
///
/// Uses Azure REST API version 2024-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-06-01, 2023-04-15-preview, 2023-08-15-preview, 2025-01-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hdinsight [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Application
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var application = new AzureNative.HDInsight.Application("application", new()
///     {
///         ApplicationName = "hue",
///         ClusterName = "cluster1",
///         Properties = new AzureNative.HDInsight.Inputs.ApplicationPropertiesArgs
///         {
///             ApplicationType = "CustomApplication",
///             ComputeProfile = new AzureNative.HDInsight.Inputs.ComputeProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Standard_D12_v2",
///                         },
///                         Name = "edgenode",
///                         TargetInstanceCount = 1,
///                     },
///                 },
///             },
///             Errors = new() { },
///             HttpsEndpoints = new[]
///             {
///                 new AzureNative.HDInsight.Inputs.ApplicationGetHttpsEndpointArgs
///                 {
///                     AccessModes = new[]
///                     {
///                         "WebPage",
///                     },
///                     DestinationPort = 20000,
///                     SubDomainSuffix = "dss",
///                 },
///             },
///             InstallScriptActions = new[]
///             {
///                 new AzureNative.HDInsight.Inputs.RuntimeScriptActionArgs
///                 {
///                     Name = "app-install-app1",
///                     Parameters = "-version latest -port 20000",
///                     Roles = new[]
///                     {
///                         "edgenode",
///                     },
///                     Uri = "https://.../install.sh",
///                 },
///             },
///             UninstallScriptActions = new() { },
///         },
///         ResourceGroupName = "rg1",
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
/// 	hdinsight "github.com/pulumi/pulumi-azure-native-sdk/hdinsight/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hdinsight.NewApplication(ctx, "application", &hdinsight.ApplicationArgs{
/// 			ApplicationName: pulumi.String("hue"),
/// 			ClusterName:     pulumi.String("cluster1"),
/// 			Properties: &hdinsight.ApplicationPropertiesArgs{
/// 				ApplicationType: pulumi.String("CustomApplication"),
/// 				ComputeProfile: &hdinsight.ComputeProfileArgs{
/// 					Roles: hdinsight.RoleArray{
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Standard_D12_v2"),
/// 							},
/// 							Name:                pulumi.String("edgenode"),
/// 							TargetInstanceCount: pulumi.Int(1),
/// 						},
/// 					},
/// 				},
/// 				Errors: hdinsight.ErrorsArray{},
/// 				HttpsEndpoints: hdinsight.ApplicationGetHttpsEndpointArray{
/// 					&hdinsight.ApplicationGetHttpsEndpointArgs{
/// 						AccessModes: pulumi.StringArray{
/// 							pulumi.String("WebPage"),
/// 						},
/// 						DestinationPort: pulumi.Int(20000),
/// 						SubDomainSuffix: pulumi.String("dss"),
/// 					},
/// 				},
/// 				InstallScriptActions: hdinsight.RuntimeScriptActionArray{
/// 					&hdinsight.RuntimeScriptActionArgs{
/// 						Name:       pulumi.String("app-install-app1"),
/// 						Parameters: pulumi.String("-version latest -port 20000"),
/// 						Roles: pulumi.StringArray{
/// 							pulumi.String("edgenode"),
/// 						},
/// 						Uri: pulumi.String("https://.../install.sh"),
/// 					},
/// 				},
/// 				UninstallScriptActions: hdinsight.RuntimeScriptActionArray{},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.hdinsight.Application;
/// import com.pulumi.azurenative.hdinsight.ApplicationArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ApplicationPropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ComputeProfileArgs;
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
///         var application = new Application("application", ApplicationArgs.builder()
///             .applicationName("hue")
///             .clusterName("cluster1")
///             .properties(ApplicationPropertiesArgs.builder()
///                 .applicationType("CustomApplication")
///                 .computeProfile(ComputeProfileArgs.builder()
///                     .roles(RoleArgs.builder()
///                         .hardwareProfile(HardwareProfileArgs.builder()
///                             .vmSize("Standard_D12_v2")
///                             .build())
///                         .name("edgenode")
///                         .targetInstanceCount(1)
///                         .build())
///                     .build())
///                 .errors()
///                 .httpsEndpoints(ApplicationGetHttpsEndpointArgs.builder()
///                     .accessModes("WebPage")
///                     .destinationPort(20000)
///                     .subDomainSuffix("dss")
///                     .build())
///                 .installScriptActions(RuntimeScriptActionArgs.builder()
///                     .name("app-install-app1")
///                     .parameters("-version latest -port 20000")
///                     .roles("edgenode")
///                     .uri("https://.../install.sh")
///                     .build())
///                 .uninstallScriptActions()
///                 .build())
///             .resourceGroupName("rg1")
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
/// const application = new azure_native.hdinsight.Application("application", {
///     applicationName: "hue",
///     clusterName: "cluster1",
///     properties: {
///         applicationType: "CustomApplication",
///         computeProfile: {
///             roles: [{
///                 hardwareProfile: {
///                     vmSize: "Standard_D12_v2",
///                 },
///                 name: "edgenode",
///                 targetInstanceCount: 1,
///             }],
///         },
///         errors: [],
///         httpsEndpoints: [{
///             accessModes: ["WebPage"],
///             destinationPort: 20000,
///             subDomainSuffix: "dss",
///         }],
///         installScriptActions: [{
///             name: "app-install-app1",
///             parameters: "-version latest -port 20000",
///             roles: ["edgenode"],
///             uri: "https://.../install.sh",
///         }],
///         uninstallScriptActions: [],
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// application = azure_native.hdinsight.Application("application",
///     application_name="hue",
///     cluster_name="cluster1",
///     properties={
///         "application_type": "CustomApplication",
///         "compute_profile": {
///             "roles": [{
///                 "hardware_profile": {
///                     "vm_size": "Standard_D12_v2",
///                 },
///                 "name": "edgenode",
///                 "target_instance_count": 1,
///             }],
///         },
///         "errors": [],
///         "https_endpoints": [{
///             "access_modes": ["WebPage"],
///             "destination_port": 20000,
///             "sub_domain_suffix": "dss",
///         }],
///         "install_script_actions": [{
///             "name": "app-install-app1",
///             "parameters": "-version latest -port 20000",
///             "roles": ["edgenode"],
///             "uri": "https://.../install.sh",
///         }],
///         "uninstall_script_actions": [],
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   application:
///     type: azure-native:hdinsight:Application
///     properties:
///       applicationName: hue
///       clusterName: cluster1
///       properties:
///         applicationType: CustomApplication
///         computeProfile:
///           roles:
///             - hardwareProfile:
///                 vmSize: Standard_D12_v2
///               name: edgenode
///               targetInstanceCount: 1
///         errors: []
///         httpsEndpoints:
///           - accessModes:
///               - WebPage
///             destinationPort: 20000
///             subDomainSuffix: dss
///         installScriptActions:
///           - name: app-install-app1
///             parameters: -version latest -port 20000
///             roles:
///               - edgenode
///             uri: https://.../install.sh
///         uninstallScriptActions: []
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:hdinsight:Application hue /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName}/applications/{applicationName}
/// ```
class Application extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The ETag for the application
  late final pulumi.Output<String?> etag;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The properties of the application.
  late final pulumi.Output<ApplicationPropertiesResponse> properties;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The tags for the application.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_hdinsight_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hdinsight:Application',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ApplicationPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
