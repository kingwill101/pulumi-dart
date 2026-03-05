import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'virtual_endpoint_args.dart';

/// Pair of virtual endpoints for a server.
///
/// Uses Azure REST API version 2025-08-01. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-01-preview, 2024-03-01-preview, 2024-08-01, 2024-11-01-preview, 2025-01-01-preview, 2025-06-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a pair of virtual endpoints for a server.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualEndpoint = new AzureNative.DBforPostgreSQL.VirtualEndpoint("virtualEndpoint", new()
///     {
///         EndpointType = AzureNative.DBforPostgreSQL.VirtualEndpointType.ReadWrite,
///         Members = new[]
///         {
///             "exampleprimaryserver",
///         },
///         ResourceGroupName = "exampleresourcegroup",
///         ServerName = "exampleserver",
///         VirtualEndpointName = "examplebasename",
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewVirtualEndpoint(ctx, "virtualEndpoint", &dbforpostgresql.VirtualEndpointArgs{
/// 			EndpointType: pulumi.String(dbforpostgresql.VirtualEndpointTypeReadWrite),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("exampleprimaryserver"),
/// 			},
/// 			ResourceGroupName:   pulumi.String("exampleresourcegroup"),
/// 			ServerName:          pulumi.String("exampleserver"),
/// 			VirtualEndpointName: pulumi.String("examplebasename"),
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
/// import com.pulumi.azurenative.dbforpostgresql.VirtualEndpoint;
/// import com.pulumi.azurenative.dbforpostgresql.VirtualEndpointArgs;
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
///         var virtualEndpoint = new VirtualEndpoint("virtualEndpoint", VirtualEndpointArgs.builder()
///             .endpointType("ReadWrite")
///             .members("exampleprimaryserver")
///             .resourceGroupName("exampleresourcegroup")
///             .serverName("exampleserver")
///             .virtualEndpointName("examplebasename")
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
/// const virtualEndpoint = new azure_native.dbforpostgresql.VirtualEndpoint("virtualEndpoint", {
///     endpointType: azure_native.dbforpostgresql.VirtualEndpointType.ReadWrite,
///     members: ["exampleprimaryserver"],
///     resourceGroupName: "exampleresourcegroup",
///     serverName: "exampleserver",
///     virtualEndpointName: "examplebasename",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_endpoint = azure_native.dbforpostgresql.VirtualEndpoint("virtualEndpoint",
///     endpoint_type=azure_native.dbforpostgresql.VirtualEndpointType.READ_WRITE,
///     members=["exampleprimaryserver"],
///     resource_group_name="exampleresourcegroup",
///     server_name="exampleserver",
///     virtual_endpoint_name="examplebasename")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualEndpoint:
///     type: azure-native:dbforpostgresql:VirtualEndpoint
///     properties:
///       endpointType: ReadWrite
///       members:
///         - exampleprimaryserver
///       resourceGroupName: exampleresourcegroup
///       serverName: exampleserver
///       virtualEndpointName: examplebasename
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
/// $ pulumi import azure-native:dbforpostgresql:VirtualEndpoint myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/virtualendpoints/{virtualEndpointName}
/// ```
class VirtualEndpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Type of endpoint for the virtual endpoints.
  late final pulumi.Output<String?> endpointType;

  /// List of servers that one of the virtual endpoints can refer to.
  late final pulumi.Output<List<String>?> members;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// List of virtual endpoints for a server.
  late final pulumi.Output<List<String>> virtualEndpoints;

  /// Creates a new [VirtualEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualEndpoint]. {@macro pulumi_dbforpostgresql_virtual_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualEndpoint(
    String name, {
    VirtualEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:dbforpostgresql:VirtualEndpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    endpointType = registerOutput<String?>('endpointType');
    members = registerOutput<List<String>?>('members');
    this.name = registerOutput<String>('name');
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
    type = registerOutput<String>('type');
    virtualEndpoints = registerOutput<List<String>>('virtualEndpoints');
  }
}
