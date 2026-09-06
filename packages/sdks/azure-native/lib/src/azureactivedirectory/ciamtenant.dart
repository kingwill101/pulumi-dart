import 'package:pulumi/pulumi.dart' as pulumi;
import 'ciamresource_skuresponse.dart';
import 'ciamtenant_args.dart';
import 'create_ciamtenant_properties_response.dart';
import 'system_data_response.dart';

/// The Azure AD for customers resource.
///
/// Uses Azure REST API version 2023-05-17-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-17-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create_CIAM_tenant
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ciamTenant = new AzureNative.AzureActiveDirectory.CIAMTenant("ciamTenant", new()
///     {
///         CreateTenantProperties = new AzureNative.AzureActiveDirectory.Inputs.CreateCIAMTenantPropertiesArgs
///         {
///             CountryCode = "US",
///             DisplayName = "Contoso",
///         },
///         Location = "United States",
///         ResourceGroupName = "contosoResourceGroup",
///         ResourceName = "contoso",
///         Sku = new AzureNative.AzureActiveDirectory.Inputs.CIAMResourceSKUArgs
///         {
///             Name = AzureNative.AzureActiveDirectory.CIAMResourceSKUName.Standard,
///             Tier = AzureNative.AzureActiveDirectory.CIAMResourceSKUTier.A0,
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
/// 	azureactivedirectory "github.com/pulumi/pulumi-azure-native-sdk/azureactivedirectory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azureactivedirectory.NewCIAMTenant(ctx, "ciamTenant", &azureactivedirectory.CIAMTenantArgs{
/// 			CreateTenantProperties: &azureactivedirectory.CreateCIAMTenantPropertiesArgs{
/// 				CountryCode: pulumi.String("US"),
/// 				DisplayName: pulumi.String("Contoso"),
/// 			},
/// 			Location:          pulumi.String("United States"),
/// 			ResourceGroupName: pulumi.String("contosoResourceGroup"),
/// 			ResourceName:      pulumi.String("contoso"),
/// 			Sku: &azureactivedirectory.CIAMResourceSKUArgs{
/// 				Name: pulumi.String(azureactivedirectory.CIAMResourceSKUNameStandard),
/// 				Tier: pulumi.String(azureactivedirectory.CIAMResourceSKUTierA0),
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
/// resource "azure-native_azureactivedirectory_ciamtenant" "ciamTenant" {
///   create_tenant_properties = {
///     country_code = "US"
///     display_name = "Contoso"
///   }
///   location            = "United States"
///   resource_group_name = "contosoResourceGroup"
///   resource_name       = "contoso"
///   sku = {
///     name = "Standard"
///     tier = "A0"
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
/// import com.pulumi.azurenative.azureactivedirectory.CIAMTenant;
/// import com.pulumi.azurenative.azureactivedirectory.CIAMTenantArgs;
/// import com.pulumi.azurenative.azureactivedirectory.inputs.CreateCIAMTenantPropertiesArgs;
/// import com.pulumi.azurenative.azureactivedirectory.inputs.CIAMResourceSKUArgs;
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
///         var ciamTenant = new CIAMTenant("ciamTenant", CIAMTenantArgs.builder()
///             .createTenantProperties(CreateCIAMTenantPropertiesArgs.builder()
///                 .countryCode("US")
///                 .displayName("Contoso")
///                 .build())
///             .location("United States")
///             .resourceGroupName("contosoResourceGroup")
///             .resourceName("contoso")
///             .sku(CIAMResourceSKUArgs.builder()
///                 .name("Standard")
///                 .tier("A0")
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
/// const ciamTenant = new azure_native.azureactivedirectory.CIAMTenant("ciamTenant", {
///     createTenantProperties: {
///         countryCode: "US",
///         displayName: "Contoso",
///     },
///     location: "United States",
///     resourceGroupName: "contosoResourceGroup",
///     resourceName: "contoso",
///     sku: {
///         name: azure_native.azureactivedirectory.CIAMResourceSKUName.Standard,
///         tier: azure_native.azureactivedirectory.CIAMResourceSKUTier.A0,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ciam_tenant = azure_native.azureactivedirectory.CIAMTenant("ciamTenant",
///     create_tenant_properties={
///         "country_code": "US",
///         "display_name": "Contoso",
///     },
///     location="United States",
///     resource_group_name="contosoResourceGroup",
///     resource_name_="contoso",
///     sku={
///         "name": azure_native.azureactivedirectory.CIAMResourceSKUName.STANDARD,
///         "tier": azure_native.azureactivedirectory.CIAMResourceSKUTier.A0,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ciamTenant:
///     type: azure-native:azureactivedirectory:CIAMTenant
///     properties:
///       createTenantProperties:
///         countryCode: US
///         displayName: Contoso
///       location: United States
///       resourceGroupName: contosoResourceGroup
///       resourceName: contoso
///       sku:
///         name: Standard
///         tier: A0
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
/// $ pulumi import azure-native:azureactivedirectory:CIAMTenant contoso /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureActiveDirectory/ciamDirectories/{resourceName}
/// ```
class CIAMTenant extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The type of billing. Will be MAU for all new customers. Cannot be changed if value is 'MAU'. Learn more about Azure AD for customers billing at [aka.ms/b2cBilling](https://aka.ms/b2cbilling).
  late final pulumi.Output<String> billingType;
  /// These properties are used to create the Azure AD for customers tenant. These properties are not part of the Azure resource.
  late final pulumi.Output<CreateCIAMTenantPropertiesResponse> createTenantProperties;
  /// The domain name of the tenant
  late final pulumi.Output<String> domainName;
  /// The data from which the billing type took effect
  late final pulumi.Output<String> effectiveStartDateUtc;
  /// The location in which the resource is hosted and data resides. Can be one of 'United States', 'Europe', 'Asia Pacific', or 'Australia'. Refer to [this documentation](https://aka.ms/ciam-data-location) for more information.
  late final pulumi.Output<String> location;
  /// The name of the Azure AD for customers tenant resource.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> provisioningState;
  /// SKU properties of the Azure AD for customers tenant. Learn more about Azure AD for customers billing at [https://aka.ms/ciambilling](https://aka.ms/ciambilling).
  late final pulumi.Output<CIAMResourceSKUResponse> sku;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource Tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// An identifier of the Azure AD for customers tenant.
  late final pulumi.Output<String?> tenantId;
  /// The type of the Azure AD for customers tenant resource.
  late final pulumi.Output<String> type;

  /// Creates a new [CIAMTenant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CIAMTenant]. {@macro pulumi_azureactivedirectory_ciamtenant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CIAMTenant(
    String name, {
    CIAMTenantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azureactivedirectory:CIAMTenant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    billingType = registerOutput<String>('billingType');
    createTenantProperties = registerOutput<CreateCIAMTenantPropertiesResponse>('createTenantProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CreateCIAMTenantPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainName = registerOutput<String>('domainName');
    effectiveStartDateUtc = registerOutput<String>('effectiveStartDateUtc');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<CIAMResourceSKUResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CIAMResourceSKUResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [CIAMTenant] resource.
  CIAMTenant.reference(String urn)
    : super(
        'azure-native:azureactivedirectory:CIAMTenant',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    billingType = registerOutput<String>('billingType');
    createTenantProperties = registerOutput<CreateCIAMTenantPropertiesResponse>('createTenantProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CreateCIAMTenantPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainName = registerOutput<String>('domainName');
    effectiveStartDateUtc = registerOutput<String>('effectiveStartDateUtc');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<CIAMResourceSKUResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CIAMResourceSKUResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
  }
}
