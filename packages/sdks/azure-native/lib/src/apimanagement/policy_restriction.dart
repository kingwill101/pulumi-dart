import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_restriction_args.dart';

/// Policy restriction contract details.
///
/// Uses Azure REST API version 2024-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreatePolicyRestriction
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policyRestriction = new AzureNative.ApiManagement.PolicyRestriction("policyRestriction", new()
///     {
///         PolicyRestrictionId = "policyRestriction1",
///         RequireBase = AzureNative.ApiManagement.PolicyRestrictionRequireBase.@True,
///         ResourceGroupName = "rg1",
///         Scope = "Sample Path to the policy document.",
///         ServiceName = "apimService1",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewPolicyRestriction(ctx, "policyRestriction", &apimanagement.PolicyRestrictionArgs{
/// 			PolicyRestrictionId: pulumi.String("policyRestriction1"),
/// 			RequireBase:         pulumi.String(apimanagement.PolicyRestrictionRequireBaseTrue),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			Scope:               pulumi.String("Sample Path to the policy document."),
/// 			ServiceName:         pulumi.String("apimService1"),
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
/// import com.pulumi.azurenative.apimanagement.PolicyRestriction;
/// import com.pulumi.azurenative.apimanagement.PolicyRestrictionArgs;
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
///         var policyRestriction = new PolicyRestriction("policyRestriction", PolicyRestrictionArgs.builder()
///             .policyRestrictionId("policyRestriction1")
///             .requireBase("true")
///             .resourceGroupName("rg1")
///             .scope("Sample Path to the policy document.")
///             .serviceName("apimService1")
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
/// const policyRestriction = new azure_native.apimanagement.PolicyRestriction("policyRestriction", {
///     policyRestrictionId: "policyRestriction1",
///     requireBase: azure_native.apimanagement.PolicyRestrictionRequireBase.True,
///     resourceGroupName: "rg1",
///     scope: "Sample Path to the policy document.",
///     serviceName: "apimService1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy_restriction = azure_native.apimanagement.PolicyRestriction("policyRestriction",
///     policy_restriction_id="policyRestriction1",
///     require_base=azure_native.apimanagement.PolicyRestrictionRequireBase.TRUE,
///     resource_group_name="rg1",
///     scope="Sample Path to the policy document.",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   policyRestriction:
///     type: azure-native:apimanagement:PolicyRestriction
///     properties:
///       policyRestrictionId: policyRestriction1
///       requireBase: 'true'
///       resourceGroupName: rg1
///       scope: Sample Path to the policy document.
///       serviceName: apimService1
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
/// $ pulumi import azure-native:apimanagement:PolicyRestriction policyRestrictions1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/policyRestrictions/{policyRestrictionId}
/// ```
class PolicyRestriction extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Indicates if base policy should be enforced for the policy document.
  late final pulumi.Output<String?> requireBase;
  /// Path to the policy document.
  late final pulumi.Output<String?> scope;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PolicyRestriction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyRestriction]. {@macro pulumi_apimanagement_policy_restriction_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyRestriction(
    String name, {
    PolicyRestrictionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:PolicyRestriction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.requireBase = registerOutput<String?>('requireBase');
    this.scope = registerOutput<String?>('scope');
    this.type = registerOutput<String>('type');
  }
}
