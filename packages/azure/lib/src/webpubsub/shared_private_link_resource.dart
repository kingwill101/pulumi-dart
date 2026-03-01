import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_private_link_resource_args.dart';

/// Manages the Shared Private Link Resource for a Web Pubsub service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "terraform-webpubsub",
///     location: "east us",
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "examplekeyvault",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     softDeleteRetentionDays: 7,
///     accessPolicies: [{
///         tenantId: current.then(current => current.tenantId),
///         objectId: current.then(current => current.objectId),
///         certificatePermissions: ["managecontacts"],
///         keyPermissions: ["create"],
///         secretPermissions: ["set"],
///     }],
/// });
/// const exampleService = new azure.webpubsub.Service("example", {
///     name: "tfex-webpubsub",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard_S1",
///     capacity: 1,
/// });
/// const exampleSharedPrivateLinkResource = new azure.webpubsub.SharedPrivateLinkResource("example", {
///     name: "tfex-webpubsub-splr",
///     webPubsubId: exampleService.id,
///     subresourceName: "vault",
///     targetResourceId: exampleKeyVault.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="terraform-webpubsub",
///     location="east us")
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="examplekeyvault",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     soft_delete_retention_days=7,
///     access_policies=[{
///         "tenant_id": current.tenant_id,
///         "object_id": current.object_id,
///         "certificate_permissions": ["managecontacts"],
///         "key_permissions": ["create"],
///         "secret_permissions": ["set"],
///     }])
/// example_service = azure.webpubsub.Service("example",
///     name="tfex-webpubsub",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard_S1",
///     capacity=1)
/// example_shared_private_link_resource = azure.webpubsub.SharedPrivateLinkResource("example",
///     name="tfex-webpubsub-splr",
///     web_pubsub_id=example_service.id,
///     subresource_name="vault",
///     target_resource_id=example_key_vault.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "terraform-webpubsub",
///         Location = "east us",
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "examplekeyvault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         SoftDeleteRetentionDays = 7,
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 CertificatePermissions = new[]
///                 {
///                     "managecontacts",
///                 },
///                 KeyPermissions = new[]
///                 {
///                     "create",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "set",
///                 },
///             },
///         },
///     });
///
///     var exampleService = new Azure.WebPubSub.Service("example", new()
///     {
///         Name = "tfex-webpubsub",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard_S1",
///         Capacity = 1,
///     });
///
///     var exampleSharedPrivateLinkResource = new Azure.WebPubSub.SharedPrivateLinkResource("example", new()
///     {
///         Name = "tfex-webpubsub-splr",
///         WebPubsubId = exampleService.Id,
///         SubresourceName = "vault",
///         TargetResourceId = exampleKeyVault.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/webpubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("terraform-webpubsub"),
/// 			Location: pulumi.String("east us"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                    pulumi.String("examplekeyvault"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			TenantId:                pulumi.String(current.TenantId),
/// 			SkuName:                 pulumi.String("standard"),
/// 			SoftDeleteRetentionDays: pulumi.Int(7),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					CertificatePermissions: pulumi.StringArray{
/// 						pulumi.String("managecontacts"),
/// 					},
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("create"),
/// 					},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("set"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := webpubsub.NewService(ctx, "example", &webpubsub.ServiceArgs{
/// 			Name:              pulumi.String("tfex-webpubsub"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard_S1"),
/// 			Capacity:          pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = webpubsub.NewSharedPrivateLinkResource(ctx, "example", &webpubsub.SharedPrivateLinkResourceArgs{
/// 			Name:             pulumi.String("tfex-webpubsub-splr"),
/// 			WebPubsubId:      exampleService.ID(),
/// 			SubresourceName:  pulumi.String("vault"),
/// 			TargetResourceId: exampleKeyVault.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.webpubsub.Service;
/// import com.pulumi.azure.webpubsub.ServiceArgs;
/// import com.pulumi.azure.webpubsub.SharedPrivateLinkResource;
/// import com.pulumi.azure.webpubsub.SharedPrivateLinkResourceArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("terraform-webpubsub")
///             .location("east us")
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("examplekeyvault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .softDeleteRetentionDays(7)
///             .accessPolicies(KeyVaultAccessPolicyArgs.builder()
///                 .tenantId(current.tenantId())
///                 .objectId(current.objectId())
///                 .certificatePermissions("managecontacts")
///                 .keyPermissions("create")
///                 .secretPermissions("set")
///                 .build())
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("tfex-webpubsub")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard_S1")
///             .capacity(1)
///             .build());
///
///         var exampleSharedPrivateLinkResource = new SharedPrivateLinkResource("exampleSharedPrivateLinkResource", SharedPrivateLinkResourceArgs.builder()
///             .name("tfex-webpubsub-splr")
///             .webPubsubId(exampleService.id())
///             .subresourceName("vault")
///             .targetResourceId(exampleKeyVault.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: terraform-webpubsub
///       location: east us
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: examplekeyvault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: standard
///       softDeleteRetentionDays: 7
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           certificatePermissions:
///             - managecontacts
///           keyPermissions:
///             - create
///           secretPermissions:
///             - set
///   exampleService:
///     type: azure:webpubsub:Service
///     name: example
///     properties:
///       name: tfex-webpubsub
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard_S1
///       capacity: 1
///   exampleSharedPrivateLinkResource:
///     type: azure:webpubsub:SharedPrivateLinkResource
///     name: example
///     properties:
///       name: tfex-webpubsub-splr
///       webPubsubId: ${exampleService.id}
///       subresourceName: vault
///       targetResourceId: ${exampleKeyVault.id}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.SignalRService` - 2024-03-01
///
/// ## Import
///
/// Web Pubsub Shared Private Link Resource can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:webpubsub/sharedPrivateLinkResource:SharedPrivateLinkResource example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.SignalRService/webPubSub/webPubSub1/sharedPrivateLinkResources/resource1
/// ```
class SharedPrivateLinkResource extends pulumi.CustomResource {
  /// Specify the name of the Web Pubsub Shared Private Link Resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specify the request message for requesting approval of the Shared Private Link Enabled Remote Resource.
  late final pulumi.Output<String?> requestMessage;
  /// The status of a private endpoint connection. Possible values are Pending, Approved, Rejected or Disconnected.
  late final pulumi.Output<String> status;
  /// Specify the sub resource name which the Web Pubsub Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The available sub resource can be retrieved by using `azure.webpubsub.getPrivateLinkResource` data source.
  late final pulumi.Output<String> subresourceName;
  /// Specify the ID of the Shared Private Link Enabled Remote Resource which this Web Pubsub Private Endpoint should be connected to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The sub resource name should match with the type of the target resource id that's being specified.
  late final pulumi.Output<String> targetResourceId;
  /// Specify the id of the Web Pubsub. Changing this forces a new resource to be created.
  late final pulumi.Output<String> webPubsubId;

  /// Creates a new [SharedPrivateLinkResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SharedPrivateLinkResource]. {@macro pulumi_webpubsub_shared_private_link_resource_shared_private_link_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SharedPrivateLinkResource(
    String name, {
    SharedPrivateLinkResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:webpubsub/sharedPrivateLinkResource:SharedPrivateLinkResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.requestMessage = registerOutput<String?>('requestMessage');
    this.status = registerOutput<String>('status');
    this.subresourceName = registerOutput<String>('subresourceName');
    this.targetResourceId = registerOutput<String>('targetResourceId');
    this.webPubsubId = registerOutput<String>('webPubsubId');
  }
}
