import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_connection_authorization_rule_args.dart';
import 'system_data_response.dart';

/// Single item in a List or Get AuthorizationRule operation
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2021-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native relay [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RelayHybridConnectionAuthorizationRuleCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hybridConnectionAuthorizationRule = new AzureNative.Relay.HybridConnectionAuthorizationRule("hybridConnectionAuthorizationRule", new()
///     {
///         AuthorizationRuleName = "example-RelayAuthRules-01",
///         HybridConnectionName = "example-Relay-Hybrid-01",
///         NamespaceName = "example-RelayNamespace-01",
///         ResourceGroupName = "resourcegroup",
///         Rights = new[]
///         {
///             AzureNative.Relay.AccessRights.Listen,
///             AzureNative.Relay.AccessRights.Send,
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
/// 	relay "github.com/pulumi/pulumi-azure-native-sdk/relay/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := relay.NewHybridConnectionAuthorizationRule(ctx, "hybridConnectionAuthorizationRule", &relay.HybridConnectionAuthorizationRuleArgs{
/// 			AuthorizationRuleName: pulumi.String("example-RelayAuthRules-01"),
/// 			HybridConnectionName:  pulumi.String("example-Relay-Hybrid-01"),
/// 			NamespaceName:         pulumi.String("example-RelayNamespace-01"),
/// 			ResourceGroupName:     pulumi.String("resourcegroup"),
/// 			Rights: pulumi.StringArray{
/// 				pulumi.String(relay.AccessRightsListen),
/// 				pulumi.String(relay.AccessRightsSend),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.relay.HybridConnectionAuthorizationRule;
/// import com.pulumi.azurenative.relay.HybridConnectionAuthorizationRuleArgs;
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
///         var hybridConnectionAuthorizationRule = new HybridConnectionAuthorizationRule("hybridConnectionAuthorizationRule", HybridConnectionAuthorizationRuleArgs.builder()
///             .authorizationRuleName("example-RelayAuthRules-01")
///             .hybridConnectionName("example-Relay-Hybrid-01")
///             .namespaceName("example-RelayNamespace-01")
///             .resourceGroupName("resourcegroup")
///             .rights(
///                 "Listen",
///                 "Send")
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
/// const hybridConnectionAuthorizationRule = new azure_native.relay.HybridConnectionAuthorizationRule("hybridConnectionAuthorizationRule", {
///     authorizationRuleName: "example-RelayAuthRules-01",
///     hybridConnectionName: "example-Relay-Hybrid-01",
///     namespaceName: "example-RelayNamespace-01",
///     resourceGroupName: "resourcegroup",
///     rights: [
///         azure_native.relay.AccessRights.Listen,
///         azure_native.relay.AccessRights.Send,
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hybrid_connection_authorization_rule = azure_native.relay.HybridConnectionAuthorizationRule("hybridConnectionAuthorizationRule",
///     authorization_rule_name="example-RelayAuthRules-01",
///     hybrid_connection_name="example-Relay-Hybrid-01",
///     namespace_name="example-RelayNamespace-01",
///     resource_group_name="resourcegroup",
///     rights=[
///         azure_native.relay.AccessRights.LISTEN,
///         azure_native.relay.AccessRights.SEND,
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   hybridConnectionAuthorizationRule:
///     type: azure-native:relay:HybridConnectionAuthorizationRule
///     properties:
///       authorizationRuleName: example-RelayAuthRules-01
///       hybridConnectionName: example-Relay-Hybrid-01
///       namespaceName: example-RelayNamespace-01
///       resourceGroupName: resourcegroup
///       rights:
///         - Listen
///         - Send
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
/// $ pulumi import azure-native:relay:HybridConnectionAuthorizationRule example-RelayAuthRules-01 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Relay/namespaces/{namespaceName}/hybridConnections/{hybridConnectionName}/authorizationRules/{authorizationRuleName}
/// ```
class HybridConnectionAuthorizationRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The rights associated with the rule.
  late final pulumi.Output<List<String>> rights;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HybridConnectionAuthorizationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HybridConnectionAuthorizationRule]. {@macro pulumi_relay_hybrid_connection_authorization_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HybridConnectionAuthorizationRule(
    String name, {
    HybridConnectionAuthorizationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:relay:HybridConnectionAuthorizationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.rights = registerOutput<List<String>>('rights');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
