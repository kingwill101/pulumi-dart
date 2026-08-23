import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_subscription_args.dart';
import 'system_data_response.dart';

/// Guest subscription that consumes shared compute limits.
///
/// Uses Azure REST API version 2025-08-15.
///
/// Other available API versions: 2026-03-20, 2026-04-30, 2026-06-01, 2026-07-01, 2026-07-31. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native computelimit [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a guest subscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var guestSubscription = new AzureNative.ComputeLimit.GuestSubscription("guestSubscription", new()
///     {
///         GuestSubscriptionId = "11111111-1111-1111-1111-111111111111",
///         Location = "eastus",
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
/// 		_, err := computelimit.NewGuestSubscription(ctx, "guestSubscription", &computelimit.GuestSubscriptionArgs{
/// 			GuestSubscriptionId: pulumi.String("11111111-1111-1111-1111-111111111111"),
/// 			Location:            pulumi.String("eastus"),
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
/// resource "azure-native_computelimit_guestsubscription" "guestSubscription" {
///   guest_subscription_id = "11111111-1111-1111-1111-111111111111"
///   location              = "eastus"
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
/// import com.pulumi.azurenative.computelimit.GuestSubscription;
/// import com.pulumi.azurenative.computelimit.GuestSubscriptionArgs;
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
///         var guestSubscription = new GuestSubscription("guestSubscription", GuestSubscriptionArgs.builder()
///             .guestSubscriptionId("11111111-1111-1111-1111-111111111111")
///             .location("eastus")
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
/// const guestSubscription = new azure_native.computelimit.GuestSubscription("guestSubscription", {
///     guestSubscriptionId: "11111111-1111-1111-1111-111111111111",
///     location: "eastus",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// guest_subscription = azure_native.computelimit.GuestSubscription("guestSubscription",
///     guest_subscription_id="11111111-1111-1111-1111-111111111111",
///     location="eastus")
///
/// ```
///
/// ```yaml
/// resources:
///   guestSubscription:
///     type: azure-native:computelimit:GuestSubscription
///     properties:
///       guestSubscriptionId: 11111111-1111-1111-1111-111111111111
///       location: eastus
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
/// $ pulumi import azure-native:computelimit:GuestSubscription 11111111-1111-1111-1111-111111111111 /subscriptions/{subscriptionId}/providers/Microsoft.ComputeLimit/locations/{location}/guestSubscriptions/{guestSubscriptionId}
/// ```
class GuestSubscription extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GuestSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GuestSubscription]. {@macro pulumi_computelimit_guest_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GuestSubscription(
    String name, {
    GuestSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:computelimit:GuestSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
