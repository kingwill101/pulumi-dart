import 'package:pulumi/pulumi.dart' as pulumi;
import 'b2_cresource_skuresponse.dart';
import 'b2_ctenant_args.dart';
import 'b2_ctenant_resource_properties_response_billing_config.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2023-05-17-preview. In version 2.x of the Azure Native provider, it used API version 2021-04-01.
///
/// Other available API versions: 2021-04-01, 2023-01-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azureactivedirectory [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create tenant
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var b2cTenant = new AzureNative.AzureActiveDirectory.B2CTenant("b2cTenant", new()
///     {
///         CountryCode = "US",
///         DisplayName = "Contoso",
///         IsGoLocalTenant = true,
///         Location = "United States",
///         ResourceGroupName = "contosoResourceGroup",
///         ResourceName = "contoso.onmicrosoft.com",
///         Sku = new AzureNative.AzureActiveDirectory.Inputs.B2CResourceSKUArgs
///         {
///             Name = AzureNative.AzureActiveDirectory.B2CResourceSKUName.Standard,
///             Tier = AzureNative.AzureActiveDirectory.B2CResourceSKUTier.A0,
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
/// 		_, err := azureactivedirectory.NewB2CTenant(ctx, "b2cTenant", &azureactivedirectory.B2CTenantArgs{
/// 			CountryCode:       pulumi.String("US"),
/// 			DisplayName:       pulumi.String("Contoso"),
/// 			IsGoLocalTenant:   pulumi.Bool(true),
/// 			Location:          pulumi.String("United States"),
/// 			ResourceGroupName: pulumi.String("contosoResourceGroup"),
/// 			ResourceName:      pulumi.String("contoso.onmicrosoft.com"),
/// 			Sku: &azureactivedirectory.B2CResourceSKUArgs{
/// 				Name: pulumi.String(azureactivedirectory.B2CResourceSKUNameStandard),
/// 				Tier: pulumi.String(azureactivedirectory.B2CResourceSKUTierA0),
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
/// resource "azure-native_azureactivedirectory_b2ctenant" "b2cTenant" {
///   country_code        = "US"
///   display_name        = "Contoso"
///   is_go_local_tenant  = true
///   location            = "United States"
///   resource_group_name = "contosoResourceGroup"
///   resource_name       = "contoso.onmicrosoft.com"
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
/// import com.pulumi.azurenative.azureactivedirectory.B2CTenant;
/// import com.pulumi.azurenative.azureactivedirectory.B2CTenantArgs;
/// import com.pulumi.azurenative.azureactivedirectory.inputs.B2CResourceSKUArgs;
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
///         var b2cTenant = new B2CTenant("b2cTenant", B2CTenantArgs.builder()
///             .countryCode("US")
///             .displayName("Contoso")
///             .isGoLocalTenant(true)
///             .location("United States")
///             .resourceGroupName("contosoResourceGroup")
///             .resourceName("contoso.onmicrosoft.com")
///             .sku(B2CResourceSKUArgs.builder()
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
/// const b2cTenant = new azure_native.azureactivedirectory.B2CTenant("b2cTenant", {
///     countryCode: "US",
///     displayName: "Contoso",
///     isGoLocalTenant: true,
///     location: "United States",
///     resourceGroupName: "contosoResourceGroup",
///     resourceName: "contoso.onmicrosoft.com",
///     sku: {
///         name: azure_native.azureactivedirectory.B2CResourceSKUName.Standard,
///         tier: azure_native.azureactivedirectory.B2CResourceSKUTier.A0,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// b2c_tenant = azure_native.azureactivedirectory.B2CTenant("b2cTenant",
///     country_code="US",
///     display_name="Contoso",
///     is_go_local_tenant=True,
///     location="United States",
///     resource_group_name="contosoResourceGroup",
///     resource_name_="contoso.onmicrosoft.com",
///     sku={
///         "name": azure_native.azureactivedirectory.B2CResourceSKUName.STANDARD,
///         "tier": azure_native.azureactivedirectory.B2CResourceSKUTier.A0,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   b2cTenant:
///     type: azure-native:azureactivedirectory:B2CTenant
///     properties:
///       countryCode: US
///       displayName: Contoso
///       isGoLocalTenant: true
///       location: United States
///       resourceGroupName: contosoResourceGroup
///       resourceName: contoso.onmicrosoft.com
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
/// $ pulumi import azure-native:azureactivedirectory:B2CTenant contoso.onmicrosoft.com /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureActiveDirectory/b2cDirectories/{resourceName}
/// ```
class B2CTenant extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The billing configuration for the tenant.
  late final pulumi.Output<B2CTenantResourcePropertiesResponseBillingConfig?> billingConfig;
  /// Enable GoLocal add-on to store data at rest in the specific Geo. Refer to [aka.ms/B2CDataResidency](https://aka.ms/B2CDataResidency) to see local data residency options.
  late final pulumi.Output<bool?> isGoLocalTenant;
  /// The location in which the resource is hosted and data resides. Can be one of 'United States', 'Europe', 'Asia Pacific', or 'Australia'. Refer to [this documentation](https://aka.ms/B2CDataResidency) for more information.
  late final pulumi.Output<String> location;
  /// The name of the Azure AD B2C tenant resource.
  late final pulumi.Output<String> name;
  /// SKU properties of the Azure AD B2C tenant. Learn more about Azure AD B2C billing at [aka.ms/b2cBilling](https://aka.ms/b2cBilling).
  late final pulumi.Output<B2CResourceSKUResponse> sku;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource Tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// An identifier of the Azure AD B2C tenant.
  late final pulumi.Output<String?> tenantId;
  /// The type of the B2C tenant resource.
  late final pulumi.Output<String> type;

  /// Creates a new [B2CTenant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [B2CTenant]. {@macro pulumi_azureactivedirectory_b2_ctenant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  B2CTenant(
    String name, {
    B2CTenantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azureactivedirectory:B2CTenant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    billingConfig = registerOutput<B2CTenantResourcePropertiesResponseBillingConfig?>('billingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return B2CTenantResourcePropertiesResponseBillingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isGoLocalTenant = registerOutput<bool?>('isGoLocalTenant');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    sku = registerOutput<B2CResourceSKUResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return B2CResourceSKUResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [B2CTenant] resource.
  B2CTenant.reference(String urn)
    : super(
        'azure-native:azureactivedirectory:B2CTenant',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    billingConfig = registerOutput<B2CTenantResourcePropertiesResponseBillingConfig?>('billingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return B2CTenantResourcePropertiesResponseBillingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isGoLocalTenant = registerOutput<bool?>('isGoLocalTenant');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    sku = registerOutput<B2CResourceSKUResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return B2CResourceSKUResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
  }
}
