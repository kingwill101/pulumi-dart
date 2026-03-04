import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_authorization_args.dart';

/// Authorization in an ExpressRouteCircuit resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create ExpressRouteCircuit Authorization
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var expressRouteCircuitAuthorization = new AzureNative.Network.ExpressRouteCircuitAuthorization("expressRouteCircuitAuthorization", new()
///     {
///         AuthorizationName = "authorizatinName",
///         CircuitName = "circuitName",
///         ResourceGroupName = "rg1",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewExpressRouteCircuitAuthorization(ctx, "expressRouteCircuitAuthorization", &network.ExpressRouteCircuitAuthorizationArgs{
/// 			AuthorizationName: pulumi.String("authorizatinName"),
/// 			CircuitName:       pulumi.String("circuitName"),
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.ExpressRouteCircuitAuthorization;
/// import com.pulumi.azurenative.network.ExpressRouteCircuitAuthorizationArgs;
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
///         var expressRouteCircuitAuthorization = new ExpressRouteCircuitAuthorization("expressRouteCircuitAuthorization", ExpressRouteCircuitAuthorizationArgs.builder()
///             .authorizationName("authorizatinName")
///             .circuitName("circuitName")
///             .resourceGroupName("rg1")
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
/// const expressRouteCircuitAuthorization = new azure_native.network.ExpressRouteCircuitAuthorization("expressRouteCircuitAuthorization", {
///     authorizationName: "authorizatinName",
///     circuitName: "circuitName",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// express_route_circuit_authorization = azure_native.network.ExpressRouteCircuitAuthorization("expressRouteCircuitAuthorization",
///     authorization_name="authorizatinName",
///     circuit_name="circuitName",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   expressRouteCircuitAuthorization:
///     type: azure-native:network:ExpressRouteCircuitAuthorization
///     properties:
///       authorizationName: authorizatinName
///       circuitName: circuitName
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:network:ExpressRouteCircuitAuthorization authorizationName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/expressRouteCircuits/{circuitName}/authorizations/{authorizationName}
/// ```
class ExpressRouteCircuitAuthorizationNetwork extends pulumi.CustomResource {
  /// The authorization key.
  late final pulumi.Output<String?> authorizationKey;

  /// The authorization use status.
  late final pulumi.Output<String?> authorizationUseStatus;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The reference to the ExpressRoute connection resource using the authorization.
  late final pulumi.Output<String> connectionResourceUri;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;

  /// The provisioning state of the authorization resource.
  late final pulumi.Output<String> provisioningState;

  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ExpressRouteCircuitAuthorizationNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressRouteCircuitAuthorizationNetwork]. {@macro pulumi_network_express_route_circuit_authorization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExpressRouteCircuitAuthorizationNetwork(
    String name, {
    ExpressRouteCircuitAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:ExpressRouteCircuitAuthorization',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authorizationKey = registerOutput<String?>('authorizationKey');
    authorizationUseStatus = registerOutput<String?>('authorizationUseStatus');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectionResourceUri = registerOutput<String>('connectionResourceUri');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String?>('name');
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
