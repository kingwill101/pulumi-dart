import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_args.dart';
import 'system_data_response.dart';

/// ExpressRoute Circuit Authorization
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Authorizations_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var authorization = new AzureNative.AVS.Authorization("authorization", new()
///     {
///         AuthorizationName = "authorization1",
///         PrivateCloudName = "cloud1",
///         ResourceGroupName = "group1",
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
/// 	avs "github.com/pulumi/pulumi-azure-native-sdk/avs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := avs.NewAuthorization(ctx, "authorization", &avs.AuthorizationArgs{
/// 			AuthorizationName: pulumi.String("authorization1"),
/// 			PrivateCloudName:  pulumi.String("cloud1"),
/// 			ResourceGroupName: pulumi.String("group1"),
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
/// resource "azure-native_avs_authorization" "authorization" {
///   authorization_name  = "authorization1"
///   private_cloud_name  = "cloud1"
///   resource_group_name = "group1"
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
/// import com.pulumi.azurenative.avs.Authorization;
/// import com.pulumi.azurenative.avs.AuthorizationArgs;
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
///         var authorization = new Authorization("authorization", AuthorizationArgs.builder()
///             .authorizationName("authorization1")
///             .privateCloudName("cloud1")
///             .resourceGroupName("group1")
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
/// const authorization = new azure_native.avs.Authorization("authorization", {
///     authorizationName: "authorization1",
///     privateCloudName: "cloud1",
///     resourceGroupName: "group1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// authorization = azure_native.avs.Authorization("authorization",
///     authorization_name="authorization1",
///     private_cloud_name="cloud1",
///     resource_group_name="group1")
///
/// ```
///
/// ```yaml
/// resources:
///   authorization:
///     type: azure-native:avs:Authorization
///     properties:
///       authorizationName: authorization1
///       privateCloudName: cloud1
///       resourceGroupName: group1
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
/// $ pulumi import azure-native:avs:Authorization authorization1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/authorizations/{authorizationName}
/// ```
class Authorization extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The ID of the ExpressRoute Circuit Authorization
  late final pulumi.Output<String> expressRouteAuthorizationId;
  /// The key of the ExpressRoute Circuit Authorization
  late final pulumi.Output<String> expressRouteAuthorizationKey;
  /// The ID of the ExpressRoute Circuit
  late final pulumi.Output<String?> expressRouteId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The state of the ExpressRoute Circuit Authorization provisioning
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Authorization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Authorization]. {@macro pulumi_avs_authorization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Authorization(
    String name, {
    AuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:avs:Authorization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    expressRouteAuthorizationId = registerOutput<String>('expressRouteAuthorizationId');
    expressRouteAuthorizationKey = registerOutput<String>('expressRouteAuthorizationKey');
    expressRouteId = registerOutput<String?>('expressRouteId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
