import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_group_args.dart';
import 'system_data_response.dart';

/// The Client group resource.
///
/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ClientGroups_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var clientGroup = new AzureNative.EventGrid.ClientGroup("clientGroup", new()
///     {
///         ClientGroupName = "exampleClientGroupName1",
///         Description = "This is a test client group",
///         NamespaceName = "exampleNamespaceName1",
///         Query = "attributes.b IN ['a', 'b', 'c']",
///         ResourceGroupName = "examplerg",
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
/// 	eventgrid "github.com/pulumi/pulumi-azure-native-sdk/eventgrid/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventgrid.NewClientGroup(ctx, "clientGroup", &eventgrid.ClientGroupArgs{
/// 			ClientGroupName:   pulumi.String("exampleClientGroupName1"),
/// 			Description:       pulumi.String("This is a test client group"),
/// 			NamespaceName:     pulumi.String("exampleNamespaceName1"),
/// 			Query:             pulumi.String("attributes.b IN ['a', 'b', 'c']"),
/// 			ResourceGroupName: pulumi.String("examplerg"),
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
/// import com.pulumi.azurenative.eventgrid.ClientGroup;
/// import com.pulumi.azurenative.eventgrid.ClientGroupArgs;
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
///         var clientGroup = new ClientGroup("clientGroup", ClientGroupArgs.builder()
///             .clientGroupName("exampleClientGroupName1")
///             .description("This is a test client group")
///             .namespaceName("exampleNamespaceName1")
///             .query("attributes.b IN ['a', 'b', 'c']")
///             .resourceGroupName("examplerg")
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
/// const clientGroup = new azure_native.eventgrid.ClientGroup("clientGroup", {
///     clientGroupName: "exampleClientGroupName1",
///     description: "This is a test client group",
///     namespaceName: "exampleNamespaceName1",
///     query: "attributes.b IN ['a', 'b', 'c']",
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// client_group = azure_native.eventgrid.ClientGroup("clientGroup",
///     client_group_name="exampleClientGroupName1",
///     description="This is a test client group",
///     namespace_name="exampleNamespaceName1",
///     query="attributes.b IN ['a', 'b', 'c']",
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   clientGroup:
///     type: azure-native:eventgrid:ClientGroup
///     properties:
///       clientGroupName: exampleClientGroupName1
///       description: This is a test client group
///       namespaceName: exampleNamespaceName1
///       query: attributes.b IN ['a', 'b', 'c']
///       resourceGroupName: examplerg
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
/// $ pulumi import azure-native:eventgrid:ClientGroup exampleClientGroupName1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/namespaces/{namespaceName}/clientGroups/{clientGroupName}
/// ```
class ClientGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Description for the Client Group resource.
  late final pulumi.Output<String?> description;
  /// Name of the resource.
  late final pulumi.Output<String> name;
  /// Provisioning state of the ClientGroup resource.
  late final pulumi.Output<String> provisioningState;
  /// The grouping query for the clients.
  /// Example : attributes.keyName IN ['a', 'b', 'c'].
  late final pulumi.Output<String?> query;
  /// The system metadata relating to the Event Grid resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ClientGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClientGroup]. {@macro pulumi_eventgrid_client_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClientGroup(
    String name, {
    ClientGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventgrid:ClientGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.query = registerOutput<String?>('query');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
