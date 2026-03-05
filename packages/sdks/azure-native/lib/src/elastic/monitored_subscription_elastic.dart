import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitored_subscription_args.dart';
import 'subscription_list_response.dart';

/// The request to update subscriptions needed to be monitored by the Elastic monitor resource.
///
/// Uses Azure REST API version 2025-01-15-preview. In version 2.x of the Azure Native provider, it used API version 2024-05-01-preview.
///
/// Other available API versions: 2024-05-01-preview, 2024-06-15-preview, 2024-10-01-preview, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elastic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Monitors_AddMonitoredSubscriptions
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var monitoredSubscription = new AzureNative.Elastic.MonitoredSubscription("monitoredSubscription", new()
///     {
///         ConfigurationName = "default",
///         MonitorName = "myMonitor",
///         ResourceGroupName = "myResourceGroup",
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
/// 	elastic "github.com/pulumi/pulumi-azure-native-sdk/elastic/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elastic.NewMonitoredSubscription(ctx, "monitoredSubscription", &elastic.MonitoredSubscriptionArgs{
/// 			ConfigurationName: pulumi.String("default"),
/// 			MonitorName:       pulumi.String("myMonitor"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.elastic.MonitoredSubscription;
/// import com.pulumi.azurenative.elastic.MonitoredSubscriptionArgs;
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
///         var monitoredSubscription = new MonitoredSubscription("monitoredSubscription", MonitoredSubscriptionArgs.builder()
///             .configurationName("default")
///             .monitorName("myMonitor")
///             .resourceGroupName("myResourceGroup")
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
/// const monitoredSubscription = new azure_native.elastic.MonitoredSubscription("monitoredSubscription", {
///     configurationName: "default",
///     monitorName: "myMonitor",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// monitored_subscription = azure_native.elastic.MonitoredSubscription("monitoredSubscription",
///     configuration_name="default",
///     monitor_name="myMonitor",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   monitoredSubscription:
///     type: azure-native:elastic:MonitoredSubscription
///     properties:
///       configurationName: default
///       monitorName: myMonitor
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:elastic:MonitoredSubscription default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Elastic/monitors/{monitorName}/monitoredSubscriptions/{configurationName}
/// ```
class MonitoredSubscriptionElastic extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Name of the monitored subscription resource.
  late final pulumi.Output<String> name;

  /// The request to update subscriptions needed to be monitored by the Elastic monitor resource.
  late final pulumi.Output<SubscriptionListResponse> properties;

  /// The type of the monitored subscription resource.
  late final pulumi.Output<String> type;

  /// Creates a new [MonitoredSubscriptionElastic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MonitoredSubscriptionElastic]. {@macro pulumi_elastic_monitored_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MonitoredSubscriptionElastic(
    String name, {
    MonitoredSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:elastic:MonitoredSubscription',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SubscriptionListResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SubscriptionListResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
