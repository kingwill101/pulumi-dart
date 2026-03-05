import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_action_version_args.dart';
import 'system_data_response.dart';

/// Concrete tracked resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2024-07-22-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateEdgeActionVersion
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var edgeActionVersion = new AzureNative.Cdn.EdgeActionVersion("edgeActionVersion", new()
///     {
///         DeploymentType = AzureNative.Cdn.EdgeActionVersionDeploymentType.Zip,
///         EdgeActionName = "edgeAction1",
///         IsDefaultVersion = AzureNative.Cdn.EdgeActionIsDefaultVersion.True,
///         Location = "global",
///         ResourceGroupName = "testrg",
///         Version = "version2",
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
/// 	cdn "github.com/pulumi/pulumi-azure-native-sdk/cdn/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.NewEdgeActionVersion(ctx, "edgeActionVersion", &cdn.EdgeActionVersionArgs{
/// 			DeploymentType:    pulumi.String(cdn.EdgeActionVersionDeploymentTypeZip),
/// 			EdgeActionName:    pulumi.String("edgeAction1"),
/// 			IsDefaultVersion:  pulumi.String(cdn.EdgeActionIsDefaultVersionTrue),
/// 			Location:          pulumi.String("global"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			Version:           pulumi.String("version2"),
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
/// import com.pulumi.azurenative.cdn.EdgeActionVersion;
/// import com.pulumi.azurenative.cdn.EdgeActionVersionArgs;
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
///         var edgeActionVersion = new EdgeActionVersion("edgeActionVersion", EdgeActionVersionArgs.builder()
///             .deploymentType("zip")
///             .edgeActionName("edgeAction1")
///             .isDefaultVersion("True")
///             .location("global")
///             .resourceGroupName("testrg")
///             .version("version2")
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
/// const edgeActionVersion = new azure_native.cdn.EdgeActionVersion("edgeActionVersion", {
///     deploymentType: azure_native.cdn.EdgeActionVersionDeploymentType.Zip,
///     edgeActionName: "edgeAction1",
///     isDefaultVersion: azure_native.cdn.EdgeActionIsDefaultVersion.True,
///     location: "global",
///     resourceGroupName: "testrg",
///     version: "version2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// edge_action_version = azure_native.cdn.EdgeActionVersion("edgeActionVersion",
///     deployment_type=azure_native.cdn.EdgeActionVersionDeploymentType.ZIP,
///     edge_action_name="edgeAction1",
///     is_default_version=azure_native.cdn.EdgeActionIsDefaultVersion.TRUE,
///     location="global",
///     resource_group_name="testrg",
///     version="version2")
///
/// ```
///
/// ```yaml
/// resources:
///   edgeActionVersion:
///     type: azure-native:cdn:EdgeActionVersion
///     properties:
///       deploymentType: zip
///       edgeActionName: edgeAction1
///       isDefaultVersion: True
///       location: global
///       resourceGroupName: testrg
///       version: version2
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
/// $ pulumi import azure-native:cdn:EdgeActionVersion version2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/edgeActions/{edgeActionName}/versions/{version}
/// ```
class EdgeActionVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The deployment type
  late final pulumi.Output<String> deploymentType;

  /// The active state
  late final pulumi.Output<String> isDefaultVersion;

  /// The last update time in UTC for package update
  late final pulumi.Output<String> lastPackageUpdateTime;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The provisioning state
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// The validation status
  late final pulumi.Output<String> validationStatus;

  /// Creates a new [EdgeActionVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EdgeActionVersion]. {@macro pulumi_cdn_edge_action_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EdgeActionVersion(
    String name, {
    EdgeActionVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cdn:EdgeActionVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deploymentType = registerOutput<String>('deploymentType');
    isDefaultVersion = registerOutput<String>('isDefaultVersion');
    lastPackageUpdateTime = registerOutput<String>('lastPackageUpdateTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
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
    validationStatus = registerOutput<String>('validationStatus');
  }
}
