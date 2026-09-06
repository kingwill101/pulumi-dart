import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_details_response.dart';
import 'job_args.dart';
import 'job_details_response.dart';
import 'system_data_response.dart';

/// Contains the job information.
///
/// Uses Azure REST API version 2021-01-01. In version 2.x of the Azure Native provider, it used API version 2021-01-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create export job
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var job = new AzureNative.ImportExport.Job("job", new()
///     {
///         JobName = "myExportJob",
///         Location = "West US",
///         Properties = new AzureNative.ImportExport.Inputs.JobDetailsArgs
///         {
///             BackupDriveManifest = true,
///             DiagnosticsPath = "waimportexport",
///             Export = new AzureNative.ImportExport.Inputs.ExportArgs
///             {
///                 BlobPathPrefix = new[]
///                 {
///                     "/",
///                 },
///             },
///             JobType = "Export",
///             LogLevel = "Verbose",
///             ReturnAddress = new AzureNative.ImportExport.Inputs.ReturnAddressArgs
///             {
///                 City = "Redmond",
///                 CountryOrRegion = "USA",
///                 Email = "Test@contoso.com",
///                 Phone = "4250000000",
///                 PostalCode = "98007",
///                 RecipientName = "Test",
///                 StateOrProvince = "wa",
///                 StreetAddress1 = "Street1",
///                 StreetAddress2 = "street2",
///             },
///             ReturnShipping = new AzureNative.ImportExport.Inputs.ReturnShippingArgs
///             {
///                 CarrierAccountNumber = "989ffff",
///                 CarrierName = "FedEx",
///             },
///             StorageAccountId = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.ClassicStorage/storageAccounts/test",
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	importexport "github.com/pulumi/pulumi-azure-native-sdk/importexport/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := importexport.NewJob(ctx, "job", &importexport.JobArgs{
/// 			JobName:  pulumi.String("myExportJob"),
/// 			Location: pulumi.String("West US"),
/// 			Properties: &importexport.JobDetailsArgs{
/// 				BackupDriveManifest: pulumi.Bool(true),
/// 				DiagnosticsPath:     pulumi.String("waimportexport"),
/// 				Export: &importexport.ExportArgs{
/// 					BlobPathPrefix: pulumi.StringArray{
/// 						pulumi.String("/"),
/// 					},
/// 				},
/// 				JobType:  pulumi.String("Export"),
/// 				LogLevel: pulumi.String("Verbose"),
/// 				ReturnAddress: &importexport.ReturnAddressArgs{
/// 					City:            pulumi.String("Redmond"),
/// 					CountryOrRegion: pulumi.String("USA"),
/// 					Email:           pulumi.String("Test@contoso.com"),
/// 					Phone:           pulumi.String("4250000000"),
/// 					PostalCode:      pulumi.String("98007"),
/// 					RecipientName:   pulumi.String("Test"),
/// 					StateOrProvince: pulumi.String("wa"),
/// 					StreetAddress1:  pulumi.String("Street1"),
/// 					StreetAddress2:  pulumi.String("street2"),
/// 				},
/// 				ReturnShipping: &importexport.ReturnShippingArgs{
/// 					CarrierAccountNumber: pulumi.String("989ffff"),
/// 					CarrierName:          pulumi.String("FedEx"),
/// 				},
/// 				StorageAccountId: pulumi.String("/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.ClassicStorage/storageAccounts/test"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_importexport_job" "job" {
///   job_name = "myExportJob"
///   location = "West US"
///   properties = {
///     backup_drive_manifest = true
///     diagnostics_path      = "waimportexport"
///     export = {
///       blob_path_prefix = ["/"]
///     }
///     job_type  = "Export"
///     log_level = "Verbose"
///     return_address = {
///       city              = "Redmond"
///       country_or_region = "USA"
///       email             = "Test@contoso.com"
///       phone             = "4250000000"
///       postal_code       = "98007"
///       recipient_name    = "Test"
///       state_or_province = "wa"
///       street_address1   = "Street1"
///       street_address2   = "street2"
///     }
///     return_shipping = {
///       carrier_account_number = "989ffff"
///       carrier_name           = "FedEx"
///     }
///     storage_account_id = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.ClassicStorage/storageAccounts/test"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.importexport.Job;
/// import com.pulumi.azurenative.importexport.JobArgs;
/// import com.pulumi.azurenative.importexport.inputs.JobDetailsArgs;
/// import com.pulumi.azurenative.importexport.inputs.ExportArgs;
/// import com.pulumi.azurenative.importexport.inputs.ReturnAddressArgs;
/// import com.pulumi.azurenative.importexport.inputs.ReturnShippingArgs;
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
///         var job = new Job("job", JobArgs.builder()
///             .jobName("myExportJob")
///             .location("West US")
///             .properties(JobDetailsArgs.builder()
///                 .backupDriveManifest(true)
///                 .diagnosticsPath("waimportexport")
///                 .export(ExportArgs.builder()
///                     .blobPathPrefix("/")
///                     .build())
///                 .jobType("Export")
///                 .logLevel("Verbose")
///                 .returnAddress(ReturnAddressArgs.builder()
///                     .city("Redmond")
///                     .countryOrRegion("USA")
///                     .email("Test@contoso.com")
///                     .phone("4250000000")
///                     .postalCode("98007")
///                     .recipientName("Test")
///                     .stateOrProvince("wa")
///                     .streetAddress1("Street1")
///                     .streetAddress2("street2")
///                     .build())
///                 .returnShipping(ReturnShippingArgs.builder()
///                     .carrierAccountNumber("989ffff")
///                     .carrierName("FedEx")
///                     .build())
///                 .storageAccountId("/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.ClassicStorage/storageAccounts/test")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const job = new azure_native.importexport.Job("job", {
///     jobName: "myExportJob",
///     location: "West US",
///     properties: {
///         backupDriveManifest: true,
///         diagnosticsPath: "waimportexport",
///         "export": {
///             blobPathPrefix: ["/"],
///         },
///         jobType: "Export",
///         logLevel: "Verbose",
///         returnAddress: {
///             city: "Redmond",
///             countryOrRegion: "USA",
///             email: "Test@contoso.com",
///             phone: "4250000000",
///             postalCode: "98007",
///             recipientName: "Test",
///             stateOrProvince: "wa",
///             streetAddress1: "Street1",
///             streetAddress2: "street2",
///         },
///         returnShipping: {
///             carrierAccountNumber: "989ffff",
///             carrierName: "FedEx",
///         },
///         storageAccountId: "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.ClassicStorage/storageAccounts/test",
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job = azure_native.importexport.Job("job",
///     job_name="myExportJob",
///     location="West US",
///     properties={
///         "backup_drive_manifest": True,
///         "diagnostics_path": "waimportexport",
///         "export": {
///             "blob_path_prefix": ["/"],
///         },
///         "job_type": "Export",
///         "log_level": "Verbose",
///         "return_address": {
///             "city": "Redmond",
///             "country_or_region": "USA",
///             "email": "Test@contoso.com",
///             "phone": "4250000000",
///             "postal_code": "98007",
///             "recipient_name": "Test",
///             "state_or_province": "wa",
///             "street_address1": "Street1",
///             "street_address2": "street2",
///         },
///         "return_shipping": {
///             "carrier_account_number": "989ffff",
///             "carrier_name": "FedEx",
///         },
///         "storage_account_id": "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.ClassicStorage/storageAccounts/test",
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   job:
///     type: azure-native:importexport:Job
///     properties:
///       jobName: myExportJob
///       location: West US
///       properties:
///         backupDriveManifest: true
///         diagnosticsPath: waimportexport
///         export:
///           blobPathPrefix:
///             - /
///         jobType: Export
///         logLevel: Verbose
///         returnAddress:
///           city: Redmond
///           countryOrRegion: USA
///           email: Test@contoso.com
///           phone: '4250000000'
///           postalCode: '98007'
///           recipientName: Test
///           stateOrProvince: wa
///           streetAddress1: Street1
///           streetAddress2: street2
///         returnShipping:
///           carrierAccountNumber: 989ffff
///           carrierName: FedEx
///         storageAccountId: /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.ClassicStorage/storageAccounts/test
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create import job
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var job = new AzureNative.ImportExport.Job("job", new()
///     {
///         JobName = "myJob",
///         Location = "West US",
///         Properties = new AzureNative.ImportExport.Inputs.JobDetailsArgs
///         {
///             BackupDriveManifest = true,
///             DiagnosticsPath = "waimportexport",
///             DriveList = new[]
///             {
///                 new AzureNative.ImportExport.Inputs.DriveStatusArgs
///                 {
///                     BitLockerKey = "238810-662376-448998-450120-652806-203390-606320-483076",
///                     DriveHeaderHash = "0:1048576:FB6B6ED500D49DA6E0D723C98D42C657F2881CC13357C28DCECA6A524F1292501571A321238540E621AB5BD9C9A32637615919A75593E6CB5C1515DAE341CABF;135266304:143360:C957A189AFC38C4E80731252301EB91427CE55E61448FA3C73C6FDDE70ABBC197947EC8D0249A2C639BB10B95957D5820A4BE8DFBBF76FFFA688AE5CE0D42EC3",
///                     DriveId = "9CA995BB",
///                     ManifestFile = "\\8a0c23f7-14b7-470a-9633-fcd46590a1bc.manifest",
///                     ManifestHash = "4228EC5D8E048CB9B515338C789314BE8D0B2FDBC7C7A0308E1C826242CDE74E",
///                 },
///             },
///             JobType = "Import",
///             LogLevel = "Verbose",
///             ReturnAddress = new AzureNative.ImportExport.Inputs.ReturnAddressArgs
///             {
///                 City = "Redmond",
///                 CountryOrRegion = "USA",
///                 Email = "Test@contoso.com",
///                 Phone = "4250000000",
///                 PostalCode = "98007",
///                 RecipientName = "Test",
///                 StateOrProvince = "wa",
///                 StreetAddress1 = "Street1",
///                 StreetAddress2 = "street2",
///             },
///             ReturnShipping = new AzureNative.ImportExport.Inputs.ReturnShippingArgs
///             {
///                 CarrierAccountNumber = "989ffff",
///                 CarrierName = "FedEx",
///             },
///             StorageAccountId = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.ClassicStorage/storageAccounts/test",
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	importexport "github.com/pulumi/pulumi-azure-native-sdk/importexport/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := importexport.NewJob(ctx, "job", &importexport.JobArgs{
/// 			JobName:  pulumi.String("myJob"),
/// 			Location: pulumi.String("West US"),
/// 			Properties: &importexport.JobDetailsArgs{
/// 				BackupDriveManifest: pulumi.Bool(true),
/// 				DiagnosticsPath:     pulumi.String("waimportexport"),
/// 				DriveList: importexport.DriveStatusArray{
/// 					&importexport.DriveStatusArgs{
/// 						BitLockerKey:    pulumi.String("238810-662376-448998-450120-652806-203390-606320-483076"),
/// 						DriveHeaderHash: pulumi.String("0:1048576:FB6B6ED500D49DA6E0D723C98D42C657F2881CC13357C28DCECA6A524F1292501571A321238540E621AB5BD9C9A32637615919A75593E6CB5C1515DAE341CABF;135266304:143360:C957A189AFC38C4E80731252301EB91427CE55E61448FA3C73C6FDDE70ABBC197947EC8D0249A2C639BB10B95957D5820A4BE8DFBBF76FFFA688AE5CE0D42EC3"),
/// 						DriveId:         pulumi.String("9CA995BB"),
/// 						ManifestFile:    pulumi.String("\\8a0c23f7-14b7-470a-9633-fcd46590a1bc.manifest"),
/// 						ManifestHash:    pulumi.String("4228EC5D8E048CB9B515338C789314BE8D0B2FDBC7C7A0308E1C826242CDE74E"),
/// 					},
/// 				},
/// 				JobType:  pulumi.String("Import"),
/// 				LogLevel: pulumi.String("Verbose"),
/// 				ReturnAddress: &importexport.ReturnAddressArgs{
/// 					City:            pulumi.String("Redmond"),
/// 					CountryOrRegion: pulumi.String("USA"),
/// 					Email:           pulumi.String("Test@contoso.com"),
/// 					Phone:           pulumi.String("4250000000"),
/// 					PostalCode:      pulumi.String("98007"),
/// 					RecipientName:   pulumi.String("Test"),
/// 					StateOrProvince: pulumi.String("wa"),
/// 					StreetAddress1:  pulumi.String("Street1"),
/// 					StreetAddress2:  pulumi.String("street2"),
/// 				},
/// 				ReturnShipping: &importexport.ReturnShippingArgs{
/// 					CarrierAccountNumber: pulumi.String("989ffff"),
/// 					CarrierName:          pulumi.String("FedEx"),
/// 				},
/// 				StorageAccountId: pulumi.String("/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.ClassicStorage/storageAccounts/test"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_importexport_job" "job" {
///   job_name = "myJob"
///   location = "West US"
///   properties = {
///     backup_drive_manifest = true
///     diagnostics_path      = "waimportexport"
///     drive_list = [{
///       "bitLockerKey"    = "238810-662376-448998-450120-652806-203390-606320-483076"
///       "driveHeaderHash" = "0:1048576:FB6B6ED500D49DA6E0D723C98D42C657F2881CC13357C28DCECA6A524F1292501571A321238540E621AB5BD9C9A32637615919A75593E6CB5C1515DAE341CABF;135266304:143360:C957A189AFC38C4E80731252301EB91427CE55E61448FA3C73C6FDDE70ABBC197947EC8D0249A2C639BB10B95957D5820A4BE8DFBBF76FFFA688AE5CE0D42EC3"
///       "driveId"         = "9CA995BB"
///       "manifestFile"    = "\\8a0c23f7-14b7-470a-9633-fcd46590a1bc.manifest"
///       "manifestHash"    = "4228EC5D8E048CB9B515338C789314BE8D0B2FDBC7C7A0308E1C826242CDE74E"
///     }]
///     job_type  = "Import"
///     log_level = "Verbose"
///     return_address = {
///       city              = "Redmond"
///       country_or_region = "USA"
///       email             = "Test@contoso.com"
///       phone             = "4250000000"
///       postal_code       = "98007"
///       recipient_name    = "Test"
///       state_or_province = "wa"
///       street_address1   = "Street1"
///       street_address2   = "street2"
///     }
///     return_shipping = {
///       carrier_account_number = "989ffff"
///       carrier_name           = "FedEx"
///     }
///     storage_account_id = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.ClassicStorage/storageAccounts/test"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.importexport.Job;
/// import com.pulumi.azurenative.importexport.JobArgs;
/// import com.pulumi.azurenative.importexport.inputs.JobDetailsArgs;
/// import com.pulumi.azurenative.importexport.inputs.ReturnAddressArgs;
/// import com.pulumi.azurenative.importexport.inputs.ReturnShippingArgs;
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
///         var job = new Job("job", JobArgs.builder()
///             .jobName("myJob")
///             .location("West US")
///             .properties(JobDetailsArgs.builder()
///                 .backupDriveManifest(true)
///                 .diagnosticsPath("waimportexport")
///                 .driveList(DriveStatusArgs.builder()
///                     .bitLockerKey("238810-662376-448998-450120-652806-203390-606320-483076")
///                     .driveHeaderHash("0:1048576:FB6B6ED500D49DA6E0D723C98D42C657F2881CC13357C28DCECA6A524F1292501571A321238540E621AB5BD9C9A32637615919A75593E6CB5C1515DAE341CABF;135266304:143360:C957A189AFC38C4E80731252301EB91427CE55E61448FA3C73C6FDDE70ABBC197947EC8D0249A2C639BB10B95957D5820A4BE8DFBBF76FFFA688AE5CE0D42EC3")
///                     .driveId("9CA995BB")
///                     .manifestFile("\\8a0c23f7-14b7-470a-9633-fcd46590a1bc.manifest")
///                     .manifestHash("4228EC5D8E048CB9B515338C789314BE8D0B2FDBC7C7A0308E1C826242CDE74E")
///                     .build())
///                 .jobType("Import")
///                 .logLevel("Verbose")
///                 .returnAddress(ReturnAddressArgs.builder()
///                     .city("Redmond")
///                     .countryOrRegion("USA")
///                     .email("Test@contoso.com")
///                     .phone("4250000000")
///                     .postalCode("98007")
///                     .recipientName("Test")
///                     .stateOrProvince("wa")
///                     .streetAddress1("Street1")
///                     .streetAddress2("street2")
///                     .build())
///                 .returnShipping(ReturnShippingArgs.builder()
///                     .carrierAccountNumber("989ffff")
///                     .carrierName("FedEx")
///                     .build())
///                 .storageAccountId("/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.ClassicStorage/storageAccounts/test")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const job = new azure_native.importexport.Job("job", {
///     jobName: "myJob",
///     location: "West US",
///     properties: {
///         backupDriveManifest: true,
///         diagnosticsPath: "waimportexport",
///         driveList: [{
///             bitLockerKey: "238810-662376-448998-450120-652806-203390-606320-483076",
///             driveHeaderHash: "0:1048576:FB6B6ED500D49DA6E0D723C98D42C657F2881CC13357C28DCECA6A524F1292501571A321238540E621AB5BD9C9A32637615919A75593E6CB5C1515DAE341CABF;135266304:143360:C957A189AFC38C4E80731252301EB91427CE55E61448FA3C73C6FDDE70ABBC197947EC8D0249A2C639BB10B95957D5820A4BE8DFBBF76FFFA688AE5CE0D42EC3",
///             driveId: "9CA995BB",
///             manifestFile: "\\8a0c23f7-14b7-470a-9633-fcd46590a1bc.manifest",
///             manifestHash: "4228EC5D8E048CB9B515338C789314BE8D0B2FDBC7C7A0308E1C826242CDE74E",
///         }],
///         jobType: "Import",
///         logLevel: "Verbose",
///         returnAddress: {
///             city: "Redmond",
///             countryOrRegion: "USA",
///             email: "Test@contoso.com",
///             phone: "4250000000",
///             postalCode: "98007",
///             recipientName: "Test",
///             stateOrProvince: "wa",
///             streetAddress1: "Street1",
///             streetAddress2: "street2",
///         },
///         returnShipping: {
///             carrierAccountNumber: "989ffff",
///             carrierName: "FedEx",
///         },
///         storageAccountId: "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.ClassicStorage/storageAccounts/test",
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job = azure_native.importexport.Job("job",
///     job_name="myJob",
///     location="West US",
///     properties={
///         "backup_drive_manifest": True,
///         "diagnostics_path": "waimportexport",
///         "drive_list": [{
///             "bit_locker_key": "238810-662376-448998-450120-652806-203390-606320-483076",
///             "drive_header_hash": "0:1048576:FB6B6ED500D49DA6E0D723C98D42C657F2881CC13357C28DCECA6A524F1292501571A321238540E621AB5BD9C9A32637615919A75593E6CB5C1515DAE341CABF;135266304:143360:C957A189AFC38C4E80731252301EB91427CE55E61448FA3C73C6FDDE70ABBC197947EC8D0249A2C639BB10B95957D5820A4BE8DFBBF76FFFA688AE5CE0D42EC3",
///             "drive_id": "9CA995BB",
///             "manifest_file": "\\8a0c23f7-14b7-470a-9633-fcd46590a1bc.manifest",
///             "manifest_hash": "4228EC5D8E048CB9B515338C789314BE8D0B2FDBC7C7A0308E1C826242CDE74E",
///         }],
///         "job_type": "Import",
///         "log_level": "Verbose",
///         "return_address": {
///             "city": "Redmond",
///             "country_or_region": "USA",
///             "email": "Test@contoso.com",
///             "phone": "4250000000",
///             "postal_code": "98007",
///             "recipient_name": "Test",
///             "state_or_province": "wa",
///             "street_address1": "Street1",
///             "street_address2": "street2",
///         },
///         "return_shipping": {
///             "carrier_account_number": "989ffff",
///             "carrier_name": "FedEx",
///         },
///         "storage_account_id": "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.ClassicStorage/storageAccounts/test",
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   job:
///     type: azure-native:importexport:Job
///     properties:
///       jobName: myJob
///       location: West US
///       properties:
///         backupDriveManifest: true
///         diagnosticsPath: waimportexport
///         driveList:
///           - bitLockerKey: 238810-662376-448998-450120-652806-203390-606320-483076
///             driveHeaderHash: 0:1048576:FB6B6ED500D49DA6E0D723C98D42C657F2881CC13357C28DCECA6A524F1292501571A321238540E621AB5BD9C9A32637615919A75593E6CB5C1515DAE341CABF;135266304:143360:C957A189AFC38C4E80731252301EB91427CE55E61448FA3C73C6FDDE70ABBC197947EC8D0249A2C639BB10B95957D5820A4BE8DFBBF76FFFA688AE5CE0D42EC3
///             driveId: 9CA995BB
///             manifestFile: \8a0c23f7-14b7-470a-9633-fcd46590a1bc.manifest
///             manifestHash: 4228EC5D8E048CB9B515338C789314BE8D0B2FDBC7C7A0308E1C826242CDE74E
///         jobType: Import
///         logLevel: Verbose
///         returnAddress:
///           city: Redmond
///           countryOrRegion: USA
///           email: Test@contoso.com
///           phone: '4250000000'
///           postalCode: '98007'
///           recipientName: Test
///           stateOrProvince: wa
///           streetAddress1: Street1
///           streetAddress2: street2
///         returnShipping:
///           carrierAccountNumber: 989ffff
///           carrierName: FedEx
///         storageAccountId: /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.ClassicStorage/storageAccounts/test
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:importexport:Job myJob /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ImportExport/jobs/{jobName}
/// ```
class Job extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Specifies the job identity details
  late final pulumi.Output<IdentityDetailsResponse?> identity;
  /// Specifies the Azure location where the job is created.
  late final pulumi.Output<String?> location;
  /// Specifies the name of the job.
  late final pulumi.Output<String> name;
  /// Specifies the job properties
  late final pulumi.Output<JobDetailsResponse> properties;
  /// SystemData of ImportExport Jobs.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Specifies the tags that are assigned to the job.
  late final pulumi.Output<dynamic> tags;
  /// Specifies the type of the job resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_importexport_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(
    String name, {
    JobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:importexport:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<IdentityDetailsResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<JobDetailsResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<dynamic>('tags');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Job] resource.
  Job.reference(String urn)
    : super(
        'azure-native:importexport:Job',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<IdentityDetailsResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<JobDetailsResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<dynamic>('tags');
    type = registerOutput<String>('type');
  }
}
