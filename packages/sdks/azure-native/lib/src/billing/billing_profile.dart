import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_profile_args.dart';
import 'billing_profile_properties_response.dart';
import 'system_data_response.dart';

/// A billing profile.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2024-04-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BillingProfilesCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var billingProfile = new AzureNative.Billing.BillingProfile("billingProfile", new()
///     {
///         BillingAccountName = "00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31",
///         BillingProfileName = "xxxx-xxxx-xxx-xxx",
///         Properties = new AzureNative.Billing.Inputs.BillingProfilePropertiesArgs
///         {
///             BillTo = new AzureNative.Billing.Inputs.BillingProfilePropertiesBillToArgs
///             {
///                 AddressLine1 = "Test Address1",
///                 AddressLine2 = "Test Address2",
///                 AddressLine3 = "Test Address3",
///                 City = "City",
///                 CompanyName = "Contoso",
///                 Country = "US",
///                 Email = "abc@contoso.com",
///                 FirstName = "Test",
///                 IsValidAddress = true,
///                 LastName = "User",
///                 PhoneNumber = "000-000-0000",
///                 PostalCode = "00000",
///                 Region = "WA",
///             },
///             DisplayName = "Billing Profile 1",
///             EnabledAzurePlans = new[]
///             {
///                 new AzureNative.Billing.Inputs.AzurePlanArgs
///                 {
///                     SkuId = "0001",
///                 },
///                 new AzureNative.Billing.Inputs.AzurePlanArgs
///                 {
///                     SkuId = "0002",
///                 },
///             },
///             InvoiceEmailOptIn = true,
///             PoNumber = "ABC12345",
///             ShipTo = new AzureNative.Billing.Inputs.BillingProfilePropertiesShipToArgs
///             {
///                 AddressLine1 = "Test Address1",
///                 AddressLine2 = "Test Address2",
///                 AddressLine3 = "Test Address3",
///                 City = "City",
///                 CompanyName = "Contoso",
///                 Country = "US",
///                 Email = "abc@contoso.com",
///                 FirstName = "Test",
///                 IsValidAddress = true,
///                 LastName = "User",
///                 PhoneNumber = "000-000-0000",
///                 PostalCode = "00000",
///                 Region = "WA",
///             },
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
/// 		_, err := billing.NewBillingProfile(ctx, "billingProfile", &billing.BillingProfileArgs{
/// 			BillingAccountName: pulumi.String("00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31"),
/// 			BillingProfileName: pulumi.String("xxxx-xxxx-xxx-xxx"),
/// 			Properties: &billing.BillingProfilePropertiesArgs{
/// 				BillTo: &billing.BillingProfilePropertiesBillToArgs{
/// 					AddressLine1:   pulumi.String("Test Address1"),
/// 					AddressLine2:   pulumi.String("Test Address2"),
/// 					AddressLine3:   pulumi.String("Test Address3"),
/// 					City:           pulumi.String("City"),
/// 					CompanyName:    pulumi.String("Contoso"),
/// 					Country:        pulumi.String("US"),
/// 					Email:          pulumi.String("abc@contoso.com"),
/// 					FirstName:      pulumi.String("Test"),
/// 					IsValidAddress: pulumi.Bool(true),
/// 					LastName:       pulumi.String("User"),
/// 					PhoneNumber:    pulumi.String("000-000-0000"),
/// 					PostalCode:     pulumi.String("00000"),
/// 					Region:         pulumi.String("WA"),
/// 				},
/// 				DisplayName: pulumi.String("Billing Profile 1"),
/// 				EnabledAzurePlans: billing.AzurePlanArray{
/// 					&billing.AzurePlanArgs{
/// 						SkuId: pulumi.String("0001"),
/// 					},
/// 					&billing.AzurePlanArgs{
/// 						SkuId: pulumi.String("0002"),
/// 					},
/// 				},
/// 				InvoiceEmailOptIn: pulumi.Bool(true),
/// 				PoNumber:          pulumi.String("ABC12345"),
/// 				ShipTo: &billing.BillingProfilePropertiesShipToArgs{
/// 					AddressLine1:   pulumi.String("Test Address1"),
/// 					AddressLine2:   pulumi.String("Test Address2"),
/// 					AddressLine3:   pulumi.String("Test Address3"),
/// 					City:           pulumi.String("City"),
/// 					CompanyName:    pulumi.String("Contoso"),
/// 					Country:        pulumi.String("US"),
/// 					Email:          pulumi.String("abc@contoso.com"),
/// 					FirstName:      pulumi.String("Test"),
/// 					IsValidAddress: pulumi.Bool(true),
/// 					LastName:       pulumi.String("User"),
/// 					PhoneNumber:    pulumi.String("000-000-0000"),
/// 					PostalCode:     pulumi.String("00000"),
/// 					Region:         pulumi.String("WA"),
/// 				},
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
/// resource "azure-native_billing_billingprofile" "billingProfile" {
///   billing_account_name = "00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31"
///   billing_profile_name = "xxxx-xxxx-xxx-xxx"
///   properties = {
///     bill_to = {
///       address_line1    = "Test Address1"
///       address_line2    = "Test Address2"
///       address_line3    = "Test Address3"
///       city             = "City"
///       company_name     = "Contoso"
///       country          = "US"
///       email            = "abc@contoso.com"
///       first_name       = "Test"
///       is_valid_address = true
///       last_name        = "User"
///       phone_number     = "000-000-0000"
///       postal_code      = "00000"
///       region           = "WA"
///     }
///     display_name = "Billing Profile 1"
///     enabled_azure_plans = [{
///       "skuId" = "0001"
///       }, {
///       "skuId" = "0002"
///     }]
///     invoice_email_opt_in = true
///     po_number            = "ABC12345"
///     ship_to = {
///       address_line1    = "Test Address1"
///       address_line2    = "Test Address2"
///       address_line3    = "Test Address3"
///       city             = "City"
///       company_name     = "Contoso"
///       country          = "US"
///       email            = "abc@contoso.com"
///       first_name       = "Test"
///       is_valid_address = true
///       last_name        = "User"
///       phone_number     = "000-000-0000"
///       postal_code      = "00000"
///       region           = "WA"
///     }
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
/// import com.pulumi.azurenative.billing.BillingProfile;
/// import com.pulumi.azurenative.billing.BillingProfileArgs;
/// import com.pulumi.azurenative.billing.inputs.BillingProfilePropertiesArgs;
/// import com.pulumi.azurenative.billing.inputs.BillingProfilePropertiesBillToArgs;
/// import com.pulumi.azurenative.billing.inputs.BillingProfilePropertiesShipToArgs;
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
///         var billingProfile = new BillingProfile("billingProfile", BillingProfileArgs.builder()
///             .billingAccountName("00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31")
///             .billingProfileName("xxxx-xxxx-xxx-xxx")
///             .properties(BillingProfilePropertiesArgs.builder()
///                 .billTo(BillingProfilePropertiesBillToArgs.builder()
///                     .addressLine1("Test Address1")
///                     .addressLine2("Test Address2")
///                     .addressLine3("Test Address3")
///                     .city("City")
///                     .companyName("Contoso")
///                     .country("US")
///                     .email("abc@contoso.com")
///                     .firstName("Test")
///                     .isValidAddress(true)
///                     .lastName("User")
///                     .phoneNumber("000-000-0000")
///                     .postalCode("00000")
///                     .region("WA")
///                     .build())
///                 .displayName("Billing Profile 1")
///                 .enabledAzurePlans(
///                     AzurePlanArgs.builder()
///                         .skuId("0001")
///                         .build(),
///                     AzurePlanArgs.builder()
///                         .skuId("0002")
///                         .build())
///                 .invoiceEmailOptIn(true)
///                 .poNumber("ABC12345")
///                 .shipTo(BillingProfilePropertiesShipToArgs.builder()
///                     .addressLine1("Test Address1")
///                     .addressLine2("Test Address2")
///                     .addressLine3("Test Address3")
///                     .city("City")
///                     .companyName("Contoso")
///                     .country("US")
///                     .email("abc@contoso.com")
///                     .firstName("Test")
///                     .isValidAddress(true)
///                     .lastName("User")
///                     .phoneNumber("000-000-0000")
///                     .postalCode("00000")
///                     .region("WA")
///                     .build())
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
/// const billingProfile = new azure_native.billing.BillingProfile("billingProfile", {
///     billingAccountName: "00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31",
///     billingProfileName: "xxxx-xxxx-xxx-xxx",
///     properties: {
///         billTo: {
///             addressLine1: "Test Address1",
///             addressLine2: "Test Address2",
///             addressLine3: "Test Address3",
///             city: "City",
///             companyName: "Contoso",
///             country: "US",
///             email: "abc@contoso.com",
///             firstName: "Test",
///             isValidAddress: true,
///             lastName: "User",
///             phoneNumber: "000-000-0000",
///             postalCode: "00000",
///             region: "WA",
///         },
///         displayName: "Billing Profile 1",
///         enabledAzurePlans: [
///             {
///                 skuId: "0001",
///             },
///             {
///                 skuId: "0002",
///             },
///         ],
///         invoiceEmailOptIn: true,
///         poNumber: "ABC12345",
///         shipTo: {
///             addressLine1: "Test Address1",
///             addressLine2: "Test Address2",
///             addressLine3: "Test Address3",
///             city: "City",
///             companyName: "Contoso",
///             country: "US",
///             email: "abc@contoso.com",
///             firstName: "Test",
///             isValidAddress: true,
///             lastName: "User",
///             phoneNumber: "000-000-0000",
///             postalCode: "00000",
///             region: "WA",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// billing_profile = azure_native.billing.BillingProfile("billingProfile",
///     billing_account_name="00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31",
///     billing_profile_name="xxxx-xxxx-xxx-xxx",
///     properties={
///         "bill_to": {
///             "address_line1": "Test Address1",
///             "address_line2": "Test Address2",
///             "address_line3": "Test Address3",
///             "city": "City",
///             "company_name": "Contoso",
///             "country": "US",
///             "email": "abc@contoso.com",
///             "first_name": "Test",
///             "is_valid_address": True,
///             "last_name": "User",
///             "phone_number": "000-000-0000",
///             "postal_code": "00000",
///             "region": "WA",
///         },
///         "display_name": "Billing Profile 1",
///         "enabled_azure_plans": [
///             {
///                 "sku_id": "0001",
///             },
///             {
///                 "sku_id": "0002",
///             },
///         ],
///         "invoice_email_opt_in": True,
///         "po_number": "ABC12345",
///         "ship_to": {
///             "address_line1": "Test Address1",
///             "address_line2": "Test Address2",
///             "address_line3": "Test Address3",
///             "city": "City",
///             "company_name": "Contoso",
///             "country": "US",
///             "email": "abc@contoso.com",
///             "first_name": "Test",
///             "is_valid_address": True,
///             "last_name": "User",
///             "phone_number": "000-000-0000",
///             "postal_code": "00000",
///             "region": "WA",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   billingProfile:
///     type: azure-native:billing:BillingProfile
///     properties:
///       billingAccountName: 00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31
///       billingProfileName: xxxx-xxxx-xxx-xxx
///       properties:
///         billTo:
///           addressLine1: Test Address1
///           addressLine2: Test Address2
///           addressLine3: Test Address3
///           city: City
///           companyName: Contoso
///           country: US
///           email: abc@contoso.com
///           firstName: Test
///           isValidAddress: true
///           lastName: User
///           phoneNumber: 000-000-0000
///           postalCode: '00000'
///           region: WA
///         displayName: Billing Profile 1
///         enabledAzurePlans:
///           - skuId: '0001'
///           - skuId: '0002'
///         invoiceEmailOptIn: true
///         poNumber: ABC12345
///         shipTo:
///           addressLine1: Test Address1
///           addressLine2: Test Address2
///           addressLine3: Test Address3
///           city: City
///           companyName: Contoso
///           country: US
///           email: abc@contoso.com
///           firstName: Test
///           isValidAddress: true
///           lastName: User
///           phoneNumber: 000-000-0000
///           postalCode: '00000'
///           region: WA
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
/// $ pulumi import azure-native:billing:BillingProfile xxxx-xxxx-xxx-xxx /providers/Microsoft.Billing/billingAccounts/{billingAccountName}/billingProfiles/{billingProfileName}
/// ```
class BillingProfile extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// A billing profile.
  late final pulumi.Output<BillingProfilePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [BillingProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BillingProfile]. {@macro pulumi_billing_billing_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BillingProfile(
    String name, {
    BillingProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:billing:BillingProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<BillingProfilePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BillingProfilePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
