import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_topic_args.dart';
import 'system_data_response.dart';

/// Domain Topic.
///
/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2022-06-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DomainTopics_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var domainTopic = new AzureNative.EventGrid.DomainTopic("domainTopic", new()
///     {
///         DomainName = "exampledomain1",
///         DomainTopicName = "exampledomaintopic1",
///         ResourceGroupName = "examplerg",
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
/// 	eventgrid "github.com/pulumi/pulumi-azure-native-sdk/eventgrid/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventgrid.NewDomainTopic(ctx, "domainTopic", &eventgrid.DomainTopicArgs{
/// 			DomainName:        pulumi.String("exampledomain1"),
/// 			DomainTopicName:   pulumi.String("exampledomaintopic1"),
/// 			ResourceGroupName: pulumi.String("examplerg"),
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
/// import com.pulumi.azurenative.eventgrid.DomainTopic;
/// import com.pulumi.azurenative.eventgrid.DomainTopicArgs;
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
///         var domainTopic = new DomainTopic("domainTopic", DomainTopicArgs.builder()
///             .domainName("exampledomain1")
///             .domainTopicName("exampledomaintopic1")
///             .resourceGroupName("examplerg")
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
/// const domainTopic = new azure_native.eventgrid.DomainTopic("domainTopic", {
///     domainName: "exampledomain1",
///     domainTopicName: "exampledomaintopic1",
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// domain_topic = azure_native.eventgrid.DomainTopic("domainTopic",
///     domain_name="exampledomain1",
///     domain_topic_name="exampledomaintopic1",
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   domainTopic:
///     type: azure-native:eventgrid:DomainTopic
///     properties:
///       domainName: exampledomain1
///       domainTopicName: exampledomaintopic1
///       resourceGroupName: examplerg
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
/// $ pulumi import azure-native:eventgrid:DomainTopic exampledomaintopic1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/domains/{domainName}/topics/{domainTopicName}
/// ```
class DomainTopic extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Name of the resource.
  late final pulumi.Output<String> name;

  /// Provisioning state of the domain topic.
  late final pulumi.Output<String> provisioningState;

  /// The system metadata relating to the Event Grid resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [DomainTopic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainTopic]. {@macro pulumi_eventgrid_domain_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainTopic(
    String name, {
    DomainTopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:eventgrid:DomainTopic',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
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
