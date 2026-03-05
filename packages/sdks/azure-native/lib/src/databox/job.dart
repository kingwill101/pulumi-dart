import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_error_response.dart';
import 'data_box_customer_disk_job_details_response.dart';
import 'job_args.dart';
import 'job_delivery_info_response.dart';
import 'resource_identity_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Job Resource.
///
/// Uses Azure REST API version 2024-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-12-01.
///
/// Other available API versions: 2022-12-01, 2023-03-01, 2023-12-01, 2024-02-01-preview, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databox [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### JobsCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var job = new AzureNative.DataBox.Job("job", new()
///     {
///         Details = new AzureNative.DataBox.Inputs.DataBoxJobDetailsArgs
///         {
///             ContactDetails = new AzureNative.DataBox.Inputs.ContactDetailsArgs
///             {
///                 ContactName = "XXXX XXXX",
///                 EmailList = new[]
///                 {
///                     "xxxx@xxxx.xxx",
///                 },
///                 Phone = "0000000000",
///                 PhoneExtension = "",
///             },
///             DataImportDetails = new[]
///             {
///                 new AzureNative.DataBox.Inputs.DataImportDetailsArgs
///                 {
///                     AccountDetails = new AzureNative.DataBox.Inputs.StorageAccountDetailsArgs
///                     {
///                         DataAccountType = "StorageAccount",
///                         StorageAccountId = "/subscriptions/YourSubscriptionId/resourcegroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName",
///                     },
///                 },
///             },
///             JobDetailsType = "DataBox",
///             ShippingAddress = new AzureNative.DataBox.Inputs.ShippingAddressArgs
///             {
///                 AddressType = AzureNative.DataBox.AddressType.Commercial,
///                 City = "XXXX XXXX",
///                 CompanyName = "XXXX XXXX",
///                 Country = "XX",
///                 PostalCode = "00000",
///                 StateOrProvince = "XX",
///                 StreetAddress1 = "XXXX XXXX",
///                 StreetAddress2 = "XXXX XXXX",
///             },
///         },
///         JobName = "TestJobName1",
///         Location = "westus",
///         ResourceGroupName = "YourResourceGroupName",
///         Sku = new AzureNative.DataBox.Inputs.SkuArgs
///         {
///             Name = AzureNative.DataBox.SkuName.DataBox,
///         },
///         TransferType = AzureNative.DataBox.TransferType.ImportToAzure,
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
/// 	databox "github.com/pulumi/pulumi-azure-native-sdk/databox/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databox.NewJob(ctx, "job", &databox.JobArgs{
/// 			Details: &databox.DataBoxJobDetailsArgs{
/// 				ContactDetails: &databox.ContactDetailsArgs{
/// 					ContactName: pulumi.String("XXXX XXXX"),
/// 					EmailList: pulumi.StringArray{
/// 						pulumi.String("xxxx@xxxx.xxx"),
/// 					},
/// 					Phone:          pulumi.String("0000000000"),
/// 					PhoneExtension: pulumi.String(""),
/// 				},
/// 				DataImportDetails: databox.DataImportDetailsArray{
/// 					&databox.DataImportDetailsArgs{
/// 						AccountDetails: databox.StorageAccountDetails{
/// 							DataAccountType:  "StorageAccount",
/// 							StorageAccountId: "/subscriptions/YourSubscriptionId/resourcegroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName",
/// 						},
/// 					},
/// 				},
/// 				JobDetailsType: pulumi.String("DataBox"),
/// 				ShippingAddress: &databox.ShippingAddressArgs{
/// 					AddressType:     pulumi.String(databox.AddressTypeCommercial),
/// 					City:            pulumi.String("XXXX XXXX"),
/// 					CompanyName:     pulumi.String("XXXX XXXX"),
/// 					Country:         pulumi.String("XX"),
/// 					PostalCode:      pulumi.String("00000"),
/// 					StateOrProvince: pulumi.String("XX"),
/// 					StreetAddress1:  pulumi.String("XXXX XXXX"),
/// 					StreetAddress2:  pulumi.String("XXXX XXXX"),
/// 				},
/// 			},
/// 			JobName:           pulumi.String("TestJobName1"),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("YourResourceGroupName"),
/// 			Sku: &databox.SkuArgs{
/// 				Name: pulumi.String(databox.SkuNameDataBox),
/// 			},
/// 			TransferType: pulumi.String(databox.TransferTypeImportToAzure),
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
/// import com.pulumi.azurenative.databox.Job;
/// import com.pulumi.azurenative.databox.JobArgs;
/// import com.pulumi.azurenative.databox.inputs.SkuArgs;
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
///         var job = new Job("job", JobArgs.builder()
///             .details(DataBoxJobDetailsArgs.builder()
///                 .contactDetails(ContactDetailsArgs.builder()
///                     .contactName("XXXX XXXX")
///                     .emailList("xxxx@xxxx.xxx")
///                     .phone("0000000000")
///                     .phoneExtension("")
///                     .build())
///                 .dataImportDetails(DataImportDetailsArgs.builder()
///                     .accountDetails(StorageAccountDetailsArgs.builder()
///                         .dataAccountType("StorageAccount")
///                         .storageAccountId("/subscriptions/YourSubscriptionId/resourcegroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName")
///                         .build())
///                     .build())
///                 .jobDetailsType("DataBox")
///                 .shippingAddress(ShippingAddressArgs.builder()
///                     .addressType("Commercial")
///                     .city("XXXX XXXX")
///                     .companyName("XXXX XXXX")
///                     .country("XX")
///                     .postalCode("00000")
///                     .stateOrProvince("XX")
///                     .streetAddress1("XXXX XXXX")
///                     .streetAddress2("XXXX XXXX")
///                     .build())
///                 .build())
///             .jobName("TestJobName1")
///             .location("westus")
///             .resourceGroupName("YourResourceGroupName")
///             .sku(SkuArgs.builder()
///                 .name("DataBox")
///                 .build())
///             .transferType("ImportToAzure")
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
/// const job = new azure_native.databox.Job("job", {
///     details: {
///         contactDetails: {
///             contactName: "XXXX XXXX",
///             emailList: ["xxxx@xxxx.xxx"],
///             phone: "0000000000",
///             phoneExtension: "",
///         },
///         dataImportDetails: [{
///             accountDetails: {
///                 dataAccountType: "StorageAccount",
///                 storageAccountId: "/subscriptions/YourSubscriptionId/resourcegroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName",
///             },
///         }],
///         jobDetailsType: "DataBox",
///         shippingAddress: {
///             addressType: azure_native.databox.AddressType.Commercial,
///             city: "XXXX XXXX",
///             companyName: "XXXX XXXX",
///             country: "XX",
///             postalCode: "00000",
///             stateOrProvince: "XX",
///             streetAddress1: "XXXX XXXX",
///             streetAddress2: "XXXX XXXX",
///         },
///     },
///     jobName: "TestJobName1",
///     location: "westus",
///     resourceGroupName: "YourResourceGroupName",
///     sku: {
///         name: azure_native.databox.SkuName.DataBox,
///     },
///     transferType: azure_native.databox.TransferType.ImportToAzure,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job = azure_native.databox.Job("job",
///     details={
///         "contact_details": {
///             "contact_name": "XXXX XXXX",
///             "email_list": ["xxxx@xxxx.xxx"],
///             "phone": "0000000000",
///             "phone_extension": "",
///         },
///         "data_import_details": [{
///             "account_details": {
///                 "data_account_type": "StorageAccount",
///                 "storage_account_id": "/subscriptions/YourSubscriptionId/resourcegroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName",
///             },
///         }],
///         "job_details_type": "DataBox",
///         "shipping_address": {
///             "address_type": azure_native.databox.AddressType.COMMERCIAL,
///             "city": "XXXX XXXX",
///             "company_name": "XXXX XXXX",
///             "country": "XX",
///             "postal_code": "00000",
///             "state_or_province": "XX",
///             "street_address1": "XXXX XXXX",
///             "street_address2": "XXXX XXXX",
///         },
///     },
///     job_name="TestJobName1",
///     location="westus",
///     resource_group_name="YourResourceGroupName",
///     sku={
///         "name": azure_native.databox.SkuName.DATA_BOX,
///     },
///     transfer_type=azure_native.databox.TransferType.IMPORT_TO_AZURE)
///
/// ```
///
/// ```yaml
/// resources:
///   job:
///     type: azure-native:databox:Job
///     properties:
///       details:
///         contactDetails:
///           contactName: XXXX XXXX
///           emailList:
///             - xxxx@xxxx.xxx
///           phone: '0000000000'
///           phoneExtension: ""
///         dataImportDetails:
///           - accountDetails:
///               dataAccountType: StorageAccount
///               storageAccountId: /subscriptions/YourSubscriptionId/resourcegroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName
///         jobDetailsType: DataBox
///         shippingAddress:
///           addressType: Commercial
///           city: XXXX XXXX
///           companyName: XXXX XXXX
///           country: XX
///           postalCode: '00000'
///           stateOrProvince: XX
///           streetAddress1: XXXX XXXX
///           streetAddress2: XXXX XXXX
///       jobName: TestJobName1
///       location: westus
///       resourceGroupName: YourResourceGroupName
///       sku:
///         name: DataBox
///       transferType: ImportToAzure
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### JobsCreateDevicePassword
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var job = new AzureNative.DataBox.Job("job", new()
///     {
///         Details = new AzureNative.DataBox.Inputs.DataBoxJobDetailsArgs
///         {
///             ContactDetails = new AzureNative.DataBox.Inputs.ContactDetailsArgs
///             {
///                 ContactName = "XXXX XXXX",
///                 EmailList = new[]
///                 {
///                     "xxxx@xxxx.xxx",
///                 },
///                 Phone = "0000000000",
///                 PhoneExtension = "",
///             },
///             DataImportDetails = new[]
///             {
///                 new AzureNative.DataBox.Inputs.DataImportDetailsArgs
///                 {
///                     AccountDetails = new AzureNative.DataBox.Inputs.StorageAccountDetailsArgs
///                     {
///                         DataAccountType = "StorageAccount",
///                         SharePassword = "<sharePassword>",
///                         StorageAccountId = "/subscriptions/YourSubscriptionId/resourceGroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName",
///                     },
///                 },
///             },
///             DevicePassword = "<devicePassword>",
///             JobDetailsType = "DataBox",
///             ShippingAddress = new AzureNative.DataBox.Inputs.ShippingAddressArgs
///             {
///                 AddressType = AzureNative.DataBox.AddressType.Commercial,
///                 City = "XXXX XXXX",
///                 CompanyName = "XXXX XXXX",
///                 Country = "XX",
///                 PostalCode = "00000",
///                 StateOrProvince = "XX",
///                 StreetAddress1 = "XXXX XXXX",
///                 StreetAddress2 = "XXXX XXXX",
///             },
///         },
///         JobName = "TestJobName1",
///         Location = "westus",
///         ResourceGroupName = "YourResourceGroupName",
///         Sku = new AzureNative.DataBox.Inputs.SkuArgs
///         {
///             Name = AzureNative.DataBox.SkuName.DataBox,
///         },
///         TransferType = AzureNative.DataBox.TransferType.ImportToAzure,
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
/// 	databox "github.com/pulumi/pulumi-azure-native-sdk/databox/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databox.NewJob(ctx, "job", &databox.JobArgs{
/// 			Details: &databox.DataBoxJobDetailsArgs{
/// 				ContactDetails: &databox.ContactDetailsArgs{
/// 					ContactName: pulumi.String("XXXX XXXX"),
/// 					EmailList: pulumi.StringArray{
/// 						pulumi.String("xxxx@xxxx.xxx"),
/// 					},
/// 					Phone:          pulumi.String("0000000000"),
/// 					PhoneExtension: pulumi.String(""),
/// 				},
/// 				DataImportDetails: databox.DataImportDetailsArray{
/// 					&databox.DataImportDetailsArgs{
/// 						AccountDetails: databox.StorageAccountDetails{
/// 							DataAccountType:  "StorageAccount",
/// 							SharePassword:    "<sharePassword>",
/// 							StorageAccountId: "/subscriptions/YourSubscriptionId/resourceGroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName",
/// 						},
/// 					},
/// 				},
/// 				DevicePassword: pulumi.String("<devicePassword>"),
/// 				JobDetailsType: pulumi.String("DataBox"),
/// 				ShippingAddress: &databox.ShippingAddressArgs{
/// 					AddressType:     pulumi.String(databox.AddressTypeCommercial),
/// 					City:            pulumi.String("XXXX XXXX"),
/// 					CompanyName:     pulumi.String("XXXX XXXX"),
/// 					Country:         pulumi.String("XX"),
/// 					PostalCode:      pulumi.String("00000"),
/// 					StateOrProvince: pulumi.String("XX"),
/// 					StreetAddress1:  pulumi.String("XXXX XXXX"),
/// 					StreetAddress2:  pulumi.String("XXXX XXXX"),
/// 				},
/// 			},
/// 			JobName:           pulumi.String("TestJobName1"),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("YourResourceGroupName"),
/// 			Sku: &databox.SkuArgs{
/// 				Name: pulumi.String(databox.SkuNameDataBox),
/// 			},
/// 			TransferType: pulumi.String(databox.TransferTypeImportToAzure),
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
/// import com.pulumi.azurenative.databox.Job;
/// import com.pulumi.azurenative.databox.JobArgs;
/// import com.pulumi.azurenative.databox.inputs.SkuArgs;
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
///         var job = new Job("job", JobArgs.builder()
///             .details(DataBoxJobDetailsArgs.builder()
///                 .contactDetails(ContactDetailsArgs.builder()
///                     .contactName("XXXX XXXX")
///                     .emailList("xxxx@xxxx.xxx")
///                     .phone("0000000000")
///                     .phoneExtension("")
///                     .build())
///                 .dataImportDetails(DataImportDetailsArgs.builder()
///                     .accountDetails(StorageAccountDetailsArgs.builder()
///                         .dataAccountType("StorageAccount")
///                         .sharePassword("<sharePassword>")
///                         .storageAccountId("/subscriptions/YourSubscriptionId/resourceGroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName")
///                         .build())
///                     .build())
///                 .devicePassword("<devicePassword>")
///                 .jobDetailsType("DataBox")
///                 .shippingAddress(ShippingAddressArgs.builder()
///                     .addressType("Commercial")
///                     .city("XXXX XXXX")
///                     .companyName("XXXX XXXX")
///                     .country("XX")
///                     .postalCode("00000")
///                     .stateOrProvince("XX")
///                     .streetAddress1("XXXX XXXX")
///                     .streetAddress2("XXXX XXXX")
///                     .build())
///                 .build())
///             .jobName("TestJobName1")
///             .location("westus")
///             .resourceGroupName("YourResourceGroupName")
///             .sku(SkuArgs.builder()
///                 .name("DataBox")
///                 .build())
///             .transferType("ImportToAzure")
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
/// const job = new azure_native.databox.Job("job", {
///     details: {
///         contactDetails: {
///             contactName: "XXXX XXXX",
///             emailList: ["xxxx@xxxx.xxx"],
///             phone: "0000000000",
///             phoneExtension: "",
///         },
///         dataImportDetails: [{
///             accountDetails: {
///                 dataAccountType: "StorageAccount",
///                 sharePassword: "<sharePassword>",
///                 storageAccountId: "/subscriptions/YourSubscriptionId/resourceGroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName",
///             },
///         }],
///         devicePassword: "<devicePassword>",
///         jobDetailsType: "DataBox",
///         shippingAddress: {
///             addressType: azure_native.databox.AddressType.Commercial,
///             city: "XXXX XXXX",
///             companyName: "XXXX XXXX",
///             country: "XX",
///             postalCode: "00000",
///             stateOrProvince: "XX",
///             streetAddress1: "XXXX XXXX",
///             streetAddress2: "XXXX XXXX",
///         },
///     },
///     jobName: "TestJobName1",
///     location: "westus",
///     resourceGroupName: "YourResourceGroupName",
///     sku: {
///         name: azure_native.databox.SkuName.DataBox,
///     },
///     transferType: azure_native.databox.TransferType.ImportToAzure,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job = azure_native.databox.Job("job",
///     details={
///         "contact_details": {
///             "contact_name": "XXXX XXXX",
///             "email_list": ["xxxx@xxxx.xxx"],
///             "phone": "0000000000",
///             "phone_extension": "",
///         },
///         "data_import_details": [{
///             "account_details": {
///                 "data_account_type": "StorageAccount",
///                 "share_password": "<sharePassword>",
///                 "storage_account_id": "/subscriptions/YourSubscriptionId/resourceGroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName",
///             },
///         }],
///         "device_password": "<devicePassword>",
///         "job_details_type": "DataBox",
///         "shipping_address": {
///             "address_type": azure_native.databox.AddressType.COMMERCIAL,
///             "city": "XXXX XXXX",
///             "company_name": "XXXX XXXX",
///             "country": "XX",
///             "postal_code": "00000",
///             "state_or_province": "XX",
///             "street_address1": "XXXX XXXX",
///             "street_address2": "XXXX XXXX",
///         },
///     },
///     job_name="TestJobName1",
///     location="westus",
///     resource_group_name="YourResourceGroupName",
///     sku={
///         "name": azure_native.databox.SkuName.DATA_BOX,
///     },
///     transfer_type=azure_native.databox.TransferType.IMPORT_TO_AZURE)
///
/// ```
///
/// ```yaml
/// resources:
///   job:
///     type: azure-native:databox:Job
///     properties:
///       details:
///         contactDetails:
///           contactName: XXXX XXXX
///           emailList:
///             - xxxx@xxxx.xxx
///           phone: '0000000000'
///           phoneExtension: ""
///         dataImportDetails:
///           - accountDetails:
///               dataAccountType: StorageAccount
///               sharePassword: <sharePassword>
///               storageAccountId: /subscriptions/YourSubscriptionId/resourceGroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName
///         devicePassword: <devicePassword>
///         jobDetailsType: DataBox
///         shippingAddress:
///           addressType: Commercial
///           city: XXXX XXXX
///           companyName: XXXX XXXX
///           country: XX
///           postalCode: '00000'
///           stateOrProvince: XX
///           streetAddress1: XXXX XXXX
///           streetAddress2: XXXX XXXX
///       jobName: TestJobName1
///       location: westus
///       resourceGroupName: YourResourceGroupName
///       sku:
///         name: DataBox
///       transferType: ImportToAzure
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### JobsCreateDoubleEncryption
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var job = new AzureNative.DataBox.Job("job", new()
///     {
///         Details = new AzureNative.DataBox.Inputs.DataBoxJobDetailsArgs
///         {
///             ContactDetails = new AzureNative.DataBox.Inputs.ContactDetailsArgs
///             {
///                 ContactName = "XXXX XXXX",
///                 EmailList = new[]
///                 {
///                     "xxxx@xxxx.xxx",
///                 },
///                 Phone = "0000000000",
///                 PhoneExtension = "",
///             },
///             DataImportDetails = new[]
///             {
///                 new AzureNative.DataBox.Inputs.DataImportDetailsArgs
///                 {
///                     AccountDetails = new AzureNative.DataBox.Inputs.StorageAccountDetailsArgs
///                     {
///                         DataAccountType = "StorageAccount",
///                         StorageAccountId = "/subscriptions/YourSubscriptionId/resourcegroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName",
///                     },
///                 },
///             },
///             JobDetailsType = "DataBox",
///             Preferences = new AzureNative.DataBox.Inputs.PreferencesArgs
///             {
///                 EncryptionPreferences = new AzureNative.DataBox.Inputs.EncryptionPreferencesArgs
///                 {
///                     DoubleEncryption = AzureNative.DataBox.DoubleEncryption.Enabled,
///                 },
///             },
///             ShippingAddress = new AzureNative.DataBox.Inputs.ShippingAddressArgs
///             {
///                 AddressType = AzureNative.DataBox.AddressType.Commercial,
///                 City = "XXXX XXXX",
///                 CompanyName = "XXXX XXXX",
///                 Country = "XX",
///                 PostalCode = "00000",
///                 StateOrProvince = "XX",
///                 StreetAddress1 = "XXXX XXXX",
///                 StreetAddress2 = "XXXX XXXX",
///             },
///         },
///         JobName = "TestJobName1",
///         Location = "westus",
///         ResourceGroupName = "YourResourceGroupName",
///         Sku = new AzureNative.DataBox.Inputs.SkuArgs
///         {
///             Name = AzureNative.DataBox.SkuName.DataBox,
///         },
///         TransferType = AzureNative.DataBox.TransferType.ImportToAzure,
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
/// 	databox "github.com/pulumi/pulumi-azure-native-sdk/databox/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databox.NewJob(ctx, "job", &databox.JobArgs{
/// 			Details: &databox.DataBoxJobDetailsArgs{
/// 				ContactDetails: &databox.ContactDetailsArgs{
/// 					ContactName: pulumi.String("XXXX XXXX"),
/// 					EmailList: pulumi.StringArray{
/// 						pulumi.String("xxxx@xxxx.xxx"),
/// 					},
/// 					Phone:          pulumi.String("0000000000"),
/// 					PhoneExtension: pulumi.String(""),
/// 				},
/// 				DataImportDetails: databox.DataImportDetailsArray{
/// 					&databox.DataImportDetailsArgs{
/// 						AccountDetails: databox.StorageAccountDetails{
/// 							DataAccountType:  "StorageAccount",
/// 							StorageAccountId: "/subscriptions/YourSubscriptionId/resourcegroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName",
/// 						},
/// 					},
/// 				},
/// 				JobDetailsType: pulumi.String("DataBox"),
/// 				Preferences: &databox.PreferencesArgs{
/// 					EncryptionPreferences: &databox.EncryptionPreferencesArgs{
/// 						DoubleEncryption: pulumi.String(databox.DoubleEncryptionEnabled),
/// 					},
/// 				},
/// 				ShippingAddress: &databox.ShippingAddressArgs{
/// 					AddressType:     pulumi.String(databox.AddressTypeCommercial),
/// 					City:            pulumi.String("XXXX XXXX"),
/// 					CompanyName:     pulumi.String("XXXX XXXX"),
/// 					Country:         pulumi.String("XX"),
/// 					PostalCode:      pulumi.String("00000"),
/// 					StateOrProvince: pulumi.String("XX"),
/// 					StreetAddress1:  pulumi.String("XXXX XXXX"),
/// 					StreetAddress2:  pulumi.String("XXXX XXXX"),
/// 				},
/// 			},
/// 			JobName:           pulumi.String("TestJobName1"),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("YourResourceGroupName"),
/// 			Sku: &databox.SkuArgs{
/// 				Name: pulumi.String(databox.SkuNameDataBox),
/// 			},
/// 			TransferType: pulumi.String(databox.TransferTypeImportToAzure),
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
/// import com.pulumi.azurenative.databox.Job;
/// import com.pulumi.azurenative.databox.JobArgs;
/// import com.pulumi.azurenative.databox.inputs.SkuArgs;
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
///         var job = new Job("job", JobArgs.builder()
///             .details(DataBoxJobDetailsArgs.builder()
///                 .contactDetails(ContactDetailsArgs.builder()
///                     .contactName("XXXX XXXX")
///                     .emailList("xxxx@xxxx.xxx")
///                     .phone("0000000000")
///                     .phoneExtension("")
///                     .build())
///                 .dataImportDetails(DataImportDetailsArgs.builder()
///                     .accountDetails(StorageAccountDetailsArgs.builder()
///                         .dataAccountType("StorageAccount")
///                         .storageAccountId("/subscriptions/YourSubscriptionId/resourcegroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName")
///                         .build())
///                     .build())
///                 .jobDetailsType("DataBox")
///                 .preferences(PreferencesArgs.builder()
///                     .encryptionPreferences(EncryptionPreferencesArgs.builder()
///                         .doubleEncryption("Enabled")
///                         .build())
///                     .build())
///                 .shippingAddress(ShippingAddressArgs.builder()
///                     .addressType("Commercial")
///                     .city("XXXX XXXX")
///                     .companyName("XXXX XXXX")
///                     .country("XX")
///                     .postalCode("00000")
///                     .stateOrProvince("XX")
///                     .streetAddress1("XXXX XXXX")
///                     .streetAddress2("XXXX XXXX")
///                     .build())
///                 .build())
///             .jobName("TestJobName1")
///             .location("westus")
///             .resourceGroupName("YourResourceGroupName")
///             .sku(SkuArgs.builder()
///                 .name("DataBox")
///                 .build())
///             .transferType("ImportToAzure")
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
/// const job = new azure_native.databox.Job("job", {
///     details: {
///         contactDetails: {
///             contactName: "XXXX XXXX",
///             emailList: ["xxxx@xxxx.xxx"],
///             phone: "0000000000",
///             phoneExtension: "",
///         },
///         dataImportDetails: [{
///             accountDetails: {
///                 dataAccountType: "StorageAccount",
///                 storageAccountId: "/subscriptions/YourSubscriptionId/resourcegroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName",
///             },
///         }],
///         jobDetailsType: "DataBox",
///         preferences: {
///             encryptionPreferences: {
///                 doubleEncryption: azure_native.databox.DoubleEncryption.Enabled,
///             },
///         },
///         shippingAddress: {
///             addressType: azure_native.databox.AddressType.Commercial,
///             city: "XXXX XXXX",
///             companyName: "XXXX XXXX",
///             country: "XX",
///             postalCode: "00000",
///             stateOrProvince: "XX",
///             streetAddress1: "XXXX XXXX",
///             streetAddress2: "XXXX XXXX",
///         },
///     },
///     jobName: "TestJobName1",
///     location: "westus",
///     resourceGroupName: "YourResourceGroupName",
///     sku: {
///         name: azure_native.databox.SkuName.DataBox,
///     },
///     transferType: azure_native.databox.TransferType.ImportToAzure,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job = azure_native.databox.Job("job",
///     details={
///         "contact_details": {
///             "contact_name": "XXXX XXXX",
///             "email_list": ["xxxx@xxxx.xxx"],
///             "phone": "0000000000",
///             "phone_extension": "",
///         },
///         "data_import_details": [{
///             "account_details": {
///                 "data_account_type": "StorageAccount",
///                 "storage_account_id": "/subscriptions/YourSubscriptionId/resourcegroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName",
///             },
///         }],
///         "job_details_type": "DataBox",
///         "preferences": {
///             "encryption_preferences": {
///                 "double_encryption": azure_native.databox.DoubleEncryption.ENABLED,
///             },
///         },
///         "shipping_address": {
///             "address_type": azure_native.databox.AddressType.COMMERCIAL,
///             "city": "XXXX XXXX",
///             "company_name": "XXXX XXXX",
///             "country": "XX",
///             "postal_code": "00000",
///             "state_or_province": "XX",
///             "street_address1": "XXXX XXXX",
///             "street_address2": "XXXX XXXX",
///         },
///     },
///     job_name="TestJobName1",
///     location="westus",
///     resource_group_name="YourResourceGroupName",
///     sku={
///         "name": azure_native.databox.SkuName.DATA_BOX,
///     },
///     transfer_type=azure_native.databox.TransferType.IMPORT_TO_AZURE)
///
/// ```
///
/// ```yaml
/// resources:
///   job:
///     type: azure-native:databox:Job
///     properties:
///       details:
///         contactDetails:
///           contactName: XXXX XXXX
///           emailList:
///             - xxxx@xxxx.xxx
///           phone: '0000000000'
///           phoneExtension: ""
///         dataImportDetails:
///           - accountDetails:
///               dataAccountType: StorageAccount
///               storageAccountId: /subscriptions/YourSubscriptionId/resourcegroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName
///         jobDetailsType: DataBox
///         preferences:
///           encryptionPreferences:
///             doubleEncryption: Enabled
///         shippingAddress:
///           addressType: Commercial
///           city: XXXX XXXX
///           companyName: XXXX XXXX
///           country: XX
///           postalCode: '00000'
///           stateOrProvince: XX
///           streetAddress1: XXXX XXXX
///           streetAddress2: XXXX XXXX
///       jobName: TestJobName1
///       location: westus
///       resourceGroupName: YourResourceGroupName
///       sku:
///         name: DataBox
///       transferType: ImportToAzure
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### JobsCreateExport
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var job = new AzureNative.DataBox.Job("job", new()
///     {
///         Details = new AzureNative.DataBox.Inputs.DataBoxJobDetailsArgs
///         {
///             ContactDetails = new AzureNative.DataBox.Inputs.ContactDetailsArgs
///             {
///                 ContactName = "XXXX XXXX",
///                 EmailList = new[]
///                 {
///                     "xxxx@xxxx.xxx",
///                 },
///                 Phone = "0000000000",
///                 PhoneExtension = "",
///             },
///             DataExportDetails = new[]
///             {
///                 new AzureNative.DataBox.Inputs.DataExportDetailsArgs
///                 {
///                     AccountDetails = new AzureNative.DataBox.Inputs.StorageAccountDetailsArgs
///                     {
///                         DataAccountType = "StorageAccount",
///                         StorageAccountId = "/subscriptions/YourSubscriptionId/resourceGroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName",
///                     },
///                     TransferConfiguration = new AzureNative.DataBox.Inputs.TransferConfigurationArgs
///                     {
///                         TransferAllDetails = new AzureNative.DataBox.Inputs.TransferConfigurationTransferAllDetailsArgs
///                         {
///                             Include = new AzureNative.DataBox.Inputs.TransferAllDetailsArgs
///                             {
///                                 DataAccountType = AzureNative.DataBox.DataAccountType.StorageAccount,
///                                 TransferAllBlobs = true,
///                                 TransferAllFiles = true,
///                             },
///                         },
///                         TransferConfigurationType = AzureNative.DataBox.TransferConfigurationType.TransferAll,
///                     },
///                 },
///             },
///             JobDetailsType = "DataBox",
///             ShippingAddress = new AzureNative.DataBox.Inputs.ShippingAddressArgs
///             {
///                 AddressType = AzureNative.DataBox.AddressType.Commercial,
///                 City = "XXXX XXXX",
///                 CompanyName = "XXXX XXXX",
///                 Country = "XX",
///                 PostalCode = "00000",
///                 StateOrProvince = "XX",
///                 StreetAddress1 = "XXXX XXXX",
///                 StreetAddress2 = "XXXX XXXX",
///             },
///         },
///         JobName = "TestJobName1",
///         Location = "westus",
///         ResourceGroupName = "YourResourceGroupName",
///         Sku = new AzureNative.DataBox.Inputs.SkuArgs
///         {
///             Name = AzureNative.DataBox.SkuName.DataBox,
///         },
///         TransferType = AzureNative.DataBox.TransferType.ExportFromAzure,
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
/// 	databox "github.com/pulumi/pulumi-azure-native-sdk/databox/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databox.NewJob(ctx, "job", &databox.JobArgs{
/// 			Details: &databox.DataBoxJobDetailsArgs{
/// 				ContactDetails: &databox.ContactDetailsArgs{
/// 					ContactName: pulumi.String("XXXX XXXX"),
/// 					EmailList: pulumi.StringArray{
/// 						pulumi.String("xxxx@xxxx.xxx"),
/// 					},
/// 					Phone:          pulumi.String("0000000000"),
/// 					PhoneExtension: pulumi.String(""),
/// 				},
/// 				DataExportDetails: databox.DataExportDetailsArray{
/// 					&databox.DataExportDetailsArgs{
/// 						AccountDetails: databox.StorageAccountDetails{
/// 							DataAccountType:  "StorageAccount",
/// 							StorageAccountId: "/subscriptions/YourSubscriptionId/resourceGroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName",
/// 						},
/// 						TransferConfiguration: &databox.TransferConfigurationArgs{
/// 							TransferAllDetails: &databox.TransferConfigurationTransferAllDetailsArgs{
/// 								Include: &databox.TransferAllDetailsArgs{
/// 									DataAccountType:  pulumi.String(databox.DataAccountTypeStorageAccount),
/// 									TransferAllBlobs: pulumi.Bool(true),
/// 									TransferAllFiles: pulumi.Bool(true),
/// 								},
/// 							},
/// 							TransferConfigurationType: pulumi.String(databox.TransferConfigurationTypeTransferAll),
/// 						},
/// 					},
/// 				},
/// 				JobDetailsType: pulumi.String("DataBox"),
/// 				ShippingAddress: &databox.ShippingAddressArgs{
/// 					AddressType:     pulumi.String(databox.AddressTypeCommercial),
/// 					City:            pulumi.String("XXXX XXXX"),
/// 					CompanyName:     pulumi.String("XXXX XXXX"),
/// 					Country:         pulumi.String("XX"),
/// 					PostalCode:      pulumi.String("00000"),
/// 					StateOrProvince: pulumi.String("XX"),
/// 					StreetAddress1:  pulumi.String("XXXX XXXX"),
/// 					StreetAddress2:  pulumi.String("XXXX XXXX"),
/// 				},
/// 			},
/// 			JobName:           pulumi.String("TestJobName1"),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("YourResourceGroupName"),
/// 			Sku: &databox.SkuArgs{
/// 				Name: pulumi.String(databox.SkuNameDataBox),
/// 			},
/// 			TransferType: pulumi.String(databox.TransferTypeExportFromAzure),
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
/// import com.pulumi.azurenative.databox.Job;
/// import com.pulumi.azurenative.databox.JobArgs;
/// import com.pulumi.azurenative.databox.inputs.SkuArgs;
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
///         var job = new Job("job", JobArgs.builder()
///             .details(DataBoxJobDetailsArgs.builder()
///                 .contactDetails(ContactDetailsArgs.builder()
///                     .contactName("XXXX XXXX")
///                     .emailList("xxxx@xxxx.xxx")
///                     .phone("0000000000")
///                     .phoneExtension("")
///                     .build())
///                 .dataExportDetails(DataExportDetailsArgs.builder()
///                     .accountDetails(StorageAccountDetailsArgs.builder()
///                         .dataAccountType("StorageAccount")
///                         .storageAccountId("/subscriptions/YourSubscriptionId/resourceGroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName")
///                         .build())
///                     .transferConfiguration(TransferConfigurationArgs.builder()
///                         .transferAllDetails(TransferConfigurationTransferAllDetailsArgs.builder()
///                             .include(TransferAllDetailsArgs.builder()
///                                 .dataAccountType("StorageAccount")
///                                 .transferAllBlobs(true)
///                                 .transferAllFiles(true)
///                                 .build())
///                             .build())
///                         .transferConfigurationType("TransferAll")
///                         .build())
///                     .build())
///                 .jobDetailsType("DataBox")
///                 .shippingAddress(ShippingAddressArgs.builder()
///                     .addressType("Commercial")
///                     .city("XXXX XXXX")
///                     .companyName("XXXX XXXX")
///                     .country("XX")
///                     .postalCode("00000")
///                     .stateOrProvince("XX")
///                     .streetAddress1("XXXX XXXX")
///                     .streetAddress2("XXXX XXXX")
///                     .build())
///                 .build())
///             .jobName("TestJobName1")
///             .location("westus")
///             .resourceGroupName("YourResourceGroupName")
///             .sku(SkuArgs.builder()
///                 .name("DataBox")
///                 .build())
///             .transferType("ExportFromAzure")
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
/// const job = new azure_native.databox.Job("job", {
///     details: {
///         contactDetails: {
///             contactName: "XXXX XXXX",
///             emailList: ["xxxx@xxxx.xxx"],
///             phone: "0000000000",
///             phoneExtension: "",
///         },
///         dataExportDetails: [{
///             accountDetails: {
///                 dataAccountType: "StorageAccount",
///                 storageAccountId: "/subscriptions/YourSubscriptionId/resourceGroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName",
///             },
///             transferConfiguration: {
///                 transferAllDetails: {
///                     include: {
///                         dataAccountType: azure_native.databox.DataAccountType.StorageAccount,
///                         transferAllBlobs: true,
///                         transferAllFiles: true,
///                     },
///                 },
///                 transferConfigurationType: azure_native.databox.TransferConfigurationType.TransferAll,
///             },
///         }],
///         jobDetailsType: "DataBox",
///         shippingAddress: {
///             addressType: azure_native.databox.AddressType.Commercial,
///             city: "XXXX XXXX",
///             companyName: "XXXX XXXX",
///             country: "XX",
///             postalCode: "00000",
///             stateOrProvince: "XX",
///             streetAddress1: "XXXX XXXX",
///             streetAddress2: "XXXX XXXX",
///         },
///     },
///     jobName: "TestJobName1",
///     location: "westus",
///     resourceGroupName: "YourResourceGroupName",
///     sku: {
///         name: azure_native.databox.SkuName.DataBox,
///     },
///     transferType: azure_native.databox.TransferType.ExportFromAzure,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job = azure_native.databox.Job("job",
///     details={
///         "contact_details": {
///             "contact_name": "XXXX XXXX",
///             "email_list": ["xxxx@xxxx.xxx"],
///             "phone": "0000000000",
///             "phone_extension": "",
///         },
///         "data_export_details": [{
///             "account_details": {
///                 "data_account_type": "StorageAccount",
///                 "storage_account_id": "/subscriptions/YourSubscriptionId/resourceGroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName",
///             },
///             "transfer_configuration": {
///                 "transfer_all_details": {
///                     "include": {
///                         "data_account_type": azure_native.databox.DataAccountType.STORAGE_ACCOUNT,
///                         "transfer_all_blobs": True,
///                         "transfer_all_files": True,
///                     },
///                 },
///                 "transfer_configuration_type": azure_native.databox.TransferConfigurationType.TRANSFER_ALL,
///             },
///         }],
///         "job_details_type": "DataBox",
///         "shipping_address": {
///             "address_type": azure_native.databox.AddressType.COMMERCIAL,
///             "city": "XXXX XXXX",
///             "company_name": "XXXX XXXX",
///             "country": "XX",
///             "postal_code": "00000",
///             "state_or_province": "XX",
///             "street_address1": "XXXX XXXX",
///             "street_address2": "XXXX XXXX",
///         },
///     },
///     job_name="TestJobName1",
///     location="westus",
///     resource_group_name="YourResourceGroupName",
///     sku={
///         "name": azure_native.databox.SkuName.DATA_BOX,
///     },
///     transfer_type=azure_native.databox.TransferType.EXPORT_FROM_AZURE)
///
/// ```
///
/// ```yaml
/// resources:
///   job:
///     type: azure-native:databox:Job
///     properties:
///       details:
///         contactDetails:
///           contactName: XXXX XXXX
///           emailList:
///             - xxxx@xxxx.xxx
///           phone: '0000000000'
///           phoneExtension: ""
///         dataExportDetails:
///           - accountDetails:
///               dataAccountType: StorageAccount
///               storageAccountId: /subscriptions/YourSubscriptionId/resourceGroups/YourResourceGroupName/providers/Microsoft.Storage/storageAccounts/YourStorageAccountName
///             transferConfiguration:
///               transferAllDetails:
///                 include:
///                   dataAccountType: StorageAccount
///                   transferAllBlobs: true
///                   transferAllFiles: true
///               transferConfigurationType: TransferAll
///         jobDetailsType: DataBox
///         shippingAddress:
///           addressType: Commercial
///           city: XXXX XXXX
///           companyName: XXXX XXXX
///           country: XX
///           postalCode: '00000'
///           stateOrProvince: XX
///           streetAddress1: XXXX XXXX
///           streetAddress2: XXXX XXXX
///       jobName: TestJobName1
///       location: westus
///       resourceGroupName: YourResourceGroupName
///       sku:
///         name: DataBox
///       transferType: ExportFromAzure
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
/// $ pulumi import azure-native:databox:Job TestJobName1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataBox/jobs/{jobName}
/// ```
class Job extends pulumi.CustomResource {
  /// Flag to indicate if all devices associated with the job are lost.
  late final pulumi.Output<bool> allDevicesLost;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Reason for cancellation.
  late final pulumi.Output<String> cancellationReason;
  /// Name of the stage where delay might be present.
  late final pulumi.Output<String> delayedStage;
  /// Delivery Info of Job.
  late final pulumi.Output<JobDeliveryInfoResponse?> deliveryInfo;
  /// Delivery type of Job.
  late final pulumi.Output<String?> deliveryType;
  /// Details of a job run. This field will only be sent for expand details filter.
  late final pulumi.Output<DataBoxCustomerDiskJobDetailsResponse?> details;
  /// Top level error for the job.
  late final pulumi.Output<CloudErrorResponse> error;
  /// Msi identity of the resource
  late final pulumi.Output<ResourceIdentityResponse?> identity;
  /// Describes whether the job is cancellable or not.
  late final pulumi.Output<bool> isCancellable;
  /// Flag to indicate cancellation of scheduled job.
  late final pulumi.Output<bool> isCancellableWithoutFee;
  /// Describes whether the job is deletable or not.
  late final pulumi.Output<bool> isDeletable;
  /// Is Prepare To Ship Enabled on this job
  late final pulumi.Output<bool> isPrepareToShipEnabled;
  /// Describes whether the shipping address is editable or not.
  late final pulumi.Output<bool> isShippingAddressEditable;
  /// The location of the resource. This will be one of the supported and registered Azure Regions (e.g. West US, East US, Southeast Asia, etc.). The region of a resource cannot be changed once it is created, but if an identical region is specified on update the request will succeed.
  late final pulumi.Output<String> location;
  /// Name of the object.
  late final pulumi.Output<String> name;
  /// The Editable status for Reverse Shipping Address and Contact Info
  late final pulumi.Output<String> reverseShippingDetailsUpdate;
  /// The Editable status for Reverse Transport preferences
  late final pulumi.Output<String> reverseTransportPreferenceUpdate;
  /// The sku type.
  late final pulumi.Output<SkuResponse> sku;
  /// Time at which the job was started in UTC ISO 8601 format.
  late final pulumi.Output<String> startTime;
  /// Name of the stage which is in progress.
  late final pulumi.Output<String> status;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups).
  late final pulumi.Output<Map<String, String>?> tags;
  /// Type of the data transfer.
  late final pulumi.Output<String> transferType;
  /// Type of the object.
  late final pulumi.Output<String> type;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_databox_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(
    String name, {
    JobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databox:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allDevicesLost = registerOutput<bool>('allDevicesLost');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cancellationReason = registerOutput<String>('cancellationReason');
    delayedStage = registerOutput<String>('delayedStage');
    deliveryInfo = registerOutput<JobDeliveryInfoResponse?>('deliveryInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobDeliveryInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryType = registerOutput<String?>('deliveryType');
    details = registerOutput<DataBoxCustomerDiskJobDetailsResponse?>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataBoxCustomerDiskJobDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    error = registerOutput<CloudErrorResponse>('error', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<ResourceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isCancellable = registerOutput<bool>('isCancellable');
    isCancellableWithoutFee = registerOutput<bool>('isCancellableWithoutFee');
    isDeletable = registerOutput<bool>('isDeletable');
    isPrepareToShipEnabled = registerOutput<bool>('isPrepareToShipEnabled');
    isShippingAddressEditable = registerOutput<bool>('isShippingAddressEditable');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    reverseShippingDetailsUpdate = registerOutput<String>('reverseShippingDetailsUpdate');
    reverseTransportPreferenceUpdate = registerOutput<String>('reverseTransportPreferenceUpdate');
    sku = registerOutput<SkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startTime = registerOutput<String>('startTime');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    transferType = registerOutput<String>('transferType');
    type = registerOutput<String>('type');
  }
}
