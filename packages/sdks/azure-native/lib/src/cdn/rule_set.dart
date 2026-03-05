import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_set_args.dart';
import 'system_data_response.dart';

/// Friendly RuleSet name mapping to the any RuleSet or secret related information.
///
/// Uses Azure REST API version 2025-06-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RuleSets_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ruleSet = new AzureNative.Cdn.RuleSet("ruleSet", new()
///     {
///         ProfileName = "profile1",
///         ResourceGroupName = "RG",
///         RuleSetName = "ruleSet1",
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
/// 	cdn "github.com/pulumi/pulumi-azure-native-sdk/cdn/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.NewRuleSet(ctx, "ruleSet", &cdn.RuleSetArgs{
/// 			ProfileName:       pulumi.String("profile1"),
/// 			ResourceGroupName: pulumi.String("RG"),
/// 			RuleSetName:       pulumi.String("ruleSet1"),
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
/// import com.pulumi.azurenative.cdn.RuleSet;
/// import com.pulumi.azurenative.cdn.RuleSetArgs;
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
///         var ruleSet = new RuleSet("ruleSet", RuleSetArgs.builder()
///             .profileName("profile1")
///             .resourceGroupName("RG")
///             .ruleSetName("ruleSet1")
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
/// const ruleSet = new azure_native.cdn.RuleSet("ruleSet", {
///     profileName: "profile1",
///     resourceGroupName: "RG",
///     ruleSetName: "ruleSet1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rule_set = azure_native.cdn.RuleSet("ruleSet",
///     profile_name="profile1",
///     resource_group_name="RG",
///     rule_set_name="ruleSet1")
///
/// ```
///
/// ```yaml
/// resources:
///   ruleSet:
///     type: azure-native:cdn:RuleSet
///     properties:
///       profileName: profile1
///       resourceGroupName: RG
///       ruleSetName: ruleSet1
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
/// $ pulumi import azure-native:cdn:RuleSet ruleSet1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/ruleSets/{ruleSetName}
/// ```
class RuleSet extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<String> deploymentStatus;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The name of the profile which holds the rule set.
  late final pulumi.Output<String> profileName;

  /// Provisioning status
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RuleSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuleSet]. {@macro pulumi_cdn_rule_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuleSet(
    String name, {
    RuleSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cdn:RuleSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deploymentStatus = registerOutput<String>('deploymentStatus');
    this.name = registerOutput<String>('name');
    profileName = registerOutput<String>('profileName');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
