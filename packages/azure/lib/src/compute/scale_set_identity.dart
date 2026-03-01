// ignore_for_file: unused_element, unnecessary_cast


class ScaleSetIdentity {
  /// Specifies a list of user managed identity ids to be assigned to the VMSS. Required if `type` is `UserAssigned`.
  ///
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as azure from "@pulumi/azure";
  ///
  /// const example = new azure.compute.ScaleSet("example", {
  ///     name: "vm-scaleset",
  ///     resourceGroupName: exampleAzurermResourceGroup.name,
  ///     location: exampleAzurermResourceGroup.location,
  ///     sku: {
  ///         name: vmSku,
  ///         tier: "Standard",
  ///         capacity: instanceCount,
  ///     },
  ///     identity: {
  ///         type: "SystemAssigned",
  ///     },
  ///     extensions: [{
  ///         name: "MSILinuxExtension",
  ///         publisher: "Microsoft.ManagedIdentity",
  ///         type: "ManagedIdentityExtensionForLinux",
  ///         typeHandlerVersion: "1.0",
  ///         settings: "{\"port\": 50342}",
  ///     }],
  /// });
  /// export const principalId = example.identity.apply(identity => identity?.principalId);
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_azure as azure
  ///
  /// example = azure.compute.ScaleSet("example",
  ///     name="vm-scaleset",
  ///     resource_group_name=example_azurerm_resource_group["name"],
  ///     location=example_azurerm_resource_group["location"],
  ///     sku={
  ///         "name": vm_sku,
  ///         "tier": "Standard",
  ///         "capacity": instance_count,
  ///     },
  ///     identity={
  ///         "type": "SystemAssigned",
  ///     },
  ///     extensions=[{
  ///         "name": "MSILinuxExtension",
  ///         "publisher": "Microsoft.ManagedIdentity",
  ///         "type": "ManagedIdentityExtensionForLinux",
  ///         "type_handler_version": "1.0",
  ///         "settings": "{\"port\": 50342}",
  ///     }])
  /// pulumi.export("principalId", example.identity.principal_id)
  /// ```
  /// ```csharp
  /// using System.Collections.Generic;
  /// using System.Linq;
  /// using Pulumi;
  /// using Azure = Pulumi.Azure;
  ///
  /// return await Deployment.RunAsync(() =>
  /// {
  ///     var example = new Azure.Compute.ScaleSet("example", new()
  ///     {
  ///         Name = "vm-scaleset",
  ///         ResourceGroupName = exampleAzurermResourceGroup.Name,
  ///         Location = exampleAzurermResourceGroup.Location,
  ///         Sku = new Azure.Compute.Inputs.ScaleSetSkuArgs
  ///         {
  ///             Name = vmSku,
  ///             Tier = "Standard",
  ///             Capacity = instanceCount,
  ///         },
  ///         Identity = new Azure.Compute.Inputs.ScaleSetIdentityArgs
  ///         {
  ///             Type = "SystemAssigned",
  ///         },
  ///         Extensions = new[]
  ///         {
  ///             new Azure.Compute.Inputs.ScaleSetExtensionArgs
  ///             {
  ///                 Name = "MSILinuxExtension",
  ///                 Publisher = "Microsoft.ManagedIdentity",
  ///                 Type = "ManagedIdentityExtensionForLinux",
  ///                 TypeHandlerVersion = "1.0",
  ///                 Settings = "{\"port\": 50342}",
  ///             },
  ///         },
  ///     });
  ///
  ///     return new Dictionary<string, object?>
  ///     {
  ///         ["principalId"] = example.Identity.Apply(identity => identity?.PrincipalId),
  ///     };
  /// });
  /// ```
  /// ```go
  /// package main
  ///
  /// import (
  /// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
  /// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// 	pulumi.Run(func(ctx *pulumi.Context) error {
  /// 		example, err := compute.NewScaleSet(ctx, "example", &compute.ScaleSetArgs{
  /// 			Name:              pulumi.String("vm-scaleset"),
  /// 			ResourceGroupName: pulumi.Any(exampleAzurermResourceGroup.Name),
  /// 			Location:          pulumi.Any(exampleAzurermResourceGroup.Location),
  /// 			Sku: &compute.ScaleSetSkuArgs{
  /// 				Name:     pulumi.Any(vmSku),
  /// 				Tier:     pulumi.String("Standard"),
  /// 				Capacity: pulumi.Any(instanceCount),
  /// 			},
  /// 			Identity: &compute.ScaleSetIdentityArgs{
  /// 				Type: pulumi.String("SystemAssigned"),
  /// 			},
  /// 			Extensions: compute.ScaleSetExtensionArray{
  /// 				&compute.ScaleSetExtensionArgs{
  /// 					Name:               pulumi.String("MSILinuxExtension"),
  /// 					Publisher:          pulumi.String("Microsoft.ManagedIdentity"),
  /// 					Type:               pulumi.String("ManagedIdentityExtensionForLinux"),
  /// 					TypeHandlerVersion: pulumi.String("1.0"),
  /// 					Settings:           pulumi.String("{\"port\": 50342}"),
  /// 				},
  /// 			},
  /// 		})
  /// 		if err != nil {
  /// 			return err
  /// 		}
  /// 		ctx.Export("principalId", example.Identity.ApplyT(func(identity compute.ScaleSetIdentity) (*string, error) {
  /// 			return &identity.PrincipalId, nil
  /// 		}).(pulumi.StringPtrOutput))
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
  /// import com.pulumi.azure.compute.ScaleSet;
  /// import com.pulumi.azure.compute.ScaleSetArgs;
  /// import com.pulumi.azure.compute.inputs.ScaleSetSkuArgs;
  /// import com.pulumi.azure.compute.inputs.ScaleSetIdentityArgs;
  /// import com.pulumi.azure.compute.inputs.ScaleSetExtensionArgs;
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
  ///         var example = new ScaleSet("example", ScaleSetArgs.builder()
  ///             .name("vm-scaleset")
  ///             .resourceGroupName(exampleAzurermResourceGroup.name())
  ///             .location(exampleAzurermResourceGroup.location())
  ///             .sku(ScaleSetSkuArgs.builder()
  ///                 .name(vmSku)
  ///                 .tier("Standard")
  ///                 .capacity(instanceCount)
  ///                 .build())
  ///             .identity(ScaleSetIdentityArgs.builder()
  ///                 .type("SystemAssigned")
  ///                 .build())
  ///             .extensions(ScaleSetExtensionArgs.builder()
  ///                 .name("MSILinuxExtension")
  ///                 .publisher("Microsoft.ManagedIdentity")
  ///                 .type("ManagedIdentityExtensionForLinux")
  ///                 .typeHandlerVersion("1.0")
  ///                 .settings("{\"port\": 50342}")
  ///                 .build())
  ///             .build());
  ///
  ///         ctx.export("principalId", example.identity().applyValue(_identity -> _identity.principalId()));
  ///     }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  ///   example:
  ///     type: azure:compute:ScaleSet
  ///     properties:
  ///       name: vm-scaleset
  ///       resourceGroupName: ${exampleAzurermResourceGroup.name}
  ///       location: ${exampleAzurermResourceGroup.location}
  ///       sku:
  ///         name: ${vmSku}
  ///         tier: Standard
  ///         capacity: ${instanceCount}
  ///       identity:
  ///         type: SystemAssigned
  ///       extensions:
  ///         - name: MSILinuxExtension
  ///           publisher: Microsoft.ManagedIdentity
  ///           type: ManagedIdentityExtensionForLinux
  ///           typeHandlerVersion: '1.0'
  ///           settings: '{"port": 50342}'
  /// outputs:
  ///   principalId: ${example.identity.principalId}
  /// ```
  final List<String>? identityIds;
  final String? principalId;
  final String? tenantId;
  /// Specifies the identity type to be assigned to the scale set. Allowable values are `SystemAssigned` and `UserAssigned`. For the `SystemAssigned` identity the scale set's Service Principal ID (SPN) can be retrieved after the scale set has been created. See [documentation](https://docs.microsoft.com/azure/active-directory/managed-service-identity/overview) for more information. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  final String type;

  /// Creates a new [ScaleSetIdentity].
  /// [identityIds] Specifies a list of user managed identity ids to be assigned to the VMSS. Required if `type` is `UserAssigned`.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] Specifies the identity type to be assigned to the scale set. Allowable values are `SystemAssigned` and `UserAssigned`. For the `SystemAssigned` identity the scale set's Service Principal ID (SPN) can be retrieved after the scale set has been created. See [documentation](https://docs.microsoft.com/azure/active-directory/managed-service-identity/overview) for more information. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  ScaleSetIdentity({
    this.identityIds,
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': ?identityIds,
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory ScaleSetIdentity.fromMap(Map<String, dynamic> map) {
    return ScaleSetIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

