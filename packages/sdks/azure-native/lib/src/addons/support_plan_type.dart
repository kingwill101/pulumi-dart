import 'package:pulumi/pulumi.dart' as pulumi;
import 'support_plan_type_args.dart';

/// The status of the Canonical support plan.
///
/// Uses Azure REST API version 2018-03-01. In version 2.x of the Azure Native provider, it used API version 2018-03-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SupportPlanTypes_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var supportPlanType = new AzureNative.Addons.SupportPlanType("supportPlanType", new()
///     {
///         PlanTypeName = "Standard",
///         ProviderName = "Canonical",
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
/// 	addons "github.com/pulumi/pulumi-azure-native-sdk/addons/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := addons.NewSupportPlanType(ctx, "supportPlanType", &addons.SupportPlanTypeArgs{
/// 			PlanTypeName: pulumi.String("Standard"),
/// 			ProviderName: pulumi.String("Canonical"),
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
/// import com.pulumi.azurenative.addons.SupportPlanType;
/// import com.pulumi.azurenative.addons.SupportPlanTypeArgs;
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
///         var supportPlanType = new SupportPlanType("supportPlanType", SupportPlanTypeArgs.builder()
///             .planTypeName("Standard")
///             .providerName("Canonical")
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
/// const supportPlanType = new azure_native.addons.SupportPlanType("supportPlanType", {
///     planTypeName: "Standard",
///     providerName: "Canonical",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// support_plan_type = azure_native.addons.SupportPlanType("supportPlanType",
///     plan_type_name="Standard",
///     provider_name="Canonical")
///
/// ```
///
/// ```yaml
/// resources:
///   supportPlanType:
///     type: azure-native:addons:SupportPlanType
///     properties:
///       planTypeName: Standard
///       providerName: Canonical
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
/// $ pulumi import azure-native:addons:SupportPlanType Standard /subscriptions/{subscriptionId}/providers/Microsoft.Addons/supportProviders/{providerName}/supportPlanTypes/{planTypeName}
/// ```
class SupportPlanType extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the Canonical support plan, i.e. "essential", "standard" or "advanced".
  late final pulumi.Output<String> name;

  /// The provisioning state of the resource.
  late final pulumi.Output<String?> provisioningState;

  /// Microsoft.Addons/supportProvider
  late final pulumi.Output<String> type;

  /// Creates a new [SupportPlanType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SupportPlanType]. {@macro pulumi_addons_support_plan_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SupportPlanType(
    String name, {
    SupportPlanTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:addons:SupportPlanType',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String?>('provisioningState');
    type = registerOutput<String>('type');
  }
}
