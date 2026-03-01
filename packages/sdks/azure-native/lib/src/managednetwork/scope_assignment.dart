import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_assignment_args.dart';

/// The Managed Network resource
///
/// Uses Azure REST API version 2019-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2019-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ScopeAssignmentsPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scopeAssignment = new AzureNative.ManagedNetwork.ScopeAssignment("scopeAssignment", new()
///     {
///         AssignedManagedNetwork = "/subscriptions/subscriptionA/resourceGroups/myResourceGroup/providers/Microsoft.ManagedNetwork/managedNetworks/myManagedNetwork",
///         Scope = "subscriptions/subscriptionC",
///         ScopeAssignmentName = "subscriptionCAssignment",
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
/// 	managednetwork "github.com/pulumi/pulumi-azure-native-sdk/managednetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managednetwork.NewScopeAssignment(ctx, "scopeAssignment", &managednetwork.ScopeAssignmentArgs{
/// 			AssignedManagedNetwork: pulumi.String("/subscriptions/subscriptionA/resourceGroups/myResourceGroup/providers/Microsoft.ManagedNetwork/managedNetworks/myManagedNetwork"),
/// 			Scope:                  pulumi.String("subscriptions/subscriptionC"),
/// 			ScopeAssignmentName:    pulumi.String("subscriptionCAssignment"),
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
/// import com.pulumi.azurenative.managednetwork.ScopeAssignment;
/// import com.pulumi.azurenative.managednetwork.ScopeAssignmentArgs;
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
///         var scopeAssignment = new ScopeAssignment("scopeAssignment", ScopeAssignmentArgs.builder()
///             .assignedManagedNetwork("/subscriptions/subscriptionA/resourceGroups/myResourceGroup/providers/Microsoft.ManagedNetwork/managedNetworks/myManagedNetwork")
///             .scope("subscriptions/subscriptionC")
///             .scopeAssignmentName("subscriptionCAssignment")
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
/// const scopeAssignment = new azure_native.managednetwork.ScopeAssignment("scopeAssignment", {
///     assignedManagedNetwork: "/subscriptions/subscriptionA/resourceGroups/myResourceGroup/providers/Microsoft.ManagedNetwork/managedNetworks/myManagedNetwork",
///     scope: "subscriptions/subscriptionC",
///     scopeAssignmentName: "subscriptionCAssignment",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scope_assignment = azure_native.managednetwork.ScopeAssignment("scopeAssignment",
///     assigned_managed_network="/subscriptions/subscriptionA/resourceGroups/myResourceGroup/providers/Microsoft.ManagedNetwork/managedNetworks/myManagedNetwork",
///     scope="subscriptions/subscriptionC",
///     scope_assignment_name="subscriptionCAssignment")
///
/// ```
///
/// ```yaml
/// resources:
///   scopeAssignment:
///     type: azure-native:managednetwork:ScopeAssignment
///     properties:
///       assignedManagedNetwork: /subscriptions/subscriptionA/resourceGroups/myResourceGroup/providers/Microsoft.ManagedNetwork/managedNetworks/myManagedNetwork
///       scope: subscriptions/subscriptionC
///       scopeAssignmentName: subscriptionCAssignment
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
/// $ pulumi import azure-native:managednetwork:ScopeAssignment subscriptionCAssignment /{scope}/providers/Microsoft.ManagedNetwork/scopeAssignments/{scopeAssignmentName}
/// ```
class ScopeAssignment extends pulumi.CustomResource {
  /// The managed network ID with scope will be assigned to.
  late final pulumi.Output<String?> assignedManagedNetwork;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the ManagedNetwork resource.
  late final pulumi.Output<String> provisioningState;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  late final pulumi.Output<String> type;

  /// Creates a new [ScopeAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScopeAssignment]. {@macro pulumi_managednetwork_scope_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScopeAssignment(
    String name, {
    ScopeAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managednetwork:ScopeAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assignedManagedNetwork = registerOutput<String?>('assignedManagedNetwork');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.type = registerOutput<String>('type');
  }
}
