import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_insights_component_data_volume_cap_response.dart';
import 'component_current_billing_feature_args.dart';

/// An Application Insights component billing features
///
/// Uses Azure REST API version 2015-05-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ComponentCurrentBillingFeaturesUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var componentCurrentBillingFeature = new AzureNative.ApplicationInsights.ComponentCurrentBillingFeature("componentCurrentBillingFeature", new()
///     {
///         CurrentBillingFeatures = new[]
///         {
///             "Basic",
///             "Application Insights Enterprise",
///         },
///         DataVolumeCap = new AzureNative.ApplicationInsights.Inputs.ApplicationInsightsComponentDataVolumeCapArgs
///         {
///             Cap = 100,
///             StopSendNotificationWhenHitCap = true,
///         },
///         ResourceGroupName = "my-resource-group",
///         ResourceName = "my-component",
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
/// 	applicationinsights "github.com/pulumi/pulumi-azure-native-sdk/applicationinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := applicationinsights.NewComponentCurrentBillingFeature(ctx, "componentCurrentBillingFeature", &applicationinsights.ComponentCurrentBillingFeatureArgs{
/// 			CurrentBillingFeatures: pulumi.StringArray{
/// 				pulumi.String("Basic"),
/// 				pulumi.String("Application Insights Enterprise"),
/// 			},
/// 			DataVolumeCap: &applicationinsights.ApplicationInsightsComponentDataVolumeCapArgs{
/// 				Cap:                            pulumi.Float64(100),
/// 				StopSendNotificationWhenHitCap: pulumi.Bool(true),
/// 			},
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
/// 			ResourceName:      pulumi.String("my-component"),
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
/// resource "azure-native_applicationinsights_componentcurrentbillingfeature" "componentCurrentBillingFeature" {
///   current_billing_features = ["Basic", "Application Insights Enterprise"]
///   data_volume_cap = {
///     cap                                 = 100
///     stop_send_notification_when_hit_cap = true
///   }
///   resource_group_name = "my-resource-group"
///   resource_name       = "my-component"
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
/// import com.pulumi.azurenative.applicationinsights.ComponentCurrentBillingFeature;
/// import com.pulumi.azurenative.applicationinsights.ComponentCurrentBillingFeatureArgs;
/// import com.pulumi.azurenative.applicationinsights.inputs.ApplicationInsightsComponentDataVolumeCapArgs;
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
///         var componentCurrentBillingFeature = new ComponentCurrentBillingFeature("componentCurrentBillingFeature", ComponentCurrentBillingFeatureArgs.builder()
///             .currentBillingFeatures(
///                 "Basic",
///                 "Application Insights Enterprise")
///             .dataVolumeCap(ApplicationInsightsComponentDataVolumeCapArgs.builder()
///                 .cap(100.0)
///                 .stopSendNotificationWhenHitCap(true)
///                 .build())
///             .resourceGroupName("my-resource-group")
///             .resourceName("my-component")
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
/// const componentCurrentBillingFeature = new azure_native.applicationinsights.ComponentCurrentBillingFeature("componentCurrentBillingFeature", {
///     currentBillingFeatures: [
///         "Basic",
///         "Application Insights Enterprise",
///     ],
///     dataVolumeCap: {
///         cap: 100,
///         stopSendNotificationWhenHitCap: true,
///     },
///     resourceGroupName: "my-resource-group",
///     resourceName: "my-component",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// component_current_billing_feature = azure_native.applicationinsights.ComponentCurrentBillingFeature("componentCurrentBillingFeature",
///     current_billing_features=[
///         "Basic",
///         "Application Insights Enterprise",
///     ],
///     data_volume_cap={
///         "cap": float(100),
///         "stop_send_notification_when_hit_cap": True,
///     },
///     resource_group_name="my-resource-group",
///     resource_name_="my-component")
///
/// ```
///
/// ```yaml
/// resources:
///   componentCurrentBillingFeature:
///     type: azure-native:applicationinsights:ComponentCurrentBillingFeature
///     properties:
///       currentBillingFeatures:
///         - Basic
///         - Application Insights Enterprise
///       dataVolumeCap:
///         cap: 100
///         stopSendNotificationWhenHitCap: true
///       resourceGroupName: my-resource-group
///       resourceName: my-component
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
/// $ pulumi import azure-native:applicationinsights:ComponentCurrentBillingFeature myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/components/{resourceName}/currentbillingfeatures
/// ```
class ComponentCurrentBillingFeature extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Current enabled pricing plan. When the component is in the Enterprise plan, this will list both 'Basic' and 'Application Insights Enterprise'.
  late final pulumi.Output<List<String>?> currentBillingFeatures;
  /// An Application Insights component daily data volume cap
  late final pulumi.Output<ApplicationInsightsComponentDataVolumeCapResponse?> dataVolumeCap;

  /// Creates a new [ComponentCurrentBillingFeature].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ComponentCurrentBillingFeature]. {@macro pulumi_applicationinsights_component_current_billing_feature_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ComponentCurrentBillingFeature(
    String name, {
    ComponentCurrentBillingFeatureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:applicationinsights:ComponentCurrentBillingFeature',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    currentBillingFeatures = registerOutput<List<String>?>('currentBillingFeatures');
    dataVolumeCap = registerOutput<ApplicationInsightsComponentDataVolumeCapResponse?>('dataVolumeCap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationInsightsComponentDataVolumeCapResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
