import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_connection_args.dart';
import 'system_data_response.dart';

/// Network related settings
///
/// Uses Azure REST API version 2024-02-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NetworkConnections_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkConnection = new AzureNative.DevCenter.NetworkConnection("networkConnection", new()
///     {
///         DomainJoinType = AzureNative.DevCenter.DomainJoinType.HybridAzureADJoin,
///         DomainName = "mydomaincontroller.local",
///         DomainPassword = "Password value for user",
///         DomainUsername = "testuser@mydomaincontroller.local",
///         Location = "centralus",
///         NetworkConnectionName = "uswest3network",
///         NetworkingResourceGroupName = "NetworkInterfaces",
///         ResourceGroupName = "rg1",
///         SubnetId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet/subnets/default",
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
/// 	devcenter "github.com/pulumi/pulumi-azure-native-sdk/devcenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devcenter.NewNetworkConnection(ctx, "networkConnection", &devcenter.NetworkConnectionArgs{
/// 			DomainJoinType:              pulumi.String(devcenter.DomainJoinTypeHybridAzureADJoin),
/// 			DomainName:                  pulumi.String("mydomaincontroller.local"),
/// 			DomainPassword:              pulumi.String("Password value for user"),
/// 			DomainUsername:              pulumi.String("testuser@mydomaincontroller.local"),
/// 			Location:                    pulumi.String("centralus"),
/// 			NetworkConnectionName:       pulumi.String("uswest3network"),
/// 			NetworkingResourceGroupName: pulumi.String("NetworkInterfaces"),
/// 			ResourceGroupName:           pulumi.String("rg1"),
/// 			SubnetId:                    pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet/subnets/default"),
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
/// resource "azure-native_devcenter_networkconnection" "networkConnection" {
///   domain_join_type               = "HybridAzureADJoin"
///   domain_name                    = "mydomaincontroller.local"
///   domain_password                = "Password value for user"
///   domain_username                = "testuser@mydomaincontroller.local"
///   location                       = "centralus"
///   network_connection_name        = "uswest3network"
///   networking_resource_group_name = "NetworkInterfaces"
///   resource_group_name            = "rg1"
///   subnet_id                      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet/subnets/default"
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
/// import com.pulumi.azurenative.devcenter.NetworkConnection;
/// import com.pulumi.azurenative.devcenter.NetworkConnectionArgs;
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
///         var networkConnection = new NetworkConnection("networkConnection", NetworkConnectionArgs.builder()
///             .domainJoinType("HybridAzureADJoin")
///             .domainName("mydomaincontroller.local")
///             .domainPassword("Password value for user")
///             .domainUsername("testuser@mydomaincontroller.local")
///             .location("centralus")
///             .networkConnectionName("uswest3network")
///             .networkingResourceGroupName("NetworkInterfaces")
///             .resourceGroupName("rg1")
///             .subnetId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet/subnets/default")
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
/// const networkConnection = new azure_native.devcenter.NetworkConnection("networkConnection", {
///     domainJoinType: azure_native.devcenter.DomainJoinType.HybridAzureADJoin,
///     domainName: "mydomaincontroller.local",
///     domainPassword: "Password value for user",
///     domainUsername: "testuser@mydomaincontroller.local",
///     location: "centralus",
///     networkConnectionName: "uswest3network",
///     networkingResourceGroupName: "NetworkInterfaces",
///     resourceGroupName: "rg1",
///     subnetId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet/subnets/default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_connection = azure_native.devcenter.NetworkConnection("networkConnection",
///     domain_join_type=azure_native.devcenter.DomainJoinType.HYBRID_AZURE_AD_JOIN,
///     domain_name="mydomaincontroller.local",
///     domain_password="Password value for user",
///     domain_username="testuser@mydomaincontroller.local",
///     location="centralus",
///     network_connection_name="uswest3network",
///     networking_resource_group_name="NetworkInterfaces",
///     resource_group_name="rg1",
///     subnet_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet/subnets/default")
///
/// ```
///
/// ```yaml
/// resources:
///   networkConnection:
///     type: azure-native:devcenter:NetworkConnection
///     properties:
///       domainJoinType: HybridAzureADJoin
///       domainName: mydomaincontroller.local
///       domainPassword: Password value for user
///       domainUsername: testuser@mydomaincontroller.local
///       location: centralus
///       networkConnectionName: uswest3network
///       networkingResourceGroupName: NetworkInterfaces
///       resourceGroupName: rg1
///       subnetId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet/subnets/default
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
/// $ pulumi import azure-native:devcenter:NetworkConnection uswest3network /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/networkConnections/{networkConnectionName}
/// ```
class NetworkConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// AAD Join type.
  late final pulumi.Output<String> domainJoinType;
  /// Active Directory domain name
  late final pulumi.Output<String?> domainName;
  /// The password for the account used to join domain
  late final pulumi.Output<String?> domainPassword;
  /// The username of an Active Directory account (user or service account) that has permissions to create computer objects in Active Directory. Required format: admin@contoso.com.
  late final pulumi.Output<String?> domainUsername;
  /// Overall health status of the network connection. Health checks are run on creation, update, and periodically to validate the network connection.
  late final pulumi.Output<String> healthCheckStatus;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The name for resource group where NICs will be placed.
  late final pulumi.Output<String?> networkingResourceGroupName;
  /// Active Directory domain Organization Unit (OU)
  late final pulumi.Output<String?> organizationUnit;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The subnet to attach Virtual Machines to
  late final pulumi.Output<String> subnetId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkConnection]. {@macro pulumi_devcenter_network_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkConnection(
    String name, {
    NetworkConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devcenter:NetworkConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    domainJoinType = registerOutput<String>('domainJoinType');
    domainName = registerOutput<String?>('domainName');
    domainPassword = registerOutput<String?>('domainPassword');
    domainUsername = registerOutput<String?>('domainUsername');
    healthCheckStatus = registerOutput<String>('healthCheckStatus');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkingResourceGroupName = registerOutput<String?>('networkingResourceGroupName');
    organizationUnit = registerOutput<String?>('organizationUnit');
    provisioningState = registerOutput<String>('provisioningState');
    subnetId = registerOutput<String>('subnetId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [NetworkConnection] resource.
  NetworkConnection.reference(String urn)
    : super(
        'azure-native:devcenter:NetworkConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    domainJoinType = registerOutput<String>('domainJoinType');
    domainName = registerOutput<String?>('domainName');
    domainPassword = registerOutput<String?>('domainPassword');
    domainUsername = registerOutput<String?>('domainUsername');
    healthCheckStatus = registerOutput<String>('healthCheckStatus');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkingResourceGroupName = registerOutput<String?>('networkingResourceGroupName');
    organizationUnit = registerOutput<String?>('organizationUnit');
    provisioningState = registerOutput<String>('provisioningState');
    subnetId = registerOutput<String>('subnetId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
