import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_session_args.dart';

/// The integration account session.
///
/// Uses Azure REST API version 2019-05-01. In version 2.x of the Azure Native provider, it used API version 2019-05-01.
///
/// Other available API versions: 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update an integration account session
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var integrationAccountSession = new AzureNative.Logic.IntegrationAccountSession("integrationAccountSession", new()
///     {
///         Content = new Dictionary<string, object?>
///         {
///             ["controlNumber"] = "1234",
///             ["controlNumberChangedTime"] = "2017-02-21T22:30:11.9923759Z",
///         },
///         IntegrationAccountName = "testia123",
///         ResourceGroupName = "testrg123",
///         SessionName = "testsession123-ICN",
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
/// 	logic "github.com/pulumi/pulumi-azure-native-sdk/logic/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logic.NewIntegrationAccountSession(ctx, "integrationAccountSession", &logic.IntegrationAccountSessionArgs{
/// 			Content: pulumi.Any(map[string]interface{}{
/// 				"controlNumber":            "1234",
/// 				"controlNumberChangedTime": "2017-02-21T22:30:11.9923759Z",
/// 			}),
/// 			IntegrationAccountName: pulumi.String("testia123"),
/// 			ResourceGroupName:      pulumi.String("testrg123"),
/// 			SessionName:            pulumi.String("testsession123-ICN"),
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
/// import com.pulumi.azurenative.logic.IntegrationAccountSession;
/// import com.pulumi.azurenative.logic.IntegrationAccountSessionArgs;
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
///         var integrationAccountSession = new IntegrationAccountSession("integrationAccountSession", IntegrationAccountSessionArgs.builder()
///             .content(Map.ofEntries(
///                 Map.entry("controlNumber", "1234"),
///                 Map.entry("controlNumberChangedTime", "2017-02-21T22:30:11.9923759Z")
///             ))
///             .integrationAccountName("testia123")
///             .resourceGroupName("testrg123")
///             .sessionName("testsession123-ICN")
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
/// const integrationAccountSession = new azure_native.logic.IntegrationAccountSession("integrationAccountSession", {
///     content: {
///         controlNumber: "1234",
///         controlNumberChangedTime: "2017-02-21T22:30:11.9923759Z",
///     },
///     integrationAccountName: "testia123",
///     resourceGroupName: "testrg123",
///     sessionName: "testsession123-ICN",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// integration_account_session = azure_native.logic.IntegrationAccountSession("integrationAccountSession",
///     content={
///         "controlNumber": "1234",
///         "controlNumberChangedTime": "2017-02-21T22:30:11.9923759Z",
///     },
///     integration_account_name="testia123",
///     resource_group_name="testrg123",
///     session_name="testsession123-ICN")
///
/// ```
///
/// ```yaml
/// resources:
///   integrationAccountSession:
///     type: azure-native:logic:IntegrationAccountSession
///     properties:
///       content:
///         controlNumber: '1234'
///         controlNumberChangedTime: 2017-02-21T22:30:11.9923759Z
///       integrationAccountName: testia123
///       resourceGroupName: testrg123
///       sessionName: testsession123-ICN
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
/// $ pulumi import azure-native:logic:IntegrationAccountSession testsession123-ICN /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/sessions/{sessionName}
/// ```
class IntegrationAccountSession extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The changed time.
  late final pulumi.Output<String> changedTime;
  /// The session content.
  late final pulumi.Output<dynamic> content;
  /// The created time.
  late final pulumi.Output<String> createdTime;
  /// The resource location.
  late final pulumi.Output<String?> location;
  /// Gets the resource name.
  late final pulumi.Output<String> name;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Gets the resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IntegrationAccountSession].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationAccountSession]. {@macro pulumi_logic_integration_account_session_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationAccountSession(
    String name, {
    IntegrationAccountSessionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:logic:IntegrationAccountSession',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    changedTime = registerOutput<String>('changedTime');
    content = registerOutput<dynamic>('content');
    createdTime = registerOutput<String>('createdTime');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
