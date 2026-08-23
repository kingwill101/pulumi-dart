import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_connector_args.dart';
import 'system_data_response.dart';

/// Cloud Connector resource.
///
/// Uses Azure REST API version 2023-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a Cloud Connector
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudConnector = new AzureNative.HybridCloud.CloudConnector("cloudConnector", new()
///     {
///         AccountId = "123456789012",
///         CloudConnectorName = "123456789012",
///         CloudType = AzureNative.HybridCloud.CloudType.AWS,
///         Location = "West US",
///         ResourceGroupName = "demo-rg",
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
/// 	hybridcloud "github.com/pulumi/pulumi-azure-native-sdk/hybridcloud/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridcloud.NewCloudConnector(ctx, "cloudConnector", &hybridcloud.CloudConnectorArgs{
/// 			AccountId:          pulumi.String("123456789012"),
/// 			CloudConnectorName: pulumi.String("123456789012"),
/// 			CloudType:          pulumi.String(hybridcloud.CloudTypeAWS),
/// 			Location:           pulumi.String("West US"),
/// 			ResourceGroupName:  pulumi.String("demo-rg"),
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
/// resource "azure-native_hybridcloud_cloudconnector" "cloudConnector" {
///   account_id           = "123456789012"
///   cloud_connector_name = "123456789012"
///   cloud_type           = "AWS"
///   location             = "West US"
///   resource_group_name  = "demo-rg"
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
/// import com.pulumi.azurenative.hybridcloud.CloudConnector;
/// import com.pulumi.azurenative.hybridcloud.CloudConnectorArgs;
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
///         var cloudConnector = new CloudConnector("cloudConnector", CloudConnectorArgs.builder()
///             .accountId("123456789012")
///             .cloudConnectorName("123456789012")
///             .cloudType("AWS")
///             .location("West US")
///             .resourceGroupName("demo-rg")
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
/// const cloudConnector = new azure_native.hybridcloud.CloudConnector("cloudConnector", {
///     accountId: "123456789012",
///     cloudConnectorName: "123456789012",
///     cloudType: azure_native.hybridcloud.CloudType.AWS,
///     location: "West US",
///     resourceGroupName: "demo-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cloud_connector = azure_native.hybridcloud.CloudConnector("cloudConnector",
///     account_id="123456789012",
///     cloud_connector_name="123456789012",
///     cloud_type=azure_native.hybridcloud.CloudType.AWS,
///     location="West US",
///     resource_group_name="demo-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   cloudConnector:
///     type: azure-native:hybridcloud:CloudConnector
///     properties:
///       accountId: '123456789012'
///       cloudConnectorName: '123456789012'
///       cloudType: AWS
///       location: West US
///       resourceGroupName: demo-rg
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
/// $ pulumi import azure-native:hybridcloud:CloudConnector 123456789012 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridCloud/cloudConnectors/{cloudConnectorName}
/// ```
class CloudConnector extends pulumi.CustomResource {
  /// Account identifier of the remote cloud.
  late final pulumi.Output<String?> accountId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The cloud connector type.
  late final pulumi.Output<String?> cloudType;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the cloud connector resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CloudConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudConnector]. {@macro pulumi_hybridcloud_cloud_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudConnector(
    String name, {
    CloudConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridcloud:CloudConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cloudType = registerOutput<String?>('cloudType');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
