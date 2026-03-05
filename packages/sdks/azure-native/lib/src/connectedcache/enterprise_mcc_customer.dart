import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_property_response.dart';
import 'enterprise_mcc_customer_args.dart';
import 'system_data_response.dart';

/// Represents the high level Nodes needed to provision customer resources
///
/// Uses Azure REST API version 2023-05-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2024-11-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedcache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EnterpriseMccCustomers_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var enterpriseMccCustomer = new AzureNative.ConnectedCache.EnterpriseMccCustomer("enterpriseMccCustomer", new()
///     {
///         CustomerResourceName = "MccRPTest1",
///         Location = "westus",
///         Properties = new AzureNative.ConnectedCache.Inputs.CustomerPropertyArgs
///         {
///             AdditionalCustomerProperties = new AzureNative.ConnectedCache.Inputs.AdditionalCustomerPropertiesArgs
///             {
///                 CustomerAsn = "hgrelgnrtdkleisnepfolu",
///                 CustomerEmail = "zdjgibsidydyzm",
///                 CustomerEntitlementExpiration = "2024-01-30T00:54:04.773Z",
///                 CustomerEntitlementSkuGuid = "rvzmdpxyflgqetvpwupnfaxsweiiz",
///                 CustomerEntitlementSkuId = "b",
///                 CustomerEntitlementSkuName = "waaqfijr",
///                 CustomerTransitAsn = "habgklnxqzmozqpazoyejwiphezpi",
///                 CustomerTransitState = "voblixkxfejbmhxilb",
///                 OptionalProperty1 = "qhmwxza",
///                 OptionalProperty2 = "l",
///                 OptionalProperty3 = "mblwwvbie",
///                 OptionalProperty4 = "vzuek",
///                 OptionalProperty5 = "fzjodscdfcdr",
///             },
///             Customer = new AzureNative.ConnectedCache.Inputs.CustomerEntityArgs
///             {
///                 ClientTenantId = "fproidkpgvpdnac",
///                 ContactEmail = "xquos",
///                 ContactName = "wxyqjoyoscmvimgwhpitxky",
///                 ContactPhone = "vue",
///                 CustomerName = "mkpzynfqihnjfdbaqbqwyhd",
///                 FullyQualifiedResourceId = "uqsbtgae",
///                 IsEnterpriseManaged = true,
///                 IsEntitled = true,
///                 ReleaseVersion = 20,
///                 ResendSignupCode = true,
///                 ShouldMigrate = true,
///                 VerifySignupCode = true,
///                 VerifySignupPhrase = "tprjvttkgmrqlsyicnidhm",
///             },
///         },
///         ResourceGroupName = "rgConnectedCache",
///         Tags =
///         {
///             { "key3379", "dpyqeaqhcnutzezom" },
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
/// 	connectedcache "github.com/pulumi/pulumi-azure-native-sdk/connectedcache/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connectedcache.NewEnterpriseMccCustomer(ctx, "enterpriseMccCustomer", &connectedcache.EnterpriseMccCustomerArgs{
/// 			CustomerResourceName: pulumi.String("MccRPTest1"),
/// 			Location:             pulumi.String("westus"),
/// 			Properties: &connectedcache.CustomerPropertyArgs{
/// 				AdditionalCustomerProperties: &connectedcache.AdditionalCustomerPropertiesArgs{
/// 					CustomerAsn:                   pulumi.String("hgrelgnrtdkleisnepfolu"),
/// 					CustomerEmail:                 pulumi.String("zdjgibsidydyzm"),
/// 					CustomerEntitlementExpiration: pulumi.String("2024-01-30T00:54:04.773Z"),
/// 					CustomerEntitlementSkuGuid:    pulumi.String("rvzmdpxyflgqetvpwupnfaxsweiiz"),
/// 					CustomerEntitlementSkuId:      pulumi.String("b"),
/// 					CustomerEntitlementSkuName:    pulumi.String("waaqfijr"),
/// 					CustomerTransitAsn:            pulumi.String("habgklnxqzmozqpazoyejwiphezpi"),
/// 					CustomerTransitState:          pulumi.String("voblixkxfejbmhxilb"),
/// 					OptionalProperty1:             pulumi.String("qhmwxza"),
/// 					OptionalProperty2:             pulumi.String("l"),
/// 					OptionalProperty3:             pulumi.String("mblwwvbie"),
/// 					OptionalProperty4:             pulumi.String("vzuek"),
/// 					OptionalProperty5:             pulumi.String("fzjodscdfcdr"),
/// 				},
/// 				Customer: &connectedcache.CustomerEntityArgs{
/// 					ClientTenantId:           pulumi.String("fproidkpgvpdnac"),
/// 					ContactEmail:             pulumi.String("xquos"),
/// 					ContactName:              pulumi.String("wxyqjoyoscmvimgwhpitxky"),
/// 					ContactPhone:             pulumi.String("vue"),
/// 					CustomerName:             pulumi.String("mkpzynfqihnjfdbaqbqwyhd"),
/// 					FullyQualifiedResourceId: pulumi.String("uqsbtgae"),
/// 					IsEnterpriseManaged:      pulumi.Bool(true),
/// 					IsEntitled:               pulumi.Bool(true),
/// 					ReleaseVersion:           pulumi.Int(20),
/// 					ResendSignupCode:         pulumi.Bool(true),
/// 					ShouldMigrate:            pulumi.Bool(true),
/// 					VerifySignupCode:         pulumi.Bool(true),
/// 					VerifySignupPhrase:       pulumi.String("tprjvttkgmrqlsyicnidhm"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgConnectedCache"),
/// 			Tags: pulumi.StringMap{
/// 				"key3379": pulumi.String("dpyqeaqhcnutzezom"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.connectedcache.EnterpriseMccCustomer;
/// import com.pulumi.azurenative.connectedcache.EnterpriseMccCustomerArgs;
/// import com.pulumi.azurenative.connectedcache.inputs.CustomerPropertyArgs;
/// import com.pulumi.azurenative.connectedcache.inputs.AdditionalCustomerPropertiesArgs;
/// import com.pulumi.azurenative.connectedcache.inputs.CustomerEntityArgs;
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
///         var enterpriseMccCustomer = new EnterpriseMccCustomer("enterpriseMccCustomer", EnterpriseMccCustomerArgs.builder()
///             .customerResourceName("MccRPTest1")
///             .location("westus")
///             .properties(CustomerPropertyArgs.builder()
///                 .additionalCustomerProperties(AdditionalCustomerPropertiesArgs.builder()
///                     .customerAsn("hgrelgnrtdkleisnepfolu")
///                     .customerEmail("zdjgibsidydyzm")
///                     .customerEntitlementExpiration("2024-01-30T00:54:04.773Z")
///                     .customerEntitlementSkuGuid("rvzmdpxyflgqetvpwupnfaxsweiiz")
///                     .customerEntitlementSkuId("b")
///                     .customerEntitlementSkuName("waaqfijr")
///                     .customerTransitAsn("habgklnxqzmozqpazoyejwiphezpi")
///                     .customerTransitState("voblixkxfejbmhxilb")
///                     .optionalProperty1("qhmwxza")
///                     .optionalProperty2("l")
///                     .optionalProperty3("mblwwvbie")
///                     .optionalProperty4("vzuek")
///                     .optionalProperty5("fzjodscdfcdr")
///                     .build())
///                 .customer(CustomerEntityArgs.builder()
///                     .clientTenantId("fproidkpgvpdnac")
///                     .contactEmail("xquos")
///                     .contactName("wxyqjoyoscmvimgwhpitxky")
///                     .contactPhone("vue")
///                     .customerName("mkpzynfqihnjfdbaqbqwyhd")
///                     .fullyQualifiedResourceId("uqsbtgae")
///                     .isEnterpriseManaged(true)
///                     .isEntitled(true)
///                     .releaseVersion(20)
///                     .resendSignupCode(true)
///                     .shouldMigrate(true)
///                     .verifySignupCode(true)
///                     .verifySignupPhrase("tprjvttkgmrqlsyicnidhm")
///                     .build())
///                 .build())
///             .resourceGroupName("rgConnectedCache")
///             .tags(Map.of("key3379", "dpyqeaqhcnutzezom"))
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
/// const enterpriseMccCustomer = new azure_native.connectedcache.EnterpriseMccCustomer("enterpriseMccCustomer", {
///     customerResourceName: "MccRPTest1",
///     location: "westus",
///     properties: {
///         additionalCustomerProperties: {
///             customerAsn: "hgrelgnrtdkleisnepfolu",
///             customerEmail: "zdjgibsidydyzm",
///             customerEntitlementExpiration: "2024-01-30T00:54:04.773Z",
///             customerEntitlementSkuGuid: "rvzmdpxyflgqetvpwupnfaxsweiiz",
///             customerEntitlementSkuId: "b",
///             customerEntitlementSkuName: "waaqfijr",
///             customerTransitAsn: "habgklnxqzmozqpazoyejwiphezpi",
///             customerTransitState: "voblixkxfejbmhxilb",
///             optionalProperty1: "qhmwxza",
///             optionalProperty2: "l",
///             optionalProperty3: "mblwwvbie",
///             optionalProperty4: "vzuek",
///             optionalProperty5: "fzjodscdfcdr",
///         },
///         customer: {
///             clientTenantId: "fproidkpgvpdnac",
///             contactEmail: "xquos",
///             contactName: "wxyqjoyoscmvimgwhpitxky",
///             contactPhone: "vue",
///             customerName: "mkpzynfqihnjfdbaqbqwyhd",
///             fullyQualifiedResourceId: "uqsbtgae",
///             isEnterpriseManaged: true,
///             isEntitled: true,
///             releaseVersion: 20,
///             resendSignupCode: true,
///             shouldMigrate: true,
///             verifySignupCode: true,
///             verifySignupPhrase: "tprjvttkgmrqlsyicnidhm",
///         },
///     },
///     resourceGroupName: "rgConnectedCache",
///     tags: {
///         key3379: "dpyqeaqhcnutzezom",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// enterprise_mcc_customer = azure_native.connectedcache.EnterpriseMccCustomer("enterpriseMccCustomer",
///     customer_resource_name="MccRPTest1",
///     location="westus",
///     properties={
///         "additional_customer_properties": {
///             "customer_asn": "hgrelgnrtdkleisnepfolu",
///             "customer_email": "zdjgibsidydyzm",
///             "customer_entitlement_expiration": "2024-01-30T00:54:04.773Z",
///             "customer_entitlement_sku_guid": "rvzmdpxyflgqetvpwupnfaxsweiiz",
///             "customer_entitlement_sku_id": "b",
///             "customer_entitlement_sku_name": "waaqfijr",
///             "customer_transit_asn": "habgklnxqzmozqpazoyejwiphezpi",
///             "customer_transit_state": "voblixkxfejbmhxilb",
///             "optional_property1": "qhmwxza",
///             "optional_property2": "l",
///             "optional_property3": "mblwwvbie",
///             "optional_property4": "vzuek",
///             "optional_property5": "fzjodscdfcdr",
///         },
///         "customer": {
///             "client_tenant_id": "fproidkpgvpdnac",
///             "contact_email": "xquos",
///             "contact_name": "wxyqjoyoscmvimgwhpitxky",
///             "contact_phone": "vue",
///             "customer_name": "mkpzynfqihnjfdbaqbqwyhd",
///             "fully_qualified_resource_id": "uqsbtgae",
///             "is_enterprise_managed": True,
///             "is_entitled": True,
///             "release_version": 20,
///             "resend_signup_code": True,
///             "should_migrate": True,
///             "verify_signup_code": True,
///             "verify_signup_phrase": "tprjvttkgmrqlsyicnidhm",
///         },
///     },
///     resource_group_name="rgConnectedCache",
///     tags={
///         "key3379": "dpyqeaqhcnutzezom",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   enterpriseMccCustomer:
///     type: azure-native:connectedcache:EnterpriseMccCustomer
///     properties:
///       customerResourceName: MccRPTest1
///       location: westus
///       properties:
///         additionalCustomerProperties:
///           customerAsn: hgrelgnrtdkleisnepfolu
///           customerEmail: zdjgibsidydyzm
///           customerEntitlementExpiration: 2024-01-30T00:54:04.773Z
///           customerEntitlementSkuGuid: rvzmdpxyflgqetvpwupnfaxsweiiz
///           customerEntitlementSkuId: b
///           customerEntitlementSkuName: waaqfijr
///           customerTransitAsn: habgklnxqzmozqpazoyejwiphezpi
///           customerTransitState: voblixkxfejbmhxilb
///           optionalProperty1: qhmwxza
///           optionalProperty2: l
///           optionalProperty3: mblwwvbie
///           optionalProperty4: vzuek
///           optionalProperty5: fzjodscdfcdr
///         customer:
///           clientTenantId: fproidkpgvpdnac
///           contactEmail: xquos
///           contactName: wxyqjoyoscmvimgwhpitxky
///           contactPhone: vue
///           customerName: mkpzynfqihnjfdbaqbqwyhd
///           fullyQualifiedResourceId: uqsbtgae
///           isEnterpriseManaged: true
///           isEntitled: true
///           releaseVersion: 20
///           resendSignupCode: true
///           shouldMigrate: true
///           verifySignupCode: true
///           verifySignupPhrase: tprjvttkgmrqlsyicnidhm
///       resourceGroupName: rgConnectedCache
///       tags:
///         key3379: dpyqeaqhcnutzezom
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
/// $ pulumi import azure-native:connectedcache:EnterpriseMccCustomer MccRPTest1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ConnectedCache/enterpriseMccCustomers/{customerResourceName}
/// ```
class EnterpriseMccCustomer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<CustomerPropertyResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EnterpriseMccCustomer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnterpriseMccCustomer]. {@macro pulumi_connectedcache_enterprise_mcc_customer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnterpriseMccCustomer(
    String name, {
    EnterpriseMccCustomerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:connectedcache:EnterpriseMccCustomer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CustomerPropertyResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomerPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
