import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_resource_args.dart';
import 'system_data_response.dart';

/// A resource under application.
///
/// Uses Azure REST API version 2023-11-14-preview. In version 2.x of the Azure Native provider, it used API version 2023-11-14-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdateApplicationResource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var applicationResource = new AzureNative.IntegrationSpaces.ApplicationResource("applicationResource", new()
///     {
///         ApplicationName = "Application1",
///         ResourceGroupName = "testrg",
///         ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Web/sites/LogicApp1",
///         ResourceKind = "LogicApp",
///         ResourceName = "Resource1",
///         ResourceType = "Microsoft.Web/sites",
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
/// 		_, err := integrationspaces.NewApplicationResource(ctx, "applicationResource", &integrationspaces.ApplicationResourceArgs{
/// 			ApplicationName:   pulumi.String("Application1"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			ResourceId:        pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Web/sites/LogicApp1"),
/// 			ResourceKind:      pulumi.String("LogicApp"),
/// 			ResourceName:      pulumi.String("Resource1"),
/// 			ResourceType:      pulumi.String("Microsoft.Web/sites"),
/// 			SpaceName:         pulumi.String("Space1"),
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
/// import com.pulumi.azurenative.integrationspaces.ApplicationResource;
/// import com.pulumi.azurenative.integrationspaces.ApplicationResourceArgs;
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
///         var applicationResource = new ApplicationResource("applicationResource", ApplicationResourceArgs.builder()
///             .applicationName("Application1")
///             .resourceGroupName("testrg")
///             .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Web/sites/LogicApp1")
///             .resourceKind("LogicApp")
///             .resourceName("Resource1")
///             .resourceType("Microsoft.Web/sites")
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
/// const applicationResource = new azure_native.integrationspaces.ApplicationResource("applicationResource", {
///     applicationName: "Application1",
///     resourceGroupName: "testrg",
///     resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Web/sites/LogicApp1",
///     resourceKind: "LogicApp",
///     resourceName: "Resource1",
///     resourceType: "Microsoft.Web/sites",
///     spaceName: "Space1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// application_resource = azure_native.integrationspaces.ApplicationResource("applicationResource",
///     application_name="Application1",
///     resource_group_name="testrg",
///     resource_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Web/sites/LogicApp1",
///     resource_kind="LogicApp",
///     resource_name_="Resource1",
///     resource_type="Microsoft.Web/sites",
///     space_name="Space1")
///
/// ```
///
/// ```yaml
/// resources:
///   applicationResource:
///     type: azure-native:integrationspaces:ApplicationResource
///     properties:
///       applicationName: Application1
///       resourceGroupName: testrg
///       resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Web/sites/LogicApp1
///       resourceKind: LogicApp
///       resourceName: Resource1
///       resourceType: Microsoft.Web/sites
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
/// $ pulumi import azure-native:integrationspaces:ApplicationResource Resource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IntegrationSpaces/spaces/{spaceName}/applications/{applicationName}/resources/{resourceName}
/// ```
class ApplicationResource extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;

  /// The Arm id of the application resource.
  late final pulumi.Output<String> resourceId;

  /// The kind of the application resource.
  late final pulumi.Output<String?> resourceKind;

  /// The type of the application resource.
  late final pulumi.Output<String> resourceType;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ApplicationResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationResource]. {@macro pulumi_integrationspaces_application_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationResource(
    String name, {
    ApplicationResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:integrationspaces:ApplicationResource',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceId = registerOutput<String>('resourceId');
    resourceKind = registerOutput<String?>('resourceKind');
    resourceType = registerOutput<String>('resourceType');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
