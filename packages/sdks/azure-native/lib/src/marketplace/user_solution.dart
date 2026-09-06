import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_response.dart';
import 'system_data_response.dart';
import 'user_solution_args.dart';

/// The Solution data structure
///
/// Uses Azure REST API version 2023-03-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateUserSolution
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var userSolution = new AzureNative.Marketplace.UserSolution("userSolution", new()
///     {
///         SolutionId = "starting_prices_23",
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
/// 	marketplace "github.com/pulumi/pulumi-azure-native-sdk/marketplace/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := marketplace.NewUserSolution(ctx, "userSolution", &marketplace.UserSolutionArgs{
/// 			SolutionId: pulumi.String("starting_prices_23"),
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
/// resource "azure-native_marketplace_usersolution" "userSolution" {
///   solution_id = "starting_prices_23"
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
/// import com.pulumi.azurenative.marketplace.UserSolution;
/// import com.pulumi.azurenative.marketplace.UserSolutionArgs;
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
///         var userSolution = new UserSolution("userSolution", UserSolutionArgs.builder()
///             .solutionId("starting_prices_23")
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
/// const userSolution = new azure_native.marketplace.UserSolution("userSolution", {solutionId: "starting_prices_23"});
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// user_solution = azure_native.marketplace.UserSolution("userSolution", solution_id="starting_prices_23")
///
/// ```
///
/// ```yaml
/// resources:
///   userSolution:
///     type: azure-native:marketplace:UserSolution
///     properties:
///       solutionId: starting_prices_23
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
/// $ pulumi import azure-native:marketplace:UserSolution starting_prices_23 /providers/Microsoft.Marketplace/mysolutions/{solutionId}
/// ```
class UserSolution extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<String?> displayName;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  late final pulumi.Output<List<ProductResponse>?> products;
  /// Metadata pertaining to creation and last modification of the resource
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [UserSolution].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserSolution]. {@macro pulumi_marketplace_user_solution_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserSolution(
    String name, {
    UserSolutionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:marketplace:UserSolution',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    products = registerOutput<List<ProductResponse>?>('products', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProductResponse>(guardedValue, (value) => ProductResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [UserSolution] resource.
  UserSolution.reference(String urn)
    : super(
        'azure-native:marketplace:UserSolution',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    products = registerOutput<List<ProductResponse>?>('products', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProductResponse>(guardedValue, (value) => ProductResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
