import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_datastore_response.dart';
import 'datastore_args.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate datastore (Azure Data Lake Gen1 w/ ServicePrincipal).
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var datastore = new AzureNative.MachineLearningServices.Datastore("datastore", new()
///     {
///         DatastoreProperties = new AzureNative.MachineLearningServices.Inputs.AzureDataLakeGen1DatastoreArgs
///         {
///             Credentials = new AzureNative.MachineLearningServices.Inputs.ServicePrincipalDatastoreCredentialsArgs
///             {
///                 AuthorityUrl = "string",
///                 ClientId = "00000000-1111-2222-3333-444444444444",
///                 CredentialsType = "ServicePrincipal",
///                 ResourceUrl = "string",
///                 Secrets = new AzureNative.MachineLearningServices.Inputs.ServicePrincipalDatastoreSecretsArgs
///                 {
///                     ClientSecret = "string",
///                     SecretsType = "ServicePrincipal",
///                 },
///                 TenantId = "00000000-1111-2222-3333-444444444444",
///             },
///             DatastoreType = "AzureDataLakeGen1",
///             Description = "string",
///             StoreName = "string",
///             Tags =
///             {
///                 { "string", "string" },
///             },
///         },
///         Name = "string",
///         ResourceGroupName = "test-rg",
///         SkipValidation = false,
///         WorkspaceName = "my-aml-workspace",
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
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewDatastore(ctx, "datastore", &machinelearningservices.DatastoreArgs{
/// 			DatastoreProperties: &machinelearningservices.AzureDataLakeGen1DatastoreArgs{
/// 				Credentials: machinelearningservices.ServicePrincipalDatastoreCredentials{
/// 					AuthorityUrl:    "string",
/// 					ClientId:        "00000000-1111-2222-3333-444444444444",
/// 					CredentialsType: "ServicePrincipal",
/// 					ResourceUrl:     "string",
/// 					Secrets: machinelearningservices.ServicePrincipalDatastoreSecrets{
/// 						ClientSecret: "string",
/// 						SecretsType:  "ServicePrincipal",
/// 					},
/// 					TenantId: "00000000-1111-2222-3333-444444444444",
/// 				},
/// 				DatastoreType: pulumi.String("AzureDataLakeGen1"),
/// 				Description:   pulumi.String("string"),
/// 				StoreName:     pulumi.String("string"),
/// 				Tags: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 			},
/// 			Name:              pulumi.String("string"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			SkipValidation:    pulumi.Bool(false),
/// 			WorkspaceName:     pulumi.String("my-aml-workspace"),
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
/// import com.pulumi.azurenative.machinelearningservices.Datastore;
/// import com.pulumi.azurenative.machinelearningservices.DatastoreArgs;
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
///         var datastore = new Datastore("datastore", DatastoreArgs.builder()
///             .datastoreProperties(AzureDataLakeGen1DatastoreArgs.builder()
///                 .credentials(ServicePrincipalDatastoreCredentialsArgs.builder()
///                     .authorityUrl("string")
///                     .clientId("00000000-1111-2222-3333-444444444444")
///                     .credentialsType("ServicePrincipal")
///                     .resourceUrl("string")
///                     .secrets(ServicePrincipalDatastoreSecretsArgs.builder()
///                         .clientSecret("string")
///                         .secretsType("ServicePrincipal")
///                         .build())
///                     .tenantId("00000000-1111-2222-3333-444444444444")
///                     .build())
///                 .datastoreType("AzureDataLakeGen1")
///                 .description("string")
///                 .storeName("string")
///                 .tags(Map.of("string", "string"))
///                 .build())
///             .name("string")
///             .resourceGroupName("test-rg")
///             .skipValidation(false)
///             .workspaceName("my-aml-workspace")
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
/// const datastore = new azure_native.machinelearningservices.Datastore("datastore", {
///     datastoreProperties: {
///         credentials: {
///             authorityUrl: "string",
///             clientId: "00000000-1111-2222-3333-444444444444",
///             credentialsType: "ServicePrincipal",
///             resourceUrl: "string",
///             secrets: {
///                 clientSecret: "string",
///                 secretsType: "ServicePrincipal",
///             },
///             tenantId: "00000000-1111-2222-3333-444444444444",
///         },
///         datastoreType: "AzureDataLakeGen1",
///         description: "string",
///         storeName: "string",
///         tags: {
///             string: "string",
///         },
///     },
///     name: "string",
///     resourceGroupName: "test-rg",
///     skipValidation: false,
///     workspaceName: "my-aml-workspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// datastore = azure_native.machinelearningservices.Datastore("datastore",
///     datastore_properties={
///         "credentials": {
///             "authority_url": "string",
///             "client_id": "00000000-1111-2222-3333-444444444444",
///             "credentials_type": "ServicePrincipal",
///             "resource_url": "string",
///             "secrets": {
///                 "client_secret": "string",
///                 "secrets_type": "ServicePrincipal",
///             },
///             "tenant_id": "00000000-1111-2222-3333-444444444444",
///         },
///         "datastore_type": "AzureDataLakeGen1",
///         "description": "string",
///         "store_name": "string",
///         "tags": {
///             "string": "string",
///         },
///     },
///     name="string",
///     resource_group_name="test-rg",
///     skip_validation=False,
///     workspace_name="my-aml-workspace")
///
/// ```
///
/// ```yaml
/// resources:
///   datastore:
///     type: azure-native:machinelearningservices:Datastore
///     properties:
///       datastoreProperties:
///         credentials:
///           authorityUrl: string
///           clientId: 00000000-1111-2222-3333-444444444444
///           credentialsType: ServicePrincipal
///           resourceUrl: string
///           secrets:
///             clientSecret: string
///             secretsType: ServicePrincipal
///           tenantId: 00000000-1111-2222-3333-444444444444
///         datastoreType: AzureDataLakeGen1
///         description: string
///         storeName: string
///         tags:
///           string: string
///       name: string
///       resourceGroupName: test-rg
///       skipValidation: false
///       workspaceName: my-aml-workspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdate datastore (Azure Data Lake Gen2 w/ Service Principal).
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var datastore = new AzureNative.MachineLearningServices.Datastore("datastore", new()
///     {
///         DatastoreProperties = new AzureNative.MachineLearningServices.Inputs.AzureDataLakeGen2DatastoreArgs
///         {
///             AccountName = "string",
///             Credentials = new AzureNative.MachineLearningServices.Inputs.ServicePrincipalDatastoreCredentialsArgs
///             {
///                 AuthorityUrl = "string",
///                 ClientId = "00000000-1111-2222-3333-444444444444",
///                 CredentialsType = "ServicePrincipal",
///                 ResourceUrl = "string",
///                 Secrets = new AzureNative.MachineLearningServices.Inputs.ServicePrincipalDatastoreSecretsArgs
///                 {
///                     ClientSecret = "string",
///                     SecretsType = "ServicePrincipal",
///                 },
///                 TenantId = "00000000-1111-2222-3333-444444444444",
///             },
///             DatastoreType = "AzureDataLakeGen2",
///             Description = "string",
///             Endpoint = "string",
///             Filesystem = "string",
///             Protocol = "string",
///             Tags =
///             {
///                 { "string", "string" },
///             },
///         },
///         Name = "string",
///         ResourceGroupName = "test-rg",
///         SkipValidation = false,
///         WorkspaceName = "my-aml-workspace",
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
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewDatastore(ctx, "datastore", &machinelearningservices.DatastoreArgs{
/// 			DatastoreProperties: &machinelearningservices.AzureDataLakeGen2DatastoreArgs{
/// 				AccountName: pulumi.String("string"),
/// 				Credentials: machinelearningservices.ServicePrincipalDatastoreCredentials{
/// 					AuthorityUrl:    "string",
/// 					ClientId:        "00000000-1111-2222-3333-444444444444",
/// 					CredentialsType: "ServicePrincipal",
/// 					ResourceUrl:     "string",
/// 					Secrets: machinelearningservices.ServicePrincipalDatastoreSecrets{
/// 						ClientSecret: "string",
/// 						SecretsType:  "ServicePrincipal",
/// 					},
/// 					TenantId: "00000000-1111-2222-3333-444444444444",
/// 				},
/// 				DatastoreType: pulumi.String("AzureDataLakeGen2"),
/// 				Description:   pulumi.String("string"),
/// 				Endpoint:      pulumi.String("string"),
/// 				Filesystem:    pulumi.String("string"),
/// 				Protocol:      pulumi.String("string"),
/// 				Tags: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 			},
/// 			Name:              pulumi.String("string"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			SkipValidation:    pulumi.Bool(false),
/// 			WorkspaceName:     pulumi.String("my-aml-workspace"),
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
/// import com.pulumi.azurenative.machinelearningservices.Datastore;
/// import com.pulumi.azurenative.machinelearningservices.DatastoreArgs;
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
///         var datastore = new Datastore("datastore", DatastoreArgs.builder()
///             .datastoreProperties(AzureDataLakeGen2DatastoreArgs.builder()
///                 .accountName("string")
///                 .credentials(ServicePrincipalDatastoreCredentialsArgs.builder()
///                     .authorityUrl("string")
///                     .clientId("00000000-1111-2222-3333-444444444444")
///                     .credentialsType("ServicePrincipal")
///                     .resourceUrl("string")
///                     .secrets(ServicePrincipalDatastoreSecretsArgs.builder()
///                         .clientSecret("string")
///                         .secretsType("ServicePrincipal")
///                         .build())
///                     .tenantId("00000000-1111-2222-3333-444444444444")
///                     .build())
///                 .datastoreType("AzureDataLakeGen2")
///                 .description("string")
///                 .endpoint("string")
///                 .filesystem("string")
///                 .protocol("string")
///                 .tags(Map.of("string", "string"))
///                 .build())
///             .name("string")
///             .resourceGroupName("test-rg")
///             .skipValidation(false)
///             .workspaceName("my-aml-workspace")
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
/// const datastore = new azure_native.machinelearningservices.Datastore("datastore", {
///     datastoreProperties: {
///         accountName: "string",
///         credentials: {
///             authorityUrl: "string",
///             clientId: "00000000-1111-2222-3333-444444444444",
///             credentialsType: "ServicePrincipal",
///             resourceUrl: "string",
///             secrets: {
///                 clientSecret: "string",
///                 secretsType: "ServicePrincipal",
///             },
///             tenantId: "00000000-1111-2222-3333-444444444444",
///         },
///         datastoreType: "AzureDataLakeGen2",
///         description: "string",
///         endpoint: "string",
///         filesystem: "string",
///         protocol: "string",
///         tags: {
///             string: "string",
///         },
///     },
///     name: "string",
///     resourceGroupName: "test-rg",
///     skipValidation: false,
///     workspaceName: "my-aml-workspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// datastore = azure_native.machinelearningservices.Datastore("datastore",
///     datastore_properties={
///         "account_name": "string",
///         "credentials": {
///             "authority_url": "string",
///             "client_id": "00000000-1111-2222-3333-444444444444",
///             "credentials_type": "ServicePrincipal",
///             "resource_url": "string",
///             "secrets": {
///                 "client_secret": "string",
///                 "secrets_type": "ServicePrincipal",
///             },
///             "tenant_id": "00000000-1111-2222-3333-444444444444",
///         },
///         "datastore_type": "AzureDataLakeGen2",
///         "description": "string",
///         "endpoint": "string",
///         "filesystem": "string",
///         "protocol": "string",
///         "tags": {
///             "string": "string",
///         },
///     },
///     name="string",
///     resource_group_name="test-rg",
///     skip_validation=False,
///     workspace_name="my-aml-workspace")
///
/// ```
///
/// ```yaml
/// resources:
///   datastore:
///     type: azure-native:machinelearningservices:Datastore
///     properties:
///       datastoreProperties:
///         accountName: string
///         credentials:
///           authorityUrl: string
///           clientId: 00000000-1111-2222-3333-444444444444
///           credentialsType: ServicePrincipal
///           resourceUrl: string
///           secrets:
///             clientSecret: string
///             secretsType: ServicePrincipal
///           tenantId: 00000000-1111-2222-3333-444444444444
///         datastoreType: AzureDataLakeGen2
///         description: string
///         endpoint: string
///         filesystem: string
///         protocol: string
///         tags:
///           string: string
///       name: string
///       resourceGroupName: test-rg
///       skipValidation: false
///       workspaceName: my-aml-workspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdate datastore (Azure File store w/ AccountKey).
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var datastore = new AzureNative.MachineLearningServices.Datastore("datastore", new()
///     {
///         DatastoreProperties = new AzureNative.MachineLearningServices.Inputs.AzureFileDatastoreArgs
///         {
///             AccountName = "string",
///             Credentials = new AzureNative.MachineLearningServices.Inputs.AccountKeyDatastoreCredentialsArgs
///             {
///                 CredentialsType = "AccountKey",
///                 Secrets = new AzureNative.MachineLearningServices.Inputs.AccountKeyDatastoreSecretsArgs
///                 {
///                     Key = "string",
///                     SecretsType = "AccountKey",
///                 },
///             },
///             DatastoreType = "AzureFile",
///             Description = "string",
///             Endpoint = "string",
///             FileShareName = "string",
///             Protocol = "string",
///             Tags =
///             {
///                 { "string", "string" },
///             },
///         },
///         Name = "string",
///         ResourceGroupName = "test-rg",
///         SkipValidation = false,
///         WorkspaceName = "my-aml-workspace",
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
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewDatastore(ctx, "datastore", &machinelearningservices.DatastoreArgs{
/// 			DatastoreProperties: &machinelearningservices.AzureFileDatastoreArgs{
/// 				AccountName: pulumi.String("string"),
/// 				Credentials: machinelearningservices.AccountKeyDatastoreCredentials{
/// 					CredentialsType: "AccountKey",
/// 					Secrets: machinelearningservices.AccountKeyDatastoreSecrets{
/// 						Key:         "string",
/// 						SecretsType: "AccountKey",
/// 					},
/// 				},
/// 				DatastoreType: pulumi.String("AzureFile"),
/// 				Description:   pulumi.String("string"),
/// 				Endpoint:      pulumi.String("string"),
/// 				FileShareName: pulumi.String("string"),
/// 				Protocol:      pulumi.String("string"),
/// 				Tags: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 			},
/// 			Name:              pulumi.String("string"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			SkipValidation:    pulumi.Bool(false),
/// 			WorkspaceName:     pulumi.String("my-aml-workspace"),
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
/// import com.pulumi.azurenative.machinelearningservices.Datastore;
/// import com.pulumi.azurenative.machinelearningservices.DatastoreArgs;
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
///         var datastore = new Datastore("datastore", DatastoreArgs.builder()
///             .datastoreProperties(AzureFileDatastoreArgs.builder()
///                 .accountName("string")
///                 .credentials(AccountKeyDatastoreCredentialsArgs.builder()
///                     .credentialsType("AccountKey")
///                     .secrets(AccountKeyDatastoreSecretsArgs.builder()
///                         .key("string")
///                         .secretsType("AccountKey")
///                         .build())
///                     .build())
///                 .datastoreType("AzureFile")
///                 .description("string")
///                 .endpoint("string")
///                 .fileShareName("string")
///                 .protocol("string")
///                 .tags(Map.of("string", "string"))
///                 .build())
///             .name("string")
///             .resourceGroupName("test-rg")
///             .skipValidation(false)
///             .workspaceName("my-aml-workspace")
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
/// const datastore = new azure_native.machinelearningservices.Datastore("datastore", {
///     datastoreProperties: {
///         accountName: "string",
///         credentials: {
///             credentialsType: "AccountKey",
///             secrets: {
///                 key: "string",
///                 secretsType: "AccountKey",
///             },
///         },
///         datastoreType: "AzureFile",
///         description: "string",
///         endpoint: "string",
///         fileShareName: "string",
///         protocol: "string",
///         tags: {
///             string: "string",
///         },
///     },
///     name: "string",
///     resourceGroupName: "test-rg",
///     skipValidation: false,
///     workspaceName: "my-aml-workspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// datastore = azure_native.machinelearningservices.Datastore("datastore",
///     datastore_properties={
///         "account_name": "string",
///         "credentials": {
///             "credentials_type": "AccountKey",
///             "secrets": {
///                 "key": "string",
///                 "secrets_type": "AccountKey",
///             },
///         },
///         "datastore_type": "AzureFile",
///         "description": "string",
///         "endpoint": "string",
///         "file_share_name": "string",
///         "protocol": "string",
///         "tags": {
///             "string": "string",
///         },
///     },
///     name="string",
///     resource_group_name="test-rg",
///     skip_validation=False,
///     workspace_name="my-aml-workspace")
///
/// ```
///
/// ```yaml
/// resources:
///   datastore:
///     type: azure-native:machinelearningservices:Datastore
///     properties:
///       datastoreProperties:
///         accountName: string
///         credentials:
///           credentialsType: AccountKey
///           secrets:
///             key: string
///             secretsType: AccountKey
///         datastoreType: AzureFile
///         description: string
///         endpoint: string
///         fileShareName: string
///         protocol: string
///         tags:
///           string: string
///       name: string
///       resourceGroupName: test-rg
///       skipValidation: false
///       workspaceName: my-aml-workspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdate datastore (AzureBlob w/ AccountKey).
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var datastore = new AzureNative.MachineLearningServices.Datastore("datastore", new()
///     {
///         DatastoreProperties = new AzureNative.MachineLearningServices.Inputs.AzureBlobDatastoreArgs
///         {
///             AccountName = "string",
///             ContainerName = "string",
///             Credentials = new AzureNative.MachineLearningServices.Inputs.AccountKeyDatastoreCredentialsArgs
///             {
///                 CredentialsType = "AccountKey",
///                 Secrets = new AzureNative.MachineLearningServices.Inputs.AccountKeyDatastoreSecretsArgs
///                 {
///                     Key = "string",
///                     SecretsType = "AccountKey",
///                 },
///             },
///             DatastoreType = "AzureBlob",
///             Description = "string",
///             Endpoint = "core.windows.net",
///             Protocol = "https",
///             Tags =
///             {
///                 { "string", "string" },
///             },
///         },
///         Name = "string",
///         ResourceGroupName = "test-rg",
///         SkipValidation = false,
///         WorkspaceName = "my-aml-workspace",
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
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewDatastore(ctx, "datastore", &machinelearningservices.DatastoreArgs{
/// 			DatastoreProperties: &machinelearningservices.AzureBlobDatastoreArgs{
/// 				AccountName:   pulumi.String("string"),
/// 				ContainerName: pulumi.String("string"),
/// 				Credentials: machinelearningservices.AccountKeyDatastoreCredentials{
/// 					CredentialsType: "AccountKey",
/// 					Secrets: machinelearningservices.AccountKeyDatastoreSecrets{
/// 						Key:         "string",
/// 						SecretsType: "AccountKey",
/// 					},
/// 				},
/// 				DatastoreType: pulumi.String("AzureBlob"),
/// 				Description:   pulumi.String("string"),
/// 				Endpoint:      pulumi.String("core.windows.net"),
/// 				Protocol:      pulumi.String("https"),
/// 				Tags: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 			},
/// 			Name:              pulumi.String("string"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			SkipValidation:    pulumi.Bool(false),
/// 			WorkspaceName:     pulumi.String("my-aml-workspace"),
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
/// import com.pulumi.azurenative.machinelearningservices.Datastore;
/// import com.pulumi.azurenative.machinelearningservices.DatastoreArgs;
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
///         var datastore = new Datastore("datastore", DatastoreArgs.builder()
///             .datastoreProperties(AzureBlobDatastoreArgs.builder()
///                 .accountName("string")
///                 .containerName("string")
///                 .credentials(AccountKeyDatastoreCredentialsArgs.builder()
///                     .credentialsType("AccountKey")
///                     .secrets(AccountKeyDatastoreSecretsArgs.builder()
///                         .key("string")
///                         .secretsType("AccountKey")
///                         .build())
///                     .build())
///                 .datastoreType("AzureBlob")
///                 .description("string")
///                 .endpoint("core.windows.net")
///                 .protocol("https")
///                 .tags(Map.of("string", "string"))
///                 .build())
///             .name("string")
///             .resourceGroupName("test-rg")
///             .skipValidation(false)
///             .workspaceName("my-aml-workspace")
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
/// const datastore = new azure_native.machinelearningservices.Datastore("datastore", {
///     datastoreProperties: {
///         accountName: "string",
///         containerName: "string",
///         credentials: {
///             credentialsType: "AccountKey",
///             secrets: {
///                 key: "string",
///                 secretsType: "AccountKey",
///             },
///         },
///         datastoreType: "AzureBlob",
///         description: "string",
///         endpoint: "core.windows.net",
///         protocol: "https",
///         tags: {
///             string: "string",
///         },
///     },
///     name: "string",
///     resourceGroupName: "test-rg",
///     skipValidation: false,
///     workspaceName: "my-aml-workspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// datastore = azure_native.machinelearningservices.Datastore("datastore",
///     datastore_properties={
///         "account_name": "string",
///         "container_name": "string",
///         "credentials": {
///             "credentials_type": "AccountKey",
///             "secrets": {
///                 "key": "string",
///                 "secrets_type": "AccountKey",
///             },
///         },
///         "datastore_type": "AzureBlob",
///         "description": "string",
///         "endpoint": "core.windows.net",
///         "protocol": "https",
///         "tags": {
///             "string": "string",
///         },
///     },
///     name="string",
///     resource_group_name="test-rg",
///     skip_validation=False,
///     workspace_name="my-aml-workspace")
///
/// ```
///
/// ```yaml
/// resources:
///   datastore:
///     type: azure-native:machinelearningservices:Datastore
///     properties:
///       datastoreProperties:
///         accountName: string
///         containerName: string
///         credentials:
///           credentialsType: AccountKey
///           secrets:
///             key: string
///             secretsType: AccountKey
///         datastoreType: AzureBlob
///         description: string
///         endpoint: core.windows.net
///         protocol: https
///         tags:
///           string: string
///       name: string
///       resourceGroupName: test-rg
///       skipValidation: false
///       workspaceName: my-aml-workspace
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
/// $ pulumi import azure-native:machinelearningservices:Datastore string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/datastores/{name}
/// ```
class Datastore extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<AzureBlobDatastoreResponse> datastoreProperties;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Datastore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Datastore]. {@macro pulumi_machinelearningservices_datastore_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Datastore(
    String name, {
    DatastoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:Datastore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    datastoreProperties = registerOutput<AzureBlobDatastoreResponse>('datastoreProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureBlobDatastoreResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
