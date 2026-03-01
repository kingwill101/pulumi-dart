import 'package:pulumi/pulumi.dart' as pulumi;
import 'infrastructure_resource_args.dart';
import 'system_data_response.dart';

/// An infrastructure resource under Space.
///
/// Uses Azure REST API version 2023-11-14-preview. In version 2.x of the Azure Native provider, it used API version 2023-11-14-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdateInfrastructureResource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var infrastructureResource = new AzureNative.IntegrationSpaces.InfrastructureResource("infrastructureResource", new()
///     {
///         InfrastructureResourceName = "InfrastructureResource1",
///         ResourceGroupName = "testrg",
///         ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.ApiManagement/service/APIM1",
///         ResourceType = "Microsoft.ApiManagement/service",
///         SpaceName = "Space1",
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
/// 	integrationspaces "github.com/pulumi/pulumi-azure-native-sdk/integrationspaces/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := integrationspaces.NewInfrastructureResource(ctx, "infrastructureResource", &integrationspaces.InfrastructureResourceArgs{
/// 			InfrastructureResourceName: pulumi.String("InfrastructureResource1"),
/// 			ResourceGroupName:          pulumi.String("testrg"),
/// 			ResourceId:                 pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.ApiManagement/service/APIM1"),
/// 			ResourceType:               pulumi.String("Microsoft.ApiManagement/service"),
/// 			SpaceName:                  pulumi.String("Space1"),
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
/// import com.pulumi.azurenative.integrationspaces.InfrastructureResource;
/// import com.pulumi.azurenative.integrationspaces.InfrastructureResourceArgs;
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
///         var infrastructureResource = new InfrastructureResource("infrastructureResource", InfrastructureResourceArgs.builder()
///             .infrastructureResourceName("InfrastructureResource1")
///             .resourceGroupName("testrg")
///             .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.ApiManagement/service/APIM1")
///             .resourceType("Microsoft.ApiManagement/service")
///             .spaceName("Space1")
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
/// const infrastructureResource = new azure_native.integrationspaces.InfrastructureResource("infrastructureResource", {
///     infrastructureResourceName: "InfrastructureResource1",
///     resourceGroupName: "testrg",
///     resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.ApiManagement/service/APIM1",
///     resourceType: "Microsoft.ApiManagement/service",
///     spaceName: "Space1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// infrastructure_resource = azure_native.integrationspaces.InfrastructureResource("infrastructureResource",
///     infrastructure_resource_name="InfrastructureResource1",
///     resource_group_name="testrg",
///     resource_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.ApiManagement/service/APIM1",
///     resource_type="Microsoft.ApiManagement/service",
///     space_name="Space1")
///
/// ```
///
/// ```yaml
/// resources:
///   infrastructureResource:
///     type: azure-native:integrationspaces:InfrastructureResource
///     properties:
///       infrastructureResourceName: InfrastructureResource1
///       resourceGroupName: testrg
///       resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.ApiManagement/service/APIM1
///       resourceType: Microsoft.ApiManagement/service
///       spaceName: Space1
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
/// $ pulumi import azure-native:integrationspaces:InfrastructureResource InfrastructureResource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IntegrationSpaces/spaces/{spaceName}/infrastructureResources/{infrastructureResourceName}
/// ```
class InfrastructureResource extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// The id of the infrastructure resource.
  late final pulumi.Output<String> resourceId;
  /// The type of the infrastructure resource.
  late final pulumi.Output<String> resourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [InfrastructureResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InfrastructureResource]. {@macro pulumi_integrationspaces_infrastructure_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InfrastructureResource(
    String name, {
    InfrastructureResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:integrationspaces:InfrastructureResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resourceId = registerOutput<String>('resourceId');
    this.resourceType = registerOutput<String>('resourceType');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
