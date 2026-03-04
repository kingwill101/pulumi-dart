import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_directory_connector_args.dart';
import 'active_directory_connector_properties_response.dart';
import 'system_data_response.dart';

/// Active directory connector resource
///
/// Uses Azure REST API version 2025-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-15-preview.
///
/// Other available API versions: 2023-01-15-preview, 2024-01-01, 2024-05-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update an Active Directory connector instance.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var activeDirectoryConnector = new AzureNative.AzureArcData.ActiveDirectoryConnector("activeDirectoryConnector", new()
///     {
///         ActiveDirectoryConnectorName = "testADConnector",
///         DataControllerName = "testdataController",
///         Properties = new AzureNative.AzureArcData.Inputs.ActiveDirectoryConnectorPropertiesArgs
///         {
///             Spec = new AzureNative.AzureArcData.Inputs.ActiveDirectoryConnectorSpecArgs
///             {
///                 ActiveDirectory = new AzureNative.AzureArcData.Inputs.ActiveDirectoryConnectorDomainDetailsArgs
///                 {
///                     DomainControllers = new AzureNative.AzureArcData.Inputs.ActiveDirectoryDomainControllersArgs
///                     {
///                         PrimaryDomainController = new AzureNative.AzureArcData.Inputs.ActiveDirectoryDomainControllerArgs
///                         {
///                             Hostname = "dc1.contoso.local",
///                         },
///                         SecondaryDomainControllers = new[]
///                         {
///                             new AzureNative.AzureArcData.Inputs.ActiveDirectoryDomainControllerArgs
///                             {
///                                 Hostname = "dc2.contoso.local",
///                             },
///                             new AzureNative.AzureArcData.Inputs.ActiveDirectoryDomainControllerArgs
///                             {
///                                 Hostname = "dc3.contoso.local",
///                             },
///                         },
///                     },
///                     Realm = "CONTOSO.LOCAL",
///                     ServiceAccountProvisioning = AzureNative.AzureArcData.AccountProvisioningMode.Manual,
///                 },
///                 Dns = new AzureNative.AzureArcData.Inputs.ActiveDirectoryConnectorDNSDetailsArgs
///                 {
///                     NameserverIPAddresses = new[]
///                     {
///                         "11.11.111.111",
///                         "22.22.222.222",
///                     },
///                     PreferK8sDnsForPtrLookups = false,
///                     Replicas = 1,
///                 },
///             },
///         },
///         ResourceGroupName = "testrg",
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
/// 	azurearcdata "github.com/pulumi/pulumi-azure-native-sdk/azurearcdata/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurearcdata.NewActiveDirectoryConnector(ctx, "activeDirectoryConnector", &azurearcdata.ActiveDirectoryConnectorArgs{
/// 			ActiveDirectoryConnectorName: pulumi.String("testADConnector"),
/// 			DataControllerName:           pulumi.String("testdataController"),
/// 			Properties: &azurearcdata.ActiveDirectoryConnectorPropertiesArgs{
/// 				Spec: &azurearcdata.ActiveDirectoryConnectorSpecArgs{
/// 					ActiveDirectory: &azurearcdata.ActiveDirectoryConnectorDomainDetailsArgs{
/// 						DomainControllers: &azurearcdata.ActiveDirectoryDomainControllersArgs{
/// 							PrimaryDomainController: &azurearcdata.ActiveDirectoryDomainControllerArgs{
/// 								Hostname: pulumi.String("dc1.contoso.local"),
/// 							},
/// 							SecondaryDomainControllers: azurearcdata.ActiveDirectoryDomainControllerArray{
/// 								&azurearcdata.ActiveDirectoryDomainControllerArgs{
/// 									Hostname: pulumi.String("dc2.contoso.local"),
/// 								},
/// 								&azurearcdata.ActiveDirectoryDomainControllerArgs{
/// 									Hostname: pulumi.String("dc3.contoso.local"),
/// 								},
/// 							},
/// 						},
/// 						Realm:                      pulumi.String("CONTOSO.LOCAL"),
/// 						ServiceAccountProvisioning: pulumi.String(azurearcdata.AccountProvisioningModeManual),
/// 					},
/// 					Dns: &azurearcdata.ActiveDirectoryConnectorDNSDetailsArgs{
/// 						NameserverIPAddresses: pulumi.StringArray{
/// 							pulumi.String("11.11.111.111"),
/// 							pulumi.String("22.22.222.222"),
/// 						},
/// 						PreferK8sDnsForPtrLookups: pulumi.Bool(false),
/// 						Replicas:                  pulumi.Float64(1),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg"),
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
/// import com.pulumi.azurenative.azurearcdata.ActiveDirectoryConnector;
/// import com.pulumi.azurenative.azurearcdata.ActiveDirectoryConnectorArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.ActiveDirectoryConnectorPropertiesArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.ActiveDirectoryConnectorSpecArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.ActiveDirectoryConnectorDomainDetailsArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.ActiveDirectoryDomainControllersArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.ActiveDirectoryDomainControllerArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.ActiveDirectoryConnectorDNSDetailsArgs;
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
///         var activeDirectoryConnector = new ActiveDirectoryConnector("activeDirectoryConnector", ActiveDirectoryConnectorArgs.builder()
///             .activeDirectoryConnectorName("testADConnector")
///             .dataControllerName("testdataController")
///             .properties(ActiveDirectoryConnectorPropertiesArgs.builder()
///                 .spec(ActiveDirectoryConnectorSpecArgs.builder()
///                     .activeDirectory(ActiveDirectoryConnectorDomainDetailsArgs.builder()
///                         .domainControllers(ActiveDirectoryDomainControllersArgs.builder()
///                             .primaryDomainController(ActiveDirectoryDomainControllerArgs.builder()
///                                 .hostname("dc1.contoso.local")
///                                 .build())
///                             .secondaryDomainControllers(
///                                 ActiveDirectoryDomainControllerArgs.builder()
///                                     .hostname("dc2.contoso.local")
///                                     .build(),
///                                 ActiveDirectoryDomainControllerArgs.builder()
///                                     .hostname("dc3.contoso.local")
///                                     .build())
///                             .build())
///                         .realm("CONTOSO.LOCAL")
///                         .serviceAccountProvisioning("manual")
///                         .build())
///                     .dns(ActiveDirectoryConnectorDNSDetailsArgs.builder()
///                         .nameserverIPAddresses(
///                             "11.11.111.111",
///                             "22.22.222.222")
///                         .preferK8sDnsForPtrLookups(false)
///                         .replicas(1.0)
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("testrg")
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
/// const activeDirectoryConnector = new azure_native.azurearcdata.ActiveDirectoryConnector("activeDirectoryConnector", {
///     activeDirectoryConnectorName: "testADConnector",
///     dataControllerName: "testdataController",
///     properties: {
///         spec: {
///             activeDirectory: {
///                 domainControllers: {
///                     primaryDomainController: {
///                         hostname: "dc1.contoso.local",
///                     },
///                     secondaryDomainControllers: [
///                         {
///                             hostname: "dc2.contoso.local",
///                         },
///                         {
///                             hostname: "dc3.contoso.local",
///                         },
///                     ],
///                 },
///                 realm: "CONTOSO.LOCAL",
///                 serviceAccountProvisioning: azure_native.azurearcdata.AccountProvisioningMode.Manual,
///             },
///             dns: {
///                 nameserverIPAddresses: [
///                     "11.11.111.111",
///                     "22.22.222.222",
///                 ],
///                 preferK8sDnsForPtrLookups: false,
///                 replicas: 1,
///             },
///         },
///     },
///     resourceGroupName: "testrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// active_directory_connector = azure_native.azurearcdata.ActiveDirectoryConnector("activeDirectoryConnector",
///     active_directory_connector_name="testADConnector",
///     data_controller_name="testdataController",
///     properties={
///         "spec": {
///             "active_directory": {
///                 "domain_controllers": {
///                     "primary_domain_controller": {
///                         "hostname": "dc1.contoso.local",
///                     },
///                     "secondary_domain_controllers": [
///                         {
///                             "hostname": "dc2.contoso.local",
///                         },
///                         {
///                             "hostname": "dc3.contoso.local",
///                         },
///                     ],
///                 },
///                 "realm": "CONTOSO.LOCAL",
///                 "service_account_provisioning": azure_native.azurearcdata.AccountProvisioningMode.MANUAL,
///             },
///             "dns": {
///                 "nameserver_ip_addresses": [
///                     "11.11.111.111",
///                     "22.22.222.222",
///                 ],
///                 "prefer_k8s_dns_for_ptr_lookups": False,
///                 "replicas": 1,
///             },
///         },
///     },
///     resource_group_name="testrg")
///
/// ```
///
/// ```yaml
/// resources:
///   activeDirectoryConnector:
///     type: azure-native:azurearcdata:ActiveDirectoryConnector
///     properties:
///       activeDirectoryConnectorName: testADConnector
///       dataControllerName: testdataController
///       properties:
///         spec:
///           activeDirectory:
///             domainControllers:
///               primaryDomainController:
///                 hostname: dc1.contoso.local
///               secondaryDomainControllers:
///                 - hostname: dc2.contoso.local
///                 - hostname: dc3.contoso.local
///             realm: CONTOSO.LOCAL
///             serviceAccountProvisioning: manual
///           dns:
///             nameserverIPAddresses:
///               - 11.11.111.111
///               - 22.22.222.222
///             preferK8sDnsForPtrLookups: false
///             replicas: 1
///       resourceGroupName: testrg
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
/// $ pulumi import azure-native:azurearcdata:ActiveDirectoryConnector testADConnector /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureArcData/dataControllers/{dataControllerName}/activeDirectoryConnectors/{activeDirectoryConnectorName}
/// ```
class ActiveDirectoryConnector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// null
  late final pulumi.Output<ActiveDirectoryConnectorPropertiesResponse>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ActiveDirectoryConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActiveDirectoryConnector]. {@macro pulumi_azurearcdata_active_directory_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActiveDirectoryConnector(
    String name, {
    ActiveDirectoryConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:azurearcdata:ActiveDirectoryConnector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ActiveDirectoryConnectorPropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
