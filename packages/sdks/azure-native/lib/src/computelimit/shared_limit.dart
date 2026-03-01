import 'package:pulumi/pulumi.dart' as pulumi;
import 'limit_name_response.dart';
import 'shared_limit_args.dart';
import 'system_data_response.dart';

/// Compute limits shared by the subscription.
///
/// Uses Azure REST API version 2025-08-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a shared limit
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sharedLimit = new AzureNative.ComputeLimit.SharedLimit("sharedLimit", new()
///     {
///         Location = "eastus",
///         Name = "StandardDSv3Family",
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
/// 	computelimit "github.com/pulumi/pulumi-azure-native-sdk/computelimit/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := computelimit.NewSharedLimit(ctx, "sharedLimit", &computelimit.SharedLimitArgs{
/// 			Location: pulumi.String("eastus"),
/// 			Name:     pulumi.String("StandardDSv3Family"),
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
/// import com.pulumi.azurenative.computelimit.SharedLimit;
/// import com.pulumi.azurenative.computelimit.SharedLimitArgs;
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
///         var sharedLimit = new SharedLimit("sharedLimit", SharedLimitArgs.builder()
///             .location("eastus")
///             .name("StandardDSv3Family")
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
/// const sharedLimit = new azure_native.computelimit.SharedLimit("sharedLimit", {
///     location: "eastus",
///     name: "StandardDSv3Family",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// shared_limit = azure_native.computelimit.SharedLimit("sharedLimit",
///     location="eastus",
///     name="StandardDSv3Family")
///
/// ```
///
/// ```yaml
/// resources:
///   sharedLimit:
///     type: azure-native:computelimit:SharedLimit
///     properties:
///       location: eastus
///       name: StandardDSv3Family
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
/// $ pulumi import azure-native:computelimit:SharedLimit StandardDSv3Family /subscriptions/{subscriptionId}/providers/Microsoft.ComputeLimit/locations/{location}/sharedLimits/{name}
/// ```
class SharedLimit extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The maximum permitted usage of the resource.
  late final pulumi.Output<int> limit;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The limit name properties.
  late final pulumi.Output<LimitNameResponse> resourceName;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The quota units, such as Count.
  late final pulumi.Output<String> unit;

  /// Creates a new [SharedLimit].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SharedLimit]. {@macro pulumi_computelimit_shared_limit_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SharedLimit(
    String name, {
    SharedLimitArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:computelimit:SharedLimit',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.limit = registerOutput<int>('limit');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resourceName = registerOutput<LimitNameResponse>('resourceName');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
    this.unit = registerOutput<String>('unit');
  }
}
