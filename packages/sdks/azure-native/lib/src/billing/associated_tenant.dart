import 'package:pulumi/pulumi.dart' as pulumi;
import 'associated_tenant_args.dart';
import 'associated_tenant_properties_response.dart';
import 'system_data_response.dart';

/// An associated tenant.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2024-04-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AssociatedTenantsCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var associatedTenant = new AzureNative.Billing.AssociatedTenant("associatedTenant", new()
///     {
///         AssociatedTenantName = "11111111-1111-1111-1111-111111111111",
///         BillingAccountName = "00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31",
///         Properties = new AzureNative.Billing.Inputs.AssociatedTenantPropertiesArgs
///         {
///             BillingManagementState = AzureNative.Billing.BillingManagementTenantState.Active,
///             DisplayName = "Contoso Finance",
///             ProvisioningManagementState = AzureNative.Billing.ProvisioningTenantState.Pending,
///         },
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
/// 	billing "github.com/pulumi/pulumi-azure-native-sdk/billing/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := billing.NewAssociatedTenant(ctx, "associatedTenant", &billing.AssociatedTenantArgs{
/// 			AssociatedTenantName: pulumi.String("11111111-1111-1111-1111-111111111111"),
/// 			BillingAccountName:   pulumi.String("00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31"),
/// 			Properties: &billing.AssociatedTenantPropertiesArgs{
/// 				BillingManagementState:      pulumi.String(billing.BillingManagementTenantStateActive),
/// 				DisplayName:                 pulumi.String("Contoso Finance"),
/// 				ProvisioningManagementState: pulumi.String(billing.ProvisioningTenantStatePending),
/// 			},
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
/// resource "azure-native_billing_associatedtenant" "associatedTenant" {
///   associated_tenant_name = "11111111-1111-1111-1111-111111111111"
///   billing_account_name   = "00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31"
///   properties = {
///     billing_management_state      = "Active"
///     display_name                  = "Contoso Finance"
///     provisioning_management_state = "Pending"
///   }
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
/// import com.pulumi.azurenative.billing.AssociatedTenant;
/// import com.pulumi.azurenative.billing.AssociatedTenantArgs;
/// import com.pulumi.azurenative.billing.inputs.AssociatedTenantPropertiesArgs;
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
///         var associatedTenant = new AssociatedTenant("associatedTenant", AssociatedTenantArgs.builder()
///             .associatedTenantName("11111111-1111-1111-1111-111111111111")
///             .billingAccountName("00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31")
///             .properties(AssociatedTenantPropertiesArgs.builder()
///                 .billingManagementState("Active")
///                 .displayName("Contoso Finance")
///                 .provisioningManagementState("Pending")
///                 .build())
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
/// const associatedTenant = new azure_native.billing.AssociatedTenant("associatedTenant", {
///     associatedTenantName: "11111111-1111-1111-1111-111111111111",
///     billingAccountName: "00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31",
///     properties: {
///         billingManagementState: azure_native.billing.BillingManagementTenantState.Active,
///         displayName: "Contoso Finance",
///         provisioningManagementState: azure_native.billing.ProvisioningTenantState.Pending,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// associated_tenant = azure_native.billing.AssociatedTenant("associatedTenant",
///     associated_tenant_name="11111111-1111-1111-1111-111111111111",
///     billing_account_name="00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31",
///     properties={
///         "billing_management_state": azure_native.billing.BillingManagementTenantState.ACTIVE,
///         "display_name": "Contoso Finance",
///         "provisioning_management_state": azure_native.billing.ProvisioningTenantState.PENDING,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   associatedTenant:
///     type: azure-native:billing:AssociatedTenant
///     properties:
///       associatedTenantName: 11111111-1111-1111-1111-111111111111
///       billingAccountName: 00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31
///       properties:
///         billingManagementState: Active
///         displayName: Contoso Finance
///         provisioningManagementState: Pending
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
/// $ pulumi import azure-native:billing:AssociatedTenant 11111111-1111-1111-1111-111111111111 /providers/Microsoft.Billing/billingAccounts/{billingAccountName}/associatedTenants/{associatedTenantName}
/// ```
class AssociatedTenant extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// An associated tenant.
  late final pulumi.Output<AssociatedTenantPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AssociatedTenant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssociatedTenant]. {@macro pulumi_billing_associated_tenant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssociatedTenant(
    String name, {
    AssociatedTenantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:billing:AssociatedTenant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AssociatedTenantPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssociatedTenantPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AssociatedTenant] resource.
  AssociatedTenant.reference(String urn)
    : super(
        'azure-native:billing:AssociatedTenant',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AssociatedTenantPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssociatedTenantPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
