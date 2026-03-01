import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_merge_info_response.dart';
import 'account_properties_response_account_status.dart';
import 'account_properties_response_endpoints.dart';
import 'account_properties_response_managed_resources.dart';
import 'account_response_sku.dart';
import 'cloud_connectors_response.dart';
import 'identity_response.dart';
import 'ingestion_storage_response.dart';
import 'private_endpoint_connection_response.dart';
import 'tracked_resource_response_system_data.dart';

/// Account resource
///
/// Uses Azure REST API version 2024-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-12-01.
///
/// Other available API versions: 2021-12-01, 2023-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native purview [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Accounts_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new AzureNative.Purview.Account("account", new()
///     {
///         AccountName = "account1",
///         Location = "West US 2",
///         ResourceGroupName = "SampleResourceGroup",
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
/// 	purview "github.com/pulumi/pulumi-azure-native-sdk/purview/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := purview.NewAccount(ctx, "account", &purview.AccountArgs{
/// 			AccountName:       pulumi.String("account1"),
/// 			Location:          pulumi.String("West US 2"),
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
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
/// import com.pulumi.azurenative.purview.Account;
/// import com.pulumi.azurenative.purview.AccountArgs;
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
///         var account = new Account("account", AccountArgs.builder()
///             .accountName("account1")
///             .location("West US 2")
///             .resourceGroupName("SampleResourceGroup")
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
/// const account = new azure_native.purview.Account("account", {
///     accountName: "account1",
///     location: "West US 2",
///     resourceGroupName: "SampleResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account = azure_native.purview.Account("account",
///     account_name="account1",
///     location="West US 2",
///     resource_group_name="SampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   account:
///     type: azure-native:purview:Account
///     properties:
///       accountName: account1
///       location: West US 2
///       resourceGroupName: SampleResourceGroup
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
/// $ pulumi import azure-native:purview:Account account1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Purview/accounts/{accountName}
/// ```
class Account extends pulumi.CustomResource {
  /// Gets or sets the status of the account.
  late final pulumi.Output<AccountPropertiesResponseAccountStatus> accountStatus;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// External Cloud Service connectors
  late final pulumi.Output<CloudConnectorsResponse?> cloudConnectors;
  /// Gets the time at which the entity was created.
  late final pulumi.Output<String> createdAt;
  /// Gets the creator of the entity.
  late final pulumi.Output<String> createdBy;
  /// Gets the creators of the entity's object id.
  late final pulumi.Output<String> createdByObjectId;
  /// Gets the default domain in the account.
  late final pulumi.Output<String> defaultDomain;
  /// The URIs that are the public endpoints of the account.
  late final pulumi.Output<AccountPropertiesResponseEndpoints> endpoints;
  /// Gets or sets the friendly name.
  late final pulumi.Output<String> friendlyName;
  /// The Managed Identity of the resource
  late final pulumi.Output<IdentityResponse?> identity;
  /// Ingestion Storage Account Info
  late final pulumi.Output<IngestionStorageResponse?> ingestionStorage;
  /// Gets or sets the location.
  late final pulumi.Output<String?> location;
  /// Gets or sets the state of managed eventhub. If enabled managed eventhub will be created, if disabled the managed eventhub will be removed.
  late final pulumi.Output<String?> managedEventHubState;
  /// Gets or sets the managed resource group name
  late final pulumi.Output<String?> managedResourceGroupName;
  /// Gets the resource identifiers of the managed resources.
  late final pulumi.Output<AccountPropertiesResponseManagedResources> managedResources;
  /// Gets or sets the public network access for managed resources.
  late final pulumi.Output<String?> managedResourcesPublicNetworkAccess;
  /// Gets or sets the Merge Info.
  late final pulumi.Output<AccountMergeInfoResponse?> mergeInfo;
  /// Gets or sets the name.
  late final pulumi.Output<String> name;
  /// Gets the private endpoint connections information.
  late final pulumi.Output<List<PrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// Gets or sets the state of the provisioning.
  late final pulumi.Output<String> provisioningState;
  /// Gets or sets the public network access.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Gets or sets the Sku.
  late final pulumi.Output<AccountResponseSku?> sku;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<TrackedResourceResponseSystemData> systemData;
  /// Tags on the azure resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Gets or sets the state of tenant endpoint.
  late final pulumi.Output<String?> tenantEndpointState;
  /// Gets or sets the type.
  late final pulumi.Output<String> type;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_purview_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:purview:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountStatus = registerOutput<AccountPropertiesResponseAccountStatus>('accountStatus');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.cloudConnectors = registerOutput<CloudConnectorsResponse?>('cloudConnectors');
    this.createdAt = registerOutput<String>('createdAt');
    this.createdBy = registerOutput<String>('createdBy');
    this.createdByObjectId = registerOutput<String>('createdByObjectId');
    this.defaultDomain = registerOutput<String>('defaultDomain');
    this.endpoints = registerOutput<AccountPropertiesResponseEndpoints>('endpoints');
    this.friendlyName = registerOutput<String>('friendlyName');
    this.identity = registerOutput<IdentityResponse?>('identity');
    this.ingestionStorage = registerOutput<IngestionStorageResponse?>('ingestionStorage');
    this.location = registerOutput<String?>('location');
    this.managedEventHubState = registerOutput<String?>('managedEventHubState');
    this.managedResourceGroupName = registerOutput<String?>('managedResourceGroupName');
    this.managedResources = registerOutput<AccountPropertiesResponseManagedResources>('managedResources');
    this.managedResourcesPublicNetworkAccess = registerOutput<String?>('managedResourcesPublicNetworkAccess');
    this.mergeInfo = registerOutput<AccountMergeInfoResponse?>('mergeInfo');
    this.name = registerOutput<String>('name');
    this.privateEndpointConnections = registerOutput<List<PrivateEndpointConnectionResponse>>('privateEndpointConnections');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    this.sku = registerOutput<AccountResponseSku?>('sku');
    this.systemData = registerOutput<TrackedResourceResponseSystemData>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tenantEndpointState = registerOutput<String?>('tenantEndpointState');
    this.type = registerOutput<String>('type');
  }
}
