import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'sql_managed_instance_args.dart';
import 'sql_managed_instance_properties_response.dart';
import 'sql_managed_instance_sku_response.dart';
import 'system_data_response.dart';

/// A SqlManagedInstance.
///
/// Uses Azure REST API version 2025-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-15-preview.
///
/// Other available API versions: 2023-01-15-preview, 2024-01-01, 2024-05-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a SQL Managed Instance
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlManagedInstance = new AzureNative.AzureArcData.SqlManagedInstance("sqlManagedInstance", new()
///     {
///         ExtendedLocation = new AzureNative.AzureArcData.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation",
///             Type = AzureNative.AzureArcData.ExtendedLocationTypes.CustomLocation,
///         },
///         Location = "northeurope",
///         Properties = new AzureNative.AzureArcData.Inputs.SqlManagedInstancePropertiesArgs
///         {
///             ActiveDirectoryInformation = new AzureNative.AzureArcData.Inputs.ActiveDirectoryInformationArgs
///             {
///                 KeytabInformation = new AzureNative.AzureArcData.Inputs.KeytabInformationArgs
///                 {
///                     Keytab = "********",
///                 },
///             },
///             Admin = "Admin user",
///             BasicLoginInformation = new AzureNative.AzureArcData.Inputs.BasicLoginInformationArgs
///             {
///                 Password = "********",
///                 Username = "username",
///             },
///             ClusterId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s",
///             EndTime = "Instance end time",
///             ExtensionId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s/providers/Microsoft.KubernetesConfiguration/extensions/extension",
///             K8sRaw = new AzureNative.AzureArcData.Inputs.SqlManagedInstanceK8sRawArgs
///             {
///                 Spec = new AzureNative.AzureArcData.Inputs.SqlManagedInstanceK8sSpecArgs
///                 {
///                     Replicas = 1,
///                     Scheduling = new AzureNative.AzureArcData.Inputs.K8sSchedulingArgs
///                     {
///                         Default = new AzureNative.AzureArcData.Inputs.K8sSchedulingOptionsArgs
///                         {
///                             Resources = new AzureNative.AzureArcData.Inputs.K8sResourceRequirementsArgs
///                             {
///                                 Limits =
///                                 {
///                                     { "additionalProperty", "additionalValue" },
///                                     { "cpu", "1" },
///                                     { "memory", "8Gi" },
///                                 },
///                                 Requests =
///                                 {
///                                     { "additionalProperty", "additionalValue" },
///                                     { "cpu", "1" },
///                                     { "memory", "8Gi" },
///                                 },
///                             },
///                         },
///                     },
///                     Security = new AzureNative.AzureArcData.Inputs.K8sSecurityArgs
///                     {
///                         ActiveDirectory = new AzureNative.AzureArcData.Inputs.K8sActiveDirectoryArgs
///                         {
///                             AccountName = "Account name",
///                             Connector = new AzureNative.AzureArcData.Inputs.K8sActiveDirectoryConnectorArgs
///                             {
///                                 Name = "Name of connector",
///                                 Namespace = "Namespace of connector",
///                             },
///                             EncryptionTypes = new[]
///                             {
///                                 "Encryption type item1, Encryption type item2,...",
///                             },
///                             KeytabSecret = "Key tab secret of account",
///                         },
///                         AdminLoginSecret = "test-sql-login-secret",
///                         ServiceCertificateSecret = "Service Certificate Secret",
///                         TransparentDataEncryption = new AzureNative.AzureArcData.Inputs.K8stransparentDataEncryptionArgs
///                         {
///                             Mode = "SystemManaged",
///                         },
///                     },
///                     Settings = new AzureNative.AzureArcData.Inputs.K8sSettingsArgs
///                     {
///                         Network = new AzureNative.AzureArcData.Inputs.K8sNetworkSettingsArgs
///                         {
///                             Forceencryption = 0,
///                             Tlsciphers = "ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-AES128-SHA256:ECDHE-ECDSA-AES256-SHA384:ECDHE-RSA-AES128-SHA256:ECDHE-RSA-AES256-SHA384",
///                             Tlsprotocols = "1.2",
///                         },
///                     },
///                 },
///             },
///             LicenseType = AzureNative.AzureArcData.ArcSqlManagedInstanceLicenseType.LicenseIncluded,
///             StartTime = "Instance start time",
///         },
///         ResourceGroupName = "testrg",
///         Sku = new AzureNative.AzureArcData.Inputs.SqlManagedInstanceSkuArgs
///         {
///             Dev = true,
///             Name = AzureNative.AzureArcData.SqlManagedInstanceSkuName.VCore,
///             Tier = AzureNative.AzureArcData.SqlManagedInstanceSkuTier.GeneralPurpose,
///         },
///         SqlManagedInstanceName = "testsqlManagedInstance",
///         Tags =
///         {
///             { "mytag", "myval" },
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
/// 	azurearcdata "github.com/pulumi/pulumi-azure-native-sdk/azurearcdata/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurearcdata.NewSqlManagedInstance(ctx, "sqlManagedInstance", &azurearcdata.SqlManagedInstanceArgs{
/// 			ExtendedLocation: &azurearcdata.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation"),
/// 				Type: pulumi.String(azurearcdata.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			Location: pulumi.String("northeurope"),
/// 			Properties: &azurearcdata.SqlManagedInstancePropertiesArgs{
/// 				ActiveDirectoryInformation: &azurearcdata.ActiveDirectoryInformationArgs{
/// 					KeytabInformation: &azurearcdata.KeytabInformationArgs{
/// 						Keytab: pulumi.String("********"),
/// 					},
/// 				},
/// 				Admin: pulumi.String("Admin user"),
/// 				BasicLoginInformation: &azurearcdata.BasicLoginInformationArgs{
/// 					Password: pulumi.String("********"),
/// 					Username: pulumi.String("username"),
/// 				},
/// 				ClusterId:   pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s"),
/// 				EndTime:     pulumi.String("Instance end time"),
/// 				ExtensionId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s/providers/Microsoft.KubernetesConfiguration/extensions/extension"),
/// 				K8sRaw: &azurearcdata.SqlManagedInstanceK8sRawArgs{
/// 					Spec: &azurearcdata.SqlManagedInstanceK8sSpecArgs{
/// 						Replicas: pulumi.Int(1),
/// 						Scheduling: &azurearcdata.K8sSchedulingArgs{
/// 							Default: &azurearcdata.K8sSchedulingOptionsArgs{
/// 								Resources: &azurearcdata.K8sResourceRequirementsArgs{
/// 									Limits: pulumi.StringMap{
/// 										"additionalProperty": pulumi.String("additionalValue"),
/// 										"cpu":                pulumi.String("1"),
/// 										"memory":             pulumi.String("8Gi"),
/// 									},
/// 									Requests: pulumi.StringMap{
/// 										"additionalProperty": pulumi.String("additionalValue"),
/// 										"cpu":                pulumi.String("1"),
/// 										"memory":             pulumi.String("8Gi"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						Security: &azurearcdata.K8sSecurityArgs{
/// 							ActiveDirectory: &azurearcdata.K8sActiveDirectoryArgs{
/// 								AccountName: pulumi.String("Account name"),
/// 								Connector: &azurearcdata.K8sActiveDirectoryConnectorArgs{
/// 									Name:      pulumi.String("Name of connector"),
/// 									Namespace: pulumi.String("Namespace of connector"),
/// 								},
/// 								EncryptionTypes: pulumi.StringArray{
/// 									pulumi.String("Encryption type item1, Encryption type item2,..."),
/// 								},
/// 								KeytabSecret: pulumi.String("Key tab secret of account"),
/// 							},
/// 							AdminLoginSecret:         pulumi.String("test-sql-login-secret"),
/// 							ServiceCertificateSecret: pulumi.String("Service Certificate Secret"),
/// 							TransparentDataEncryption: &azurearcdata.K8stransparentDataEncryptionArgs{
/// 								Mode: pulumi.String("SystemManaged"),
/// 							},
/// 						},
/// 						Settings: &azurearcdata.K8sSettingsArgs{
/// 							Network: &azurearcdata.K8sNetworkSettingsArgs{
/// 								Forceencryption: pulumi.Int(0),
/// 								Tlsciphers:      pulumi.String("ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-AES128-SHA256:ECDHE-ECDSA-AES256-SHA384:ECDHE-RSA-AES128-SHA256:ECDHE-RSA-AES256-SHA384"),
/// 								Tlsprotocols:    pulumi.String("1.2"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				LicenseType: pulumi.String(azurearcdata.ArcSqlManagedInstanceLicenseTypeLicenseIncluded),
/// 				StartTime:   pulumi.String("Instance start time"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			Sku: &azurearcdata.SqlManagedInstanceSkuArgs{
/// 				Dev:  pulumi.Bool(true),
/// 				Name: azurearcdata.SqlManagedInstanceSkuNameVCore,
/// 				Tier: azurearcdata.SqlManagedInstanceSkuTierGeneralPurpose,
/// 			},
/// 			SqlManagedInstanceName: pulumi.String("testsqlManagedInstance"),
/// 			Tags: pulumi.StringMap{
/// 				"mytag": pulumi.String("myval"),
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
/// import com.pulumi.azurenative.azurearcdata.SqlManagedInstance;
/// import com.pulumi.azurenative.azurearcdata.SqlManagedInstanceArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.SqlManagedInstancePropertiesArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.ActiveDirectoryInformationArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.KeytabInformationArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.BasicLoginInformationArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.SqlManagedInstanceK8sRawArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.SqlManagedInstanceK8sSpecArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.K8sSchedulingArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.K8sSchedulingOptionsArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.K8sResourceRequirementsArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.K8sSecurityArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.K8sActiveDirectoryArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.K8sActiveDirectoryConnectorArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.K8stransparentDataEncryptionArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.K8sSettingsArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.K8sNetworkSettingsArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.SqlManagedInstanceSkuArgs;
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
///         var sqlManagedInstance = new SqlManagedInstance("sqlManagedInstance", SqlManagedInstanceArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation")
///                 .type("CustomLocation")
///                 .build())
///             .location("northeurope")
///             .properties(SqlManagedInstancePropertiesArgs.builder()
///                 .activeDirectoryInformation(ActiveDirectoryInformationArgs.builder()
///                     .keytabInformation(KeytabInformationArgs.builder()
///                         .keytab("********")
///                         .build())
///                     .build())
///                 .admin("Admin user")
///                 .basicLoginInformation(BasicLoginInformationArgs.builder()
///                     .password("********")
///                     .username("username")
///                     .build())
///                 .clusterId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s")
///                 .endTime("Instance end time")
///                 .extensionId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s/providers/Microsoft.KubernetesConfiguration/extensions/extension")
///                 .k8sRaw(SqlManagedInstanceK8sRawArgs.builder()
///                     .spec(SqlManagedInstanceK8sSpecArgs.builder()
///                         .replicas(1)
///                         .scheduling(K8sSchedulingArgs.builder()
///                             .default_(K8sSchedulingOptionsArgs.builder()
///                                 .resources(K8sResourceRequirementsArgs.builder()
///                                     .limits(Map.ofEntries(
///                                         Map.entry("additionalProperty", "additionalValue"),
///                                         Map.entry("cpu", "1"),
///                                         Map.entry("memory", "8Gi")
///                                     ))
///                                     .requests(Map.ofEntries(
///                                         Map.entry("additionalProperty", "additionalValue"),
///                                         Map.entry("cpu", "1"),
///                                         Map.entry("memory", "8Gi")
///                                     ))
///                                     .build())
///                                 .build())
///                             .build())
///                         .security(K8sSecurityArgs.builder()
///                             .activeDirectory(K8sActiveDirectoryArgs.builder()
///                                 .accountName("Account name")
///                                 .connector(K8sActiveDirectoryConnectorArgs.builder()
///                                     .name("Name of connector")
///                                     .namespace("Namespace of connector")
///                                     .build())
///                                 .encryptionTypes("Encryption type item1, Encryption type item2,...")
///                                 .keytabSecret("Key tab secret of account")
///                                 .build())
///                             .adminLoginSecret("test-sql-login-secret")
///                             .serviceCertificateSecret("Service Certificate Secret")
///                             .transparentDataEncryption(K8stransparentDataEncryptionArgs.builder()
///                                 .mode("SystemManaged")
///                                 .build())
///                             .build())
///                         .settings(K8sSettingsArgs.builder()
///                             .network(K8sNetworkSettingsArgs.builder()
///                                 .forceencryption(0)
///                                 .tlsciphers("ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-AES128-SHA256:ECDHE-ECDSA-AES256-SHA384:ECDHE-RSA-AES128-SHA256:ECDHE-RSA-AES256-SHA384")
///                                 .tlsprotocols("1.2")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .licenseType("LicenseIncluded")
///                 .startTime("Instance start time")
///                 .build())
///             .resourceGroupName("testrg")
///             .sku(SqlManagedInstanceSkuArgs.builder()
///                 .dev(true)
///                 .name("vCore")
///                 .tier("GeneralPurpose")
///                 .build())
///             .sqlManagedInstanceName("testsqlManagedInstance")
///             .tags(Map.of("mytag", "myval"))
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
/// const sqlManagedInstance = new azure_native.azurearcdata.SqlManagedInstance("sqlManagedInstance", {
///     extendedLocation: {
///         name: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation",
///         type: azure_native.azurearcdata.ExtendedLocationTypes.CustomLocation,
///     },
///     location: "northeurope",
///     properties: {
///         activeDirectoryInformation: {
///             keytabInformation: {
///                 keytab: "********",
///             },
///         },
///         admin: "Admin user",
///         basicLoginInformation: {
///             password: "********",
///             username: "username",
///         },
///         clusterId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s",
///         endTime: "Instance end time",
///         extensionId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s/providers/Microsoft.KubernetesConfiguration/extensions/extension",
///         k8sRaw: {
///             spec: {
///                 replicas: 1,
///                 scheduling: {
///                     "default": {
///                         resources: {
///                             limits: {
///                                 additionalProperty: "additionalValue",
///                                 cpu: "1",
///                                 memory: "8Gi",
///                             },
///                             requests: {
///                                 additionalProperty: "additionalValue",
///                                 cpu: "1",
///                                 memory: "8Gi",
///                             },
///                         },
///                     },
///                 },
///                 security: {
///                     activeDirectory: {
///                         accountName: "Account name",
///                         connector: {
///                             name: "Name of connector",
///                             namespace: "Namespace of connector",
///                         },
///                         encryptionTypes: ["Encryption type item1, Encryption type item2,..."],
///                         keytabSecret: "Key tab secret of account",
///                     },
///                     adminLoginSecret: "test-sql-login-secret",
///                     serviceCertificateSecret: "Service Certificate Secret",
///                     transparentDataEncryption: {
///                         mode: "SystemManaged",
///                     },
///                 },
///                 settings: {
///                     network: {
///                         forceencryption: 0,
///                         tlsciphers: "ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-AES128-SHA256:ECDHE-ECDSA-AES256-SHA384:ECDHE-RSA-AES128-SHA256:ECDHE-RSA-AES256-SHA384",
///                         tlsprotocols: "1.2",
///                     },
///                 },
///             },
///         },
///         licenseType: azure_native.azurearcdata.ArcSqlManagedInstanceLicenseType.LicenseIncluded,
///         startTime: "Instance start time",
///     },
///     resourceGroupName: "testrg",
///     sku: {
///         dev: true,
///         name: azure_native.azurearcdata.SqlManagedInstanceSkuName.VCore,
///         tier: azure_native.azurearcdata.SqlManagedInstanceSkuTier.GeneralPurpose,
///     },
///     sqlManagedInstanceName: "testsqlManagedInstance",
///     tags: {
///         mytag: "myval",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_managed_instance = azure_native.azurearcdata.SqlManagedInstance("sqlManagedInstance",
///     extended_location={
///         "name": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation",
///         "type": azure_native.azurearcdata.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     location="northeurope",
///     properties={
///         "active_directory_information": {
///             "keytab_information": {
///                 "keytab": "********",
///             },
///         },
///         "admin": "Admin user",
///         "basic_login_information": {
///             "password": "********",
///             "username": "username",
///         },
///         "cluster_id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s",
///         "end_time": "Instance end time",
///         "extension_id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s/providers/Microsoft.KubernetesConfiguration/extensions/extension",
///         "k8s_raw": {
///             "spec": {
///                 "replicas": 1,
///                 "scheduling": {
///                     "default": {
///                         "resources": {
///                             "limits": {
///                                 "additionalProperty": "additionalValue",
///                                 "cpu": "1",
///                                 "memory": "8Gi",
///                             },
///                             "requests": {
///                                 "additionalProperty": "additionalValue",
///                                 "cpu": "1",
///                                 "memory": "8Gi",
///                             },
///                         },
///                     },
///                 },
///                 "security": {
///                     "active_directory": {
///                         "account_name": "Account name",
///                         "connector": {
///                             "name": "Name of connector",
///                             "namespace": "Namespace of connector",
///                         },
///                         "encryption_types": ["Encryption type item1, Encryption type item2,..."],
///                         "keytab_secret": "Key tab secret of account",
///                     },
///                     "admin_login_secret": "test-sql-login-secret",
///                     "service_certificate_secret": "Service Certificate Secret",
///                     "transparent_data_encryption": {
///                         "mode": "SystemManaged",
///                     },
///                 },
///                 "settings": {
///                     "network": {
///                         "forceencryption": 0,
///                         "tlsciphers": "ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-AES128-SHA256:ECDHE-ECDSA-AES256-SHA384:ECDHE-RSA-AES128-SHA256:ECDHE-RSA-AES256-SHA384",
///                         "tlsprotocols": "1.2",
///                     },
///                 },
///             },
///         },
///         "license_type": azure_native.azurearcdata.ArcSqlManagedInstanceLicenseType.LICENSE_INCLUDED,
///         "start_time": "Instance start time",
///     },
///     resource_group_name="testrg",
///     sku={
///         "dev": True,
///         "name": azure_native.azurearcdata.SqlManagedInstanceSkuName.V_CORE,
///         "tier": azure_native.azurearcdata.SqlManagedInstanceSkuTier.GENERAL_PURPOSE,
///     },
///     sql_managed_instance_name="testsqlManagedInstance",
///     tags={
///         "mytag": "myval",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sqlManagedInstance:
///     type: azure-native:azurearcdata:SqlManagedInstance
///     properties:
///       extendedLocation:
///         name: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.ExtendedLocation/customLocations/arclocation
///         type: CustomLocation
///       location: northeurope
///       properties:
///         activeDirectoryInformation:
///           keytabInformation:
///             keytab: '********'
///         admin: Admin user
///         basicLoginInformation:
///           password: '********'
///           username: username
///         clusterId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s
///         endTime: Instance end time
///         extensionId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Kubernetes/connectedClusters/connectedk8s/providers/Microsoft.KubernetesConfiguration/extensions/extension
///         k8sRaw:
///           spec:
///             replicas: 1
///             scheduling:
///               default:
///                 resources:
///                   limits:
///                     additionalProperty: additionalValue
///                     cpu: '1'
///                     memory: 8Gi
///                   requests:
///                     additionalProperty: additionalValue
///                     cpu: '1'
///                     memory: 8Gi
///             security:
///               activeDirectory:
///                 accountName: Account name
///                 connector:
///                   name: Name of connector
///                   namespace: Namespace of connector
///                 encryptionTypes:
///                   - Encryption type item1, Encryption type item2,...
///                 keytabSecret: Key tab secret of account
///               adminLoginSecret: test-sql-login-secret
///               serviceCertificateSecret: Service Certificate Secret
///               transparentDataEncryption:
///                 mode: SystemManaged
///             settings:
///               network:
///                 forceencryption: 0
///                 tlsciphers: ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-AES128-SHA256:ECDHE-ECDSA-AES256-SHA384:ECDHE-RSA-AES128-SHA256:ECDHE-RSA-AES256-SHA384
///                 tlsprotocols: '1.2'
///         licenseType: LicenseIncluded
///         startTime: Instance start time
///       resourceGroupName: testrg
///       sku:
///         dev: true
///         name: vCore
///         tier: GeneralPurpose
///       sqlManagedInstanceName: testsqlManagedInstance
///       tags:
///         mytag: myval
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
/// $ pulumi import azure-native:azurearcdata:SqlManagedInstance testsqlManagedInstance /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureArcData/sqlManagedInstances/{sqlManagedInstanceName}
/// ```
class SqlManagedInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// null
  late final pulumi.Output<SqlManagedInstancePropertiesResponse> properties;

  /// Resource sku.
  late final pulumi.Output<SqlManagedInstanceSkuResponse?> sku;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SqlManagedInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlManagedInstance]. {@macro pulumi_azurearcdata_sql_managed_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlManagedInstance(
    String name, {
    SqlManagedInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:azurearcdata:SqlManagedInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SqlManagedInstancePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SqlManagedInstancePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sku = registerOutput<SqlManagedInstanceSkuResponse?>(
      'sku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SqlManagedInstanceSkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
