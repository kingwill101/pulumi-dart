import 'package:pulumi/pulumi.dart' as pulumi;
import 'ledger_args.dart';
import 'ledger_properties_response.dart';
import 'system_data_response.dart';

/// Confidential Ledger. Contains the properties of Confidential Ledger Resource.
///
/// Uses Azure REST API version 2023-06-28-preview. In version 2.x of the Azure Native provider, it used API version 2022-05-13.
///
/// Other available API versions: 2022-05-13, 2022-09-08-preview, 2023-01-26-preview, 2024-07-09-preview, 2024-09-19-preview, 2025-06-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confidentialledger [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConfidentialLedgerCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ledger = new AzureNative.ConfidentialLedger.Ledger("ledger", new()
///     {
///         LedgerName = "DummyLedgerName",
///         Location = "EastUS",
///         Properties = new AzureNative.ConfidentialLedger.Inputs.LedgerPropertiesArgs
///         {
///             AadBasedSecurityPrincipals = new[]
///             {
///                 new AzureNative.ConfidentialLedger.Inputs.AADBasedSecurityPrincipalArgs
///                 {
///                     LedgerRoleName = AzureNative.ConfidentialLedger.LedgerRoleName.Administrator,
///                     PrincipalId = "34621747-6fc8-4771-a2eb-72f31c461f2e",
///                     TenantId = "bce123b9-2b7b-4975-8360-5ca0b9b1cd08",
///                 },
///             },
///             CertBasedSecurityPrincipals = new[]
///             {
///                 new AzureNative.ConfidentialLedger.Inputs.CertBasedSecurityPrincipalArgs
///                 {
///                     Cert = "-----BEGIN CERTIFICATE-----MIIBsjCCATigAwIBAgIUZWIbyG79TniQLd2UxJuU74tqrKcwCgYIKoZIzj0EAwMwEDEOMAwGA1UEAwwFdXNlcjAwHhcNMjEwMzE2MTgwNjExWhcNMjIwMzE2MTgwNjExWjAQMQ4wDAYDVQQDDAV1c2VyMDB2MBAGByqGSM49AgEGBSuBBAAiA2IABBiWSo/j8EFit7aUMm5lF+lUmCu+IgfnpFD+7QMgLKtxRJ3aGSqgS/GpqcYVGddnODtSarNE/HyGKUFUolLPQ5ybHcouUk0kyfA7XMeSoUA4lBz63Wha8wmXo+NdBRo39qNTMFEwHQYDVR0OBBYEFPtuhrwgGjDFHeUUT4nGsXaZn69KMB8GA1UdIwQYMBaAFPtuhrwgGjDFHeUUT4nGsXaZn69KMA8GA1UdEwEB/wQFMAMBAf8wCgYIKoZIzj0EAwMDaAAwZQIxAOnozm2CyqRwSSQLls5r+mUHRGRyXHXwYtM4Dcst/VEZdmS9fqvHRCHbjUlO/+HNfgIwMWZ4FmsjD3wnPxONOm9YdVn/PRD7SsPRPbOjwBiE4EBGaHDsLjYAGDSGi7NJnSkA-----END CERTIFICATE-----",
///                     LedgerRoleName = AzureNative.ConfidentialLedger.LedgerRoleName.Reader,
///                 },
///             },
///             LedgerSku = AzureNative.ConfidentialLedger.LedgerSku.Standard,
///             LedgerType = AzureNative.ConfidentialLedger.LedgerType.Public,
///         },
///         ResourceGroupName = "DummyResourceGroupName",
///         Tags =
///         {
///             { "additionalProps1", "additional properties" },
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
/// 	confidentialledger "github.com/pulumi/pulumi-azure-native-sdk/confidentialledger/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := confidentialledger.NewLedger(ctx, "ledger", &confidentialledger.LedgerArgs{
/// 			LedgerName: pulumi.String("DummyLedgerName"),
/// 			Location:   pulumi.String("EastUS"),
/// 			Properties: &confidentialledger.LedgerPropertiesArgs{
/// 				AadBasedSecurityPrincipals: confidentialledger.AADBasedSecurityPrincipalArray{
/// 					&confidentialledger.AADBasedSecurityPrincipalArgs{
/// 						LedgerRoleName: pulumi.String(confidentialledger.LedgerRoleNameAdministrator),
/// 						PrincipalId:    pulumi.String("34621747-6fc8-4771-a2eb-72f31c461f2e"),
/// 						TenantId:       pulumi.String("bce123b9-2b7b-4975-8360-5ca0b9b1cd08"),
/// 					},
/// 				},
/// 				CertBasedSecurityPrincipals: confidentialledger.CertBasedSecurityPrincipalArray{
/// 					&confidentialledger.CertBasedSecurityPrincipalArgs{
/// 						Cert:           pulumi.String("-----BEGIN CERTIFICATE-----MIIBsjCCATigAwIBAgIUZWIbyG79TniQLd2UxJuU74tqrKcwCgYIKoZIzj0EAwMwEDEOMAwGA1UEAwwFdXNlcjAwHhcNMjEwMzE2MTgwNjExWhcNMjIwMzE2MTgwNjExWjAQMQ4wDAYDVQQDDAV1c2VyMDB2MBAGByqGSM49AgEGBSuBBAAiA2IABBiWSo/j8EFit7aUMm5lF+lUmCu+IgfnpFD+7QMgLKtxRJ3aGSqgS/GpqcYVGddnODtSarNE/HyGKUFUolLPQ5ybHcouUk0kyfA7XMeSoUA4lBz63Wha8wmXo+NdBRo39qNTMFEwHQYDVR0OBBYEFPtuhrwgGjDFHeUUT4nGsXaZn69KMB8GA1UdIwQYMBaAFPtuhrwgGjDFHeUUT4nGsXaZn69KMA8GA1UdEwEB/wQFMAMBAf8wCgYIKoZIzj0EAwMDaAAwZQIxAOnozm2CyqRwSSQLls5r+mUHRGRyXHXwYtM4Dcst/VEZdmS9fqvHRCHbjUlO/+HNfgIwMWZ4FmsjD3wnPxONOm9YdVn/PRD7SsPRPbOjwBiE4EBGaHDsLjYAGDSGi7NJnSkA-----END CERTIFICATE-----"),
/// 						LedgerRoleName: pulumi.String(confidentialledger.LedgerRoleNameReader),
/// 					},
/// 				},
/// 				LedgerSku:  pulumi.String(confidentialledger.LedgerSkuStandard),
/// 				LedgerType: pulumi.String(confidentialledger.LedgerTypePublic),
/// 			},
/// 			ResourceGroupName: pulumi.String("DummyResourceGroupName"),
/// 			Tags: pulumi.StringMap{
/// 				"additionalProps1": pulumi.String("additional properties"),
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
/// import com.pulumi.azurenative.confidentialledger.Ledger;
/// import com.pulumi.azurenative.confidentialledger.LedgerArgs;
/// import com.pulumi.azurenative.confidentialledger.inputs.LedgerPropertiesArgs;
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
///         var ledger = new Ledger("ledger", LedgerArgs.builder()
///             .ledgerName("DummyLedgerName")
///             .location("EastUS")
///             .properties(LedgerPropertiesArgs.builder()
///                 .aadBasedSecurityPrincipals(AADBasedSecurityPrincipalArgs.builder()
///                     .ledgerRoleName("Administrator")
///                     .principalId("34621747-6fc8-4771-a2eb-72f31c461f2e")
///                     .tenantId("bce123b9-2b7b-4975-8360-5ca0b9b1cd08")
///                     .build())
///                 .certBasedSecurityPrincipals(CertBasedSecurityPrincipalArgs.builder()
///                     .cert("-----BEGIN CERTIFICATE-----MIIBsjCCATigAwIBAgIUZWIbyG79TniQLd2UxJuU74tqrKcwCgYIKoZIzj0EAwMwEDEOMAwGA1UEAwwFdXNlcjAwHhcNMjEwMzE2MTgwNjExWhcNMjIwMzE2MTgwNjExWjAQMQ4wDAYDVQQDDAV1c2VyMDB2MBAGByqGSM49AgEGBSuBBAAiA2IABBiWSo/j8EFit7aUMm5lF+lUmCu+IgfnpFD+7QMgLKtxRJ3aGSqgS/GpqcYVGddnODtSarNE/HyGKUFUolLPQ5ybHcouUk0kyfA7XMeSoUA4lBz63Wha8wmXo+NdBRo39qNTMFEwHQYDVR0OBBYEFPtuhrwgGjDFHeUUT4nGsXaZn69KMB8GA1UdIwQYMBaAFPtuhrwgGjDFHeUUT4nGsXaZn69KMA8GA1UdEwEB/wQFMAMBAf8wCgYIKoZIzj0EAwMDaAAwZQIxAOnozm2CyqRwSSQLls5r+mUHRGRyXHXwYtM4Dcst/VEZdmS9fqvHRCHbjUlO/+HNfgIwMWZ4FmsjD3wnPxONOm9YdVn/PRD7SsPRPbOjwBiE4EBGaHDsLjYAGDSGi7NJnSkA-----END CERTIFICATE-----")
///                     .ledgerRoleName("Reader")
///                     .build())
///                 .ledgerSku("Standard")
///                 .ledgerType("Public")
///                 .build())
///             .resourceGroupName("DummyResourceGroupName")
///             .tags(Map.of("additionalProps1", "additional properties"))
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
/// const ledger = new azure_native.confidentialledger.Ledger("ledger", {
///     ledgerName: "DummyLedgerName",
///     location: "EastUS",
///     properties: {
///         aadBasedSecurityPrincipals: [{
///             ledgerRoleName: azure_native.confidentialledger.LedgerRoleName.Administrator,
///             principalId: "34621747-6fc8-4771-a2eb-72f31c461f2e",
///             tenantId: "bce123b9-2b7b-4975-8360-5ca0b9b1cd08",
///         }],
///         certBasedSecurityPrincipals: [{
///             cert: "-----BEGIN CERTIFICATE-----MIIBsjCCATigAwIBAgIUZWIbyG79TniQLd2UxJuU74tqrKcwCgYIKoZIzj0EAwMwEDEOMAwGA1UEAwwFdXNlcjAwHhcNMjEwMzE2MTgwNjExWhcNMjIwMzE2MTgwNjExWjAQMQ4wDAYDVQQDDAV1c2VyMDB2MBAGByqGSM49AgEGBSuBBAAiA2IABBiWSo/j8EFit7aUMm5lF+lUmCu+IgfnpFD+7QMgLKtxRJ3aGSqgS/GpqcYVGddnODtSarNE/HyGKUFUolLPQ5ybHcouUk0kyfA7XMeSoUA4lBz63Wha8wmXo+NdBRo39qNTMFEwHQYDVR0OBBYEFPtuhrwgGjDFHeUUT4nGsXaZn69KMB8GA1UdIwQYMBaAFPtuhrwgGjDFHeUUT4nGsXaZn69KMA8GA1UdEwEB/wQFMAMBAf8wCgYIKoZIzj0EAwMDaAAwZQIxAOnozm2CyqRwSSQLls5r+mUHRGRyXHXwYtM4Dcst/VEZdmS9fqvHRCHbjUlO/+HNfgIwMWZ4FmsjD3wnPxONOm9YdVn/PRD7SsPRPbOjwBiE4EBGaHDsLjYAGDSGi7NJnSkA-----END CERTIFICATE-----",
///             ledgerRoleName: azure_native.confidentialledger.LedgerRoleName.Reader,
///         }],
///         ledgerSku: azure_native.confidentialledger.LedgerSku.Standard,
///         ledgerType: azure_native.confidentialledger.LedgerType.Public,
///     },
///     resourceGroupName: "DummyResourceGroupName",
///     tags: {
///         additionalProps1: "additional properties",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ledger = azure_native.confidentialledger.Ledger("ledger",
///     ledger_name="DummyLedgerName",
///     location="EastUS",
///     properties={
///         "aad_based_security_principals": [{
///             "ledger_role_name": azure_native.confidentialledger.LedgerRoleName.ADMINISTRATOR,
///             "principal_id": "34621747-6fc8-4771-a2eb-72f31c461f2e",
///             "tenant_id": "bce123b9-2b7b-4975-8360-5ca0b9b1cd08",
///         }],
///         "cert_based_security_principals": [{
///             "cert": "-----BEGIN CERTIFICATE-----MIIBsjCCATigAwIBAgIUZWIbyG79TniQLd2UxJuU74tqrKcwCgYIKoZIzj0EAwMwEDEOMAwGA1UEAwwFdXNlcjAwHhcNMjEwMzE2MTgwNjExWhcNMjIwMzE2MTgwNjExWjAQMQ4wDAYDVQQDDAV1c2VyMDB2MBAGByqGSM49AgEGBSuBBAAiA2IABBiWSo/j8EFit7aUMm5lF+lUmCu+IgfnpFD+7QMgLKtxRJ3aGSqgS/GpqcYVGddnODtSarNE/HyGKUFUolLPQ5ybHcouUk0kyfA7XMeSoUA4lBz63Wha8wmXo+NdBRo39qNTMFEwHQYDVR0OBBYEFPtuhrwgGjDFHeUUT4nGsXaZn69KMB8GA1UdIwQYMBaAFPtuhrwgGjDFHeUUT4nGsXaZn69KMA8GA1UdEwEB/wQFMAMBAf8wCgYIKoZIzj0EAwMDaAAwZQIxAOnozm2CyqRwSSQLls5r+mUHRGRyXHXwYtM4Dcst/VEZdmS9fqvHRCHbjUlO/+HNfgIwMWZ4FmsjD3wnPxONOm9YdVn/PRD7SsPRPbOjwBiE4EBGaHDsLjYAGDSGi7NJnSkA-----END CERTIFICATE-----",
///             "ledger_role_name": azure_native.confidentialledger.LedgerRoleName.READER,
///         }],
///         "ledger_sku": azure_native.confidentialledger.LedgerSku.STANDARD,
///         "ledger_type": azure_native.confidentialledger.LedgerType.PUBLIC,
///     },
///     resource_group_name="DummyResourceGroupName",
///     tags={
///         "additionalProps1": "additional properties",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ledger:
///     type: azure-native:confidentialledger:Ledger
///     properties:
///       ledgerName: DummyLedgerName
///       location: EastUS
///       properties:
///         aadBasedSecurityPrincipals:
///           - ledgerRoleName: Administrator
///             principalId: 34621747-6fc8-4771-a2eb-72f31c461f2e
///             tenantId: bce123b9-2b7b-4975-8360-5ca0b9b1cd08
///         certBasedSecurityPrincipals:
///           - cert: '-----BEGIN CERTIFICATE-----MIIBsjCCATigAwIBAgIUZWIbyG79TniQLd2UxJuU74tqrKcwCgYIKoZIzj0EAwMwEDEOMAwGA1UEAwwFdXNlcjAwHhcNMjEwMzE2MTgwNjExWhcNMjIwMzE2MTgwNjExWjAQMQ4wDAYDVQQDDAV1c2VyMDB2MBAGByqGSM49AgEGBSuBBAAiA2IABBiWSo/j8EFit7aUMm5lF+lUmCu+IgfnpFD+7QMgLKtxRJ3aGSqgS/GpqcYVGddnODtSarNE/HyGKUFUolLPQ5ybHcouUk0kyfA7XMeSoUA4lBz63Wha8wmXo+NdBRo39qNTMFEwHQYDVR0OBBYEFPtuhrwgGjDFHeUUT4nGsXaZn69KMB8GA1UdIwQYMBaAFPtuhrwgGjDFHeUUT4nGsXaZn69KMA8GA1UdEwEB/wQFMAMBAf8wCgYIKoZIzj0EAwMDaAAwZQIxAOnozm2CyqRwSSQLls5r+mUHRGRyXHXwYtM4Dcst/VEZdmS9fqvHRCHbjUlO/+HNfgIwMWZ4FmsjD3wnPxONOm9YdVn/PRD7SsPRPbOjwBiE4EBGaHDsLjYAGDSGi7NJnSkA-----END CERTIFICATE-----'
///             ledgerRoleName: Reader
///         ledgerSku: Standard
///         ledgerType: Public
///       resourceGroupName: DummyResourceGroupName
///       tags:
///         additionalProps1: additional properties
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
/// $ pulumi import azure-native:confidentialledger:Ledger DummyLedgerName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ConfidentialLedger/ledgers/{ledgerName}
/// ```
class Ledger extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of Confidential Ledger Resource.
  late final pulumi.Output<LedgerPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ledger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ledger]. {@macro pulumi_confidentialledger_ledger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ledger(
    String name, {
    LedgerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:confidentialledger:Ledger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<LedgerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LedgerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
