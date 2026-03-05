import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_safeguard_args.dart';
import 'system_data_response.dart';

/// Deployment Safeguards
///
/// Uses Azure REST API version 2025-04-02-preview.
///
/// Other available API versions: 2025-04-01, 2025-05-02-preview, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates a DeploymentSafeguards resource with a long running operation.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deploymentSafeguard = new AzureNative.ContainerService.DeploymentSafeguard("deploymentSafeguard", new()
///     {
///         Level = AzureNative.ContainerService.DeploymentSafeguardsLevel.Warn,
///         ResourceUri = "subscriptions/subid1/resourceGroups/rg1/providers/Microsoft.ContainerService/managedClusters/cluster1",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewDeploymentSafeguard(ctx, "deploymentSafeguard", &containerservice.DeploymentSafeguardArgs{
/// 			Level:       pulumi.String(containerservice.DeploymentSafeguardsLevelWarn),
/// 			ResourceUri: pulumi.String("subscriptions/subid1/resourceGroups/rg1/providers/Microsoft.ContainerService/managedClusters/cluster1"),
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
/// import com.pulumi.azurenative.containerservice.DeploymentSafeguard;
/// import com.pulumi.azurenative.containerservice.DeploymentSafeguardArgs;
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
///         var deploymentSafeguard = new DeploymentSafeguard("deploymentSafeguard", DeploymentSafeguardArgs.builder()
///             .level("Warn")
///             .resourceUri("subscriptions/subid1/resourceGroups/rg1/providers/Microsoft.ContainerService/managedClusters/cluster1")
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
/// const deploymentSafeguard = new azure_native.containerservice.DeploymentSafeguard("deploymentSafeguard", {
///     level: azure_native.containerservice.DeploymentSafeguardsLevel.Warn,
///     resourceUri: "subscriptions/subid1/resourceGroups/rg1/providers/Microsoft.ContainerService/managedClusters/cluster1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// deployment_safeguard = azure_native.containerservice.DeploymentSafeguard("deploymentSafeguard",
///     level=azure_native.containerservice.DeploymentSafeguardsLevel.WARN,
///     resource_uri="subscriptions/subid1/resourceGroups/rg1/providers/Microsoft.ContainerService/managedClusters/cluster1")
///
/// ```
///
/// ```yaml
/// resources:
///   deploymentSafeguard:
///     type: azure-native:containerservice:DeploymentSafeguard
///     properties:
///       level: Warn
///       resourceUri: subscriptions/subid1/resourceGroups/rg1/providers/Microsoft.ContainerService/managedClusters/cluster1
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
/// $ pulumi import azure-native:containerservice:DeploymentSafeguard default /{resourceUri}/providers/Microsoft.ContainerService/deploymentSafeguards/default
/// ```
class DeploymentSafeguard extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;
  /// User defined list of namespaces to exclude from Deployment Safeguards. Deployments in these namespaces will not be checked against any safeguards
  late final pulumi.Output<List<String>?> excludedNamespaces;
  /// The deployment safeguards level. Possible values are Warn and Enforce
  late final pulumi.Output<String> level;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning State
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// System defined list of namespaces excluded from Deployment Safeguards. These are determined by the underlying provider (such as AKS), and cannot be changed. Deployments in these namespaces will not be checked
  late final pulumi.Output<List<String>> systemExcludedNamespaces;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DeploymentSafeguard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentSafeguard]. {@macro pulumi_containerservice_deployment_safeguard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentSafeguard(
    String name, {
    DeploymentSafeguardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerservice:DeploymentSafeguard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    excludedNamespaces = registerOutput<List<String>?>('excludedNamespaces');
    level = registerOutput<String>('level');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemExcludedNamespaces = registerOutput<List<String>>('systemExcludedNamespaces');
    type = registerOutput<String>('type');
  }
}
