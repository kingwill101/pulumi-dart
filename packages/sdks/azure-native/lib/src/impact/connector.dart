import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_args.dart';
import 'connector_properties_response.dart';
import 'system_data_response.dart';

/// A connector is a resource that can be used to proactively report impacts against workloads in Azure to Microsoft.
///
/// Uses Azure REST API version 2024-05-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-05-01-preview.
///
/// Other available API versions: 2025-01-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native impact [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Connectors_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connector = new AzureNative.Impact.Connector("connector", new()
///     {
///         ConnectorName = "testconnector1",
///         Properties = new AzureNative.Impact.Inputs.ConnectorPropertiesArgs
///         {
///             ConnectorType = AzureNative.Impact.Platform.AzureMonitor,
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
/// 	impact "github.com/pulumi/pulumi-azure-native-sdk/impact/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := impact.NewConnector(ctx, "connector", &impact.ConnectorArgs{
/// 			ConnectorName: pulumi.String("testconnector1"),
/// 			Properties: &impact.ConnectorPropertiesArgs{
/// 				ConnectorType: pulumi.String(impact.PlatformAzureMonitor),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_impact_connector" "connector" {
///   connector_name = "testconnector1"
///   properties = {
///     connector_type = "AzureMonitor"
///   }
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
/// import com.pulumi.azurenative.impact.Connector;
/// import com.pulumi.azurenative.impact.ConnectorArgs;
/// import com.pulumi.azurenative.impact.inputs.ConnectorPropertiesArgs;
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
///         var connector = new Connector("connector", ConnectorArgs.builder()
///             .connectorName("testconnector1")
///             .properties(ConnectorPropertiesArgs.builder()
///                 .connectorType("AzureMonitor")
///                 .build())
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
/// const connector = new azure_native.impact.Connector("connector", {
///     connectorName: "testconnector1",
///     properties: {
///         connectorType: azure_native.impact.Platform.AzureMonitor,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connector = azure_native.impact.Connector("connector",
///     connector_name="testconnector1",
///     properties={
///         "connector_type": azure_native.impact.Platform.AZURE_MONITOR,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   connector:
///     type: azure-native:impact:Connector
///     properties:
///       connectorName: testconnector1
///       properties:
///         connectorType: AzureMonitor
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
/// $ pulumi import azure-native:impact:Connector testconnector1 /subscriptions/{subscriptionId}/providers/Microsoft.Impact/connectors/{connectorName}
/// ```
class Connector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ConnectorPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Connector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connector]. {@macro pulumi_impact_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connector(
    String name, {
    ConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:impact:Connector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ConnectorPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
