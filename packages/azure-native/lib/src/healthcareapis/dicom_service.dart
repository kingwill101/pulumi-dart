import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_configuration_response.dart';
import 'dicom_service_args.dart';
import 'dicom_service_authentication_configuration_response.dart';
import 'encryption_response.dart';
import 'private_endpoint_connection_response.dart';
import 'service_managed_identity_response_identity.dart';
import 'storage_configuration_response.dart';
import 'system_data_response.dart';

/// The description of Dicom Service
///
/// Uses Azure REST API version 2024-03-31. In version 2.x of the Azure Native provider, it used API version 2023-02-28.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01, 2023-02-28, 2023-09-06, 2023-11-01, 2023-12-01, 2024-03-01, 2025-03-01-preview, 2025-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native healthcareapis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a Dicom Service
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dicomService = new AzureNative.HealthcareApis.DicomService("dicomService", new()
///     {
///         DicomServiceName = "blue",
///         EnableDataPartitions = false,
///         Location = "westus",
///         ResourceGroupName = "testRG",
///         StorageConfiguration = new AzureNative.HealthcareApis.Inputs.StorageConfigurationArgs
///         {
///             FileSystemName = "fileSystemName",
///             StorageResourceId = "/subscriptions/ab309d4e-4c2e-4241-be2e-08e1c8dd4246/resourceGroups/rgname/providers/Microsoft.Storage/storageAccounts/accountname",
///         },
///         WorkspaceName = "workspace1",
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
/// 	healthcareapis "github.com/pulumi/pulumi-azure-native-sdk/healthcareapis/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcareapis.NewDicomService(ctx, "dicomService", &healthcareapis.DicomServiceArgs{
/// 			DicomServiceName:     pulumi.String("blue"),
/// 			EnableDataPartitions: pulumi.Bool(false),
/// 			Location:             pulumi.String("westus"),
/// 			ResourceGroupName:    pulumi.String("testRG"),
/// 			StorageConfiguration: &healthcareapis.StorageConfigurationArgs{
/// 				FileSystemName:    pulumi.String("fileSystemName"),
/// 				StorageResourceId: pulumi.String("/subscriptions/ab309d4e-4c2e-4241-be2e-08e1c8dd4246/resourceGroups/rgname/providers/Microsoft.Storage/storageAccounts/accountname"),
/// 			},
/// 			WorkspaceName: pulumi.String("workspace1"),
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
/// import com.pulumi.azurenative.healthcareapis.DicomService;
/// import com.pulumi.azurenative.healthcareapis.DicomServiceArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.StorageConfigurationArgs;
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
///         var dicomService = new DicomService("dicomService", DicomServiceArgs.builder()
///             .dicomServiceName("blue")
///             .enableDataPartitions(false)
///             .location("westus")
///             .resourceGroupName("testRG")
///             .storageConfiguration(StorageConfigurationArgs.builder()
///                 .fileSystemName("fileSystemName")
///                 .storageResourceId("/subscriptions/ab309d4e-4c2e-4241-be2e-08e1c8dd4246/resourceGroups/rgname/providers/Microsoft.Storage/storageAccounts/accountname")
///                 .build())
///             .workspaceName("workspace1")
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
/// const dicomService = new azure_native.healthcareapis.DicomService("dicomService", {
///     dicomServiceName: "blue",
///     enableDataPartitions: false,
///     location: "westus",
///     resourceGroupName: "testRG",
///     storageConfiguration: {
///         fileSystemName: "fileSystemName",
///         storageResourceId: "/subscriptions/ab309d4e-4c2e-4241-be2e-08e1c8dd4246/resourceGroups/rgname/providers/Microsoft.Storage/storageAccounts/accountname",
///     },
///     workspaceName: "workspace1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dicom_service = azure_native.healthcareapis.DicomService("dicomService",
///     dicom_service_name="blue",
///     enable_data_partitions=False,
///     location="westus",
///     resource_group_name="testRG",
///     storage_configuration={
///         "file_system_name": "fileSystemName",
///         "storage_resource_id": "/subscriptions/ab309d4e-4c2e-4241-be2e-08e1c8dd4246/resourceGroups/rgname/providers/Microsoft.Storage/storageAccounts/accountname",
///     },
///     workspace_name="workspace1")
///
/// ```
///
/// ```yaml
/// resources:
///   dicomService:
///     type: azure-native:healthcareapis:DicomService
///     properties:
///       dicomServiceName: blue
///       enableDataPartitions: false
///       location: westus
///       resourceGroupName: testRG
///       storageConfiguration:
///         fileSystemName: fileSystemName
///         storageResourceId: /subscriptions/ab309d4e-4c2e-4241-be2e-08e1c8dd4246/resourceGroups/rgname/providers/Microsoft.Storage/storageAccounts/accountname
///       workspaceName: workspace1
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
/// $ pulumi import azure-native:healthcareapis:DicomService blue /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HealthcareApis/workspaces/{workspaceName}/dicomservices/{dicomServiceName}
/// ```
class DicomService extends pulumi.CustomResource {
  /// Dicom Service authentication configuration.
  late final pulumi.Output<DicomServiceAuthenticationConfigurationResponse?> authenticationConfiguration;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Dicom Service Cors configuration.
  late final pulumi.Output<CorsConfigurationResponse?> corsConfiguration;
  /// If data partitions is enabled or not.
  late final pulumi.Output<bool?> enableDataPartitions;
  /// The encryption settings of the DICOM service
  late final pulumi.Output<EncryptionResponse?> encryption;
  /// An etag associated with the resource, used for optimistic concurrency when editing it.
  late final pulumi.Output<String?> etag;
  /// DICOM Service event support status.
  late final pulumi.Output<String> eventState;
  /// Setting indicating whether the service has a managed identity associated with it.
  late final pulumi.Output<ServiceManagedIdentityResponseIdentity?> identity;
  /// The resource location.
  late final pulumi.Output<String?> location;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// The list of private endpoint connections that are set up for this resource.
  late final pulumi.Output<List<PrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// The provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  late final pulumi.Output<String> publicNetworkAccess;
  /// The url of the Dicom Services.
  late final pulumi.Output<String> serviceUrl;
  /// The configuration of external storage account
  late final pulumi.Output<StorageConfigurationResponse?> storageConfiguration;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [DicomService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DicomService]. {@macro pulumi_healthcareapis_dicom_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DicomService(
    String name, {
    DicomServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:healthcareapis:DicomService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationConfiguration = registerOutput<DicomServiceAuthenticationConfigurationResponse?>('authenticationConfiguration');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.corsConfiguration = registerOutput<CorsConfigurationResponse?>('corsConfiguration');
    this.enableDataPartitions = registerOutput<bool?>('enableDataPartitions');
    this.encryption = registerOutput<EncryptionResponse?>('encryption');
    this.etag = registerOutput<String?>('etag');
    this.eventState = registerOutput<String>('eventState');
    this.identity = registerOutput<ServiceManagedIdentityResponseIdentity?>('identity');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.privateEndpointConnections = registerOutput<List<PrivateEndpointConnectionResponse>>('privateEndpointConnections');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.publicNetworkAccess = registerOutput<String>('publicNetworkAccess');
    this.serviceUrl = registerOutput<String>('serviceUrl');
    this.storageConfiguration = registerOutput<StorageConfigurationResponse?>('storageConfiguration');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
