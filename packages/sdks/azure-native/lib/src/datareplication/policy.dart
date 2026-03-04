import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_model_properties_response.dart';
import 'policy_model_response_system_data.dart';

/// Policy model.
///
/// Uses Azure REST API version 2021-02-16-preview. In version 2.x of the Azure Native provider, it used API version 2021-02-16-preview.
///
/// Other available API versions: 2024-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datareplication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Policy_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new AzureNative.DataReplication.Policy("policy", new()
///     {
///         PolicyName = "fafqwc",
///         Properties = new AzureNative.DataReplication.Inputs.PolicyModelPropertiesArgs
///         {
///             CustomProperties =
///             {
///                 { "instanceType", "PolicyModelCustomProperties" },
///             },
///         },
///         ResourceGroupName = "rgrecoveryservicesdatareplication",
///         VaultName = "4",
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
/// 	datareplication "github.com/pulumi/pulumi-azure-native-sdk/datareplication/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datareplication.NewPolicy(ctx, "policy", &datareplication.PolicyArgs{
/// 			PolicyName: pulumi.String("fafqwc"),
/// 			Properties: &datareplication.PolicyModelPropertiesArgs{
/// 				CustomProperties: pulumi.Any{
/// 					InstanceType: pulumi.String("PolicyModelCustomProperties"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgrecoveryservicesdatareplication"),
/// 			VaultName:         pulumi.String("4"),
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
/// import com.pulumi.azurenative.datareplication.Policy;
/// import com.pulumi.azurenative.datareplication.PolicyArgs;
/// import com.pulumi.azurenative.datareplication.inputs.PolicyModelPropertiesArgs;
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
///         var policy = new Policy("policy", PolicyArgs.builder()
///             .policyName("fafqwc")
///             .properties(PolicyModelPropertiesArgs.builder()
///                 .customProperties(Map.of("instanceType", "PolicyModelCustomProperties"))
///                 .build())
///             .resourceGroupName("rgrecoveryservicesdatareplication")
///             .vaultName("4")
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
/// const policy = new azure_native.datareplication.Policy("policy", {
///     policyName: "fafqwc",
///     properties: {
///         customProperties: {
///             instanceType: "PolicyModelCustomProperties",
///         },
///     },
///     resourceGroupName: "rgrecoveryservicesdatareplication",
///     vaultName: "4",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy = azure_native.datareplication.Policy("policy",
///     policy_name="fafqwc",
///     properties={
///         "custom_properties": {
///             "instance_type": "PolicyModelCustomProperties",
///         },
///     },
///     resource_group_name="rgrecoveryservicesdatareplication",
///     vault_name="4")
///
/// ```
///
/// ```yaml
/// resources:
///   policy:
///     type: azure-native:datareplication:Policy
///     properties:
///       policyName: fafqwc
///       properties:
///         customProperties:
///           instanceType: PolicyModelCustomProperties
///       resourceGroupName: rgrecoveryservicesdatareplication
///       vaultName: '4'
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
/// $ pulumi import azure-native:datareplication:Policy ocmty /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataReplication/replicationVaults/{vaultName}/replicationPolicies/{policyName}
/// ```
class Policy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Gets or sets the name of the resource.
  late final pulumi.Output<String> name;

  /// Policy model properties.
  late final pulumi.Output<PolicyModelPropertiesResponse> properties;
  late final pulumi.Output<PolicyModelResponseSystemData> systemData;

  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_datareplication_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(String name, {PolicyArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:datareplication:Policy',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PolicyModelPropertiesResponse>('properties');
    systemData = registerOutput<PolicyModelResponseSystemData>('systemData');
    type = registerOutput<String>('type');
  }
}
