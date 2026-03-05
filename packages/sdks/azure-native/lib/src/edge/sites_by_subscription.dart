import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_properties_response.dart';
import 'sites_by_subscription_args.dart';
import 'system_data_response.dart';

/// Site as ARM Resource
///
/// Uses Azure REST API version 2024-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-02-01-preview.
///
/// Other available API versions: 2025-03-01-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Site Subscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sitesBySubscription = new AzureNative.Edge.SitesBySubscription("sitesBySubscription", new()
///     {
///         Properties = new AzureNative.Edge.Inputs.SitePropertiesArgs
///         {
///             AddressResourceId = "/subscriptions/680d0dad-59aa-4464-3df3-b34b2b42738c/resourceGroups/us-site-rg/providers/Microsoft.EdgeOrder/addresses/12343213",
///             Description = "string",
///             DisplayName = "string",
///         },
///         SiteName = "string",
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
/// 	edge "github.com/pulumi/pulumi-azure-native-sdk/edge/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := edge.NewSitesBySubscription(ctx, "sitesBySubscription", &edge.SitesBySubscriptionArgs{
/// 			Properties: &edge.SitePropertiesArgs{
/// 				AddressResourceId: pulumi.String("/subscriptions/680d0dad-59aa-4464-3df3-b34b2b42738c/resourceGroups/us-site-rg/providers/Microsoft.EdgeOrder/addresses/12343213"),
/// 				Description:       pulumi.String("string"),
/// 				DisplayName:       pulumi.String("string"),
/// 			},
/// 			SiteName: pulumi.String("string"),
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
/// import com.pulumi.azurenative.edge.SitesBySubscription;
/// import com.pulumi.azurenative.edge.SitesBySubscriptionArgs;
/// import com.pulumi.azurenative.edge.inputs.SitePropertiesArgs;
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
///         var sitesBySubscription = new SitesBySubscription("sitesBySubscription", SitesBySubscriptionArgs.builder()
///             .properties(SitePropertiesArgs.builder()
///                 .addressResourceId("/subscriptions/680d0dad-59aa-4464-3df3-b34b2b42738c/resourceGroups/us-site-rg/providers/Microsoft.EdgeOrder/addresses/12343213")
///                 .description("string")
///                 .displayName("string")
///                 .build())
///             .siteName("string")
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
/// const sitesBySubscription = new azure_native.edge.SitesBySubscription("sitesBySubscription", {
///     properties: {
///         addressResourceId: "/subscriptions/680d0dad-59aa-4464-3df3-b34b2b42738c/resourceGroups/us-site-rg/providers/Microsoft.EdgeOrder/addresses/12343213",
///         description: "string",
///         displayName: "string",
///     },
///     siteName: "string",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sites_by_subscription = azure_native.edge.SitesBySubscription("sitesBySubscription",
///     properties={
///         "address_resource_id": "/subscriptions/680d0dad-59aa-4464-3df3-b34b2b42738c/resourceGroups/us-site-rg/providers/Microsoft.EdgeOrder/addresses/12343213",
///         "description": "string",
///         "display_name": "string",
///     },
///     site_name="string")
///
/// ```
///
/// ```yaml
/// resources:
///   sitesBySubscription:
///     type: azure-native:edge:SitesBySubscription
///     properties:
///       properties:
///         addressResourceId: /subscriptions/680d0dad-59aa-4464-3df3-b34b2b42738c/resourceGroups/us-site-rg/providers/Microsoft.EdgeOrder/addresses/12343213
///         description: string
///         displayName: string
///       siteName: string
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
/// $ pulumi import azure-native:edge:SitesBySubscription myresource1 /subscriptions/{subscriptionId}/providers/Microsoft.Edge/sites/{siteName}
/// ```
class SitesBySubscription extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<SitePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SitesBySubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SitesBySubscription]. {@macro pulumi_edge_sites_by_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SitesBySubscription(
    String name, {
    SitesBySubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:edge:SitesBySubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SitePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SitePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
