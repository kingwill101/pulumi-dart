import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_group_args.dart';
import 'system_data_response.dart';
import 'throttling_policy_response.dart';

/// The Application Group object
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01-preview.
///
/// Other available API versions: 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApplicationGroupCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var applicationGroup = new AzureNative.EventHub.ApplicationGroup("applicationGroup", new()
///     {
///         ApplicationGroupName = "appGroup1",
///         ClientAppGroupIdentifier = "SASKeyName=KeyName",
///         IsEnabled = true,
///         NamespaceName = "contoso-ua-test-eh-system-1",
///         Policies = new[]
///         {
///             new AzureNative.EventHub.Inputs.ThrottlingPolicyArgs
///             {
///                 MetricId = AzureNative.EventHub.MetricId.IncomingMessages,
///                 Name = "ThrottlingPolicy1",
///                 RateLimitThreshold = 7912,
///                 Type = "ThrottlingPolicy",
///             },
///             new AzureNative.EventHub.Inputs.ThrottlingPolicyArgs
///             {
///                 MetricId = AzureNative.EventHub.MetricId.IncomingBytes,
///                 Name = "ThrottlingPolicy2",
///                 RateLimitThreshold = 3951729,
///                 Type = "ThrottlingPolicy",
///             },
///             new AzureNative.EventHub.Inputs.ThrottlingPolicyArgs
///             {
///                 MetricId = AzureNative.EventHub.MetricId.OutgoingBytes,
///                 Name = "ThrottlingPolicy3",
///                 RateLimitThreshold = 245175,
///                 Type = "ThrottlingPolicy",
///             },
///         },
///         ResourceGroupName = "contosotest",
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
/// 	eventhub "github.com/pulumi/pulumi-azure-native-sdk/eventhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventhub.NewApplicationGroup(ctx, "applicationGroup", &eventhub.ApplicationGroupArgs{
/// 			ApplicationGroupName:     pulumi.String("appGroup1"),
/// 			ClientAppGroupIdentifier: pulumi.String("SASKeyName=KeyName"),
/// 			IsEnabled:                pulumi.Bool(true),
/// 			NamespaceName:            pulumi.String("contoso-ua-test-eh-system-1"),
/// 			Policies: eventhub.ThrottlingPolicyArray{
/// 				&eventhub.ThrottlingPolicyArgs{
/// 					MetricId:           pulumi.String(eventhub.MetricIdIncomingMessages),
/// 					Name:               pulumi.String("ThrottlingPolicy1"),
/// 					RateLimitThreshold: pulumi.Float64(7912),
/// 					Type:               pulumi.String("ThrottlingPolicy"),
/// 				},
/// 				&eventhub.ThrottlingPolicyArgs{
/// 					MetricId:           pulumi.String(eventhub.MetricIdIncomingBytes),
/// 					Name:               pulumi.String("ThrottlingPolicy2"),
/// 					RateLimitThreshold: pulumi.Float64(3951729),
/// 					Type:               pulumi.String("ThrottlingPolicy"),
/// 				},
/// 				&eventhub.ThrottlingPolicyArgs{
/// 					MetricId:           pulumi.String(eventhub.MetricIdOutgoingBytes),
/// 					Name:               pulumi.String("ThrottlingPolicy3"),
/// 					RateLimitThreshold: pulumi.Float64(245175),
/// 					Type:               pulumi.String("ThrottlingPolicy"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("contosotest"),
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
/// resource "azure-native_eventhub_applicationgroup" "applicationGroup" {
///   application_group_name      = "appGroup1"
///   client_app_group_identifier = "SASKeyName=KeyName"
///   is_enabled                  = true
///   namespace_name              = "contoso-ua-test-eh-system-1"
///   policies {
///     metric_id            = "IncomingMessages"
///     name                 = "ThrottlingPolicy1"
///     rate_limit_threshold = 7912
///     type                 = "ThrottlingPolicy"
///   }
///   policies {
///     metric_id            = "IncomingBytes"
///     name                 = "ThrottlingPolicy2"
///     rate_limit_threshold = 3951729
///     type                 = "ThrottlingPolicy"
///   }
///   policies {
///     metric_id            = "OutgoingBytes"
///     name                 = "ThrottlingPolicy3"
///     rate_limit_threshold = 245175
///     type                 = "ThrottlingPolicy"
///   }
///   resource_group_name = "contosotest"
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
/// import com.pulumi.azurenative.eventhub.ApplicationGroup;
/// import com.pulumi.azurenative.eventhub.ApplicationGroupArgs;
/// import com.pulumi.azurenative.eventhub.inputs.ThrottlingPolicyArgs;
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
///         var applicationGroup = new ApplicationGroup("applicationGroup", ApplicationGroupArgs.builder()
///             .applicationGroupName("appGroup1")
///             .clientAppGroupIdentifier("SASKeyName=KeyName")
///             .isEnabled(true)
///             .namespaceName("contoso-ua-test-eh-system-1")
///             .policies(
///                 ThrottlingPolicyArgs.builder()
///                     .metricId("IncomingMessages")
///                     .name("ThrottlingPolicy1")
///                     .rateLimitThreshold(7912.0)
///                     .type("ThrottlingPolicy")
///                     .build(),
///                 ThrottlingPolicyArgs.builder()
///                     .metricId("IncomingBytes")
///                     .name("ThrottlingPolicy2")
///                     .rateLimitThreshold(3951729.0)
///                     .type("ThrottlingPolicy")
///                     .build(),
///                 ThrottlingPolicyArgs.builder()
///                     .metricId("OutgoingBytes")
///                     .name("ThrottlingPolicy3")
///                     .rateLimitThreshold(245175.0)
///                     .type("ThrottlingPolicy")
///                     .build())
///             .resourceGroupName("contosotest")
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
/// const applicationGroup = new azure_native.eventhub.ApplicationGroup("applicationGroup", {
///     applicationGroupName: "appGroup1",
///     clientAppGroupIdentifier: "SASKeyName=KeyName",
///     isEnabled: true,
///     namespaceName: "contoso-ua-test-eh-system-1",
///     policies: [
///         {
///             metricId: azure_native.eventhub.MetricId.IncomingMessages,
///             name: "ThrottlingPolicy1",
///             rateLimitThreshold: 7912,
///             type: "ThrottlingPolicy",
///         },
///         {
///             metricId: azure_native.eventhub.MetricId.IncomingBytes,
///             name: "ThrottlingPolicy2",
///             rateLimitThreshold: 3951729,
///             type: "ThrottlingPolicy",
///         },
///         {
///             metricId: azure_native.eventhub.MetricId.OutgoingBytes,
///             name: "ThrottlingPolicy3",
///             rateLimitThreshold: 245175,
///             type: "ThrottlingPolicy",
///         },
///     ],
///     resourceGroupName: "contosotest",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// application_group = azure_native.eventhub.ApplicationGroup("applicationGroup",
///     application_group_name="appGroup1",
///     client_app_group_identifier="SASKeyName=KeyName",
///     is_enabled=True,
///     namespace_name="contoso-ua-test-eh-system-1",
///     policies=[
///         {
///             "metric_id": azure_native.eventhub.MetricId.INCOMING_MESSAGES,
///             "name": "ThrottlingPolicy1",
///             "rate_limit_threshold": float(7912),
///             "type": "ThrottlingPolicy",
///         },
///         {
///             "metric_id": azure_native.eventhub.MetricId.INCOMING_BYTES,
///             "name": "ThrottlingPolicy2",
///             "rate_limit_threshold": float(3951729),
///             "type": "ThrottlingPolicy",
///         },
///         {
///             "metric_id": azure_native.eventhub.MetricId.OUTGOING_BYTES,
///             "name": "ThrottlingPolicy3",
///             "rate_limit_threshold": float(245175),
///             "type": "ThrottlingPolicy",
///         },
///     ],
///     resource_group_name="contosotest")
///
/// ```
///
/// ```yaml
/// resources:
///   applicationGroup:
///     type: azure-native:eventhub:ApplicationGroup
///     properties:
///       applicationGroupName: appGroup1
///       clientAppGroupIdentifier: SASKeyName=KeyName
///       isEnabled: true
///       namespaceName: contoso-ua-test-eh-system-1
///       policies:
///         - metricId: IncomingMessages
///           name: ThrottlingPolicy1
///           rateLimitThreshold: 7912
///           type: ThrottlingPolicy
///         - metricId: IncomingBytes
///           name: ThrottlingPolicy2
///           rateLimitThreshold: 3.951729e+06
///           type: ThrottlingPolicy
///         - metricId: OutgoingBytes
///           name: ThrottlingPolicy3
///           rateLimitThreshold: 245175
///           type: ThrottlingPolicy
///       resourceGroupName: contosotest
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
/// $ pulumi import azure-native:eventhub:ApplicationGroup appGroup1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/applicationGroups/{applicationGroupName}
/// ```
class ApplicationGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The Unique identifier for application group.Supports SAS(SASKeyName=KeyName) or AAD(AADAppID=Guid)
  late final pulumi.Output<String> clientAppGroupIdentifier;
  /// Determines if Application Group is allowed to create connection with namespace or not. Once the isEnabled is set to false, all the existing connections of application group gets dropped and no new connections will be allowed
  late final pulumi.Output<bool?> isEnabled;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of group policies that define the behavior of application group. The policies can support resource governance scenarios such as limiting ingress or egress traffic.
  late final pulumi.Output<List<ThrottlingPolicyResponse>?> policies;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  late final pulumi.Output<String> type;

  /// Creates a new [ApplicationGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationGroup]. {@macro pulumi_eventhub_application_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationGroup(
    String name, {
    ApplicationGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventhub:ApplicationGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientAppGroupIdentifier = registerOutput<String>('clientAppGroupIdentifier');
    isEnabled = registerOutput<bool?>('isEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policies = registerOutput<List<ThrottlingPolicyResponse>?>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ThrottlingPolicyResponse>(guardedValue, (value) => ThrottlingPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ApplicationGroup] resource.
  ApplicationGroup.reference(String urn)
    : super(
        'azure-native:eventhub:ApplicationGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientAppGroupIdentifier = registerOutput<String>('clientAppGroupIdentifier');
    isEnabled = registerOutput<bool?>('isEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policies = registerOutput<List<ThrottlingPolicyResponse>?>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ThrottlingPolicyResponse>(guardedValue, (value) => ThrottlingPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
