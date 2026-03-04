import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_fragment_args.dart';

/// Policy fragment contract details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreatePolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policyFragment = new AzureNative.ApiManagement.PolicyFragment("policyFragment", new()
///     {
///         Description = "A policy fragment example",
///         Format = AzureNative.ApiManagement.PolicyFragmentContentFormat.Xml,
///         Id = "policyFragment1",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Value = "<fragment><json-to-xml apply=\"always\" consider-accept-header=\"false\" /></fragment>",
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
/// 		_, err := apimanagement.NewPolicyFragment(ctx, "policyFragment", &apimanagement.PolicyFragmentArgs{
/// 			Description:       pulumi.String("A policy fragment example"),
/// 			Format:            pulumi.String(apimanagement.PolicyFragmentContentFormatXml),
/// 			Id:                pulumi.String("policyFragment1"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Value:             pulumi.String("<fragment><json-to-xml apply=\"always\" consider-accept-header=\"false\" /></fragment>"),
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
/// import com.pulumi.azurenative.apimanagement.PolicyFragment;
/// import com.pulumi.azurenative.apimanagement.PolicyFragmentArgs;
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
///         var policyFragment = new PolicyFragment("policyFragment", PolicyFragmentArgs.builder()
///             .description("A policy fragment example")
///             .format("xml")
///             .id("policyFragment1")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .value("<fragment><json-to-xml apply=\"always\" consider-accept-header=\"false\" /></fragment>")
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
/// const policyFragment = new azure_native.apimanagement.PolicyFragment("policyFragment", {
///     description: "A policy fragment example",
///     format: azure_native.apimanagement.PolicyFragmentContentFormat.Xml,
///     id: "policyFragment1",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     value: "<fragment><json-to-xml apply=\"always\" consider-accept-header=\"false\" /></fragment>",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy_fragment = azure_native.apimanagement.PolicyFragment("policyFragment",
///     description="A policy fragment example",
///     format=azure_native.apimanagement.PolicyFragmentContentFormat.XML,
///     id="policyFragment1",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     value="<fragment><json-to-xml apply=\"always\" consider-accept-header=\"false\" /></fragment>")
///
/// ```
///
/// ```yaml
/// resources:
///   policyFragment:
///     type: azure-native:apimanagement:PolicyFragment
///     properties:
///       description: A policy fragment example
///       format: xml
///       id: policyFragment1
///       resourceGroupName: rg1
///       serviceName: apimService1
///       value: <fragment><json-to-xml apply="always" consider-accept-header="false" /></fragment>
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
/// $ pulumi import azure-native:apimanagement:PolicyFragment policyFragment1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/policyFragments/{id}
/// ```
class PolicyFragment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Policy fragment description.
  late final pulumi.Output<String?> description;

  /// Format of the policy fragment content.
  late final pulumi.Output<String?> format;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Contents of the policy fragment.
  late final pulumi.Output<String> value;

  /// Creates a new [PolicyFragment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyFragment]. {@macro pulumi_apimanagement_policy_fragment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyFragment(
    String name, {
    PolicyFragmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:apimanagement:PolicyFragment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    format = registerOutput<String?>('format');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    value = registerOutput<String>('value');
  }
}
