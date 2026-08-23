import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_namespace_args.dart';
import 'system_data_response.dart';

/// EventGrid Partner Namespace.
///
/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2022-06-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PartnerNamespaces_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var partnerNamespace = new AzureNative.EventGrid.PartnerNamespace("partnerNamespace", new()
///     {
///         Location = "westus",
///         PartnerNamespaceName = "examplePartnerNamespaceName1",
///         PartnerRegistrationFullyQualifiedId = "/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/ContosoCorpAccount1",
///         ResourceGroupName = "examplerg",
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
///         },
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
/// 		_, err := eventgrid.NewPartnerNamespace(ctx, "partnerNamespace", &eventgrid.PartnerNamespaceArgs{
/// 			Location:                            pulumi.String("westus"),
/// 			PartnerNamespaceName:                pulumi.String("examplePartnerNamespaceName1"),
/// 			PartnerRegistrationFullyQualifiedId: pulumi.String("/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/ContosoCorpAccount1"),
/// 			ResourceGroupName:                   pulumi.String("examplerg"),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
/// 			},
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
/// resource "azure-native_eventgrid_partnernamespace" "partnerNamespace" {
///   location                                = "westus"
///   partner_namespace_name                  = "examplePartnerNamespaceName1"
///   partner_registration_fully_qualified_id = "/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/ContosoCorpAccount1"
///   resource_group_name                     = "examplerg"
///   tags = {
///     "tag1" = "value1"
///     "tag2" = "value2"
///   }
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
/// import com.pulumi.azurenative.eventgrid.PartnerNamespace;
/// import com.pulumi.azurenative.eventgrid.PartnerNamespaceArgs;
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
///         var partnerNamespace = new PartnerNamespace("partnerNamespace", PartnerNamespaceArgs.builder()
///             .location("westus")
///             .partnerNamespaceName("examplePartnerNamespaceName1")
///             .partnerRegistrationFullyQualifiedId("/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/ContosoCorpAccount1")
///             .resourceGroupName("examplerg")
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2")
///             ))
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
/// const partnerNamespace = new azure_native.eventgrid.PartnerNamespace("partnerNamespace", {
///     location: "westus",
///     partnerNamespaceName: "examplePartnerNamespaceName1",
///     partnerRegistrationFullyQualifiedId: "/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/ContosoCorpAccount1",
///     resourceGroupName: "examplerg",
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// partner_namespace = azure_native.eventgrid.PartnerNamespace("partnerNamespace",
///     location="westus",
///     partner_namespace_name="examplePartnerNamespaceName1",
///     partner_registration_fully_qualified_id="/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/ContosoCorpAccount1",
///     resource_group_name="examplerg",
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   partnerNamespace:
///     type: azure-native:eventgrid:PartnerNamespace
///     properties:
///       location: westus
///       partnerNamespaceName: examplePartnerNamespaceName1
///       partnerRegistrationFullyQualifiedId: /subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/ContosoCorpAccount1
///       resourceGroupName: examplerg
///       tags:
///         tag1: value1
///         tag2: value2
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
/// $ pulumi import azure-native:eventgrid:PartnerNamespace examplePartnerNamespaceName1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/partnerNamespaces/{partnerNamespaceName}
/// ```
class PartnerNamespace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// This boolean is used to enable or disable local auth. Default value is false. When the property is set to true, only AAD token will be used to authenticate if user is allowed to publish to the partner namespace.
  late final pulumi.Output<bool?> disableLocalAuth;
  /// Endpoint for the partner namespace.
  late final pulumi.Output<String> endpoint;
  /// This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  late final pulumi.Output<List<Map<String, dynamic>>?> inboundIpRules;
  /// Location of the resource.
  late final pulumi.Output<String> location;
  /// Minimum TLS version of the publisher allowed to publish to this partner namespace
  late final pulumi.Output<String?> minimumTlsVersionAllowed;
  /// Name of the resource.
  late final pulumi.Output<String> name;
  /// The fully qualified ARM Id of the partner registration that should be associated with this partner namespace. This takes the following format:
  /// /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/partnerRegistrations/{partnerRegistrationName}.
  late final pulumi.Output<String?> partnerRegistrationFullyQualifiedId;
  /// This determines if events published to this partner namespace should use the source attribute in the event payload
  /// or use the channel name in the header when matching to the partner topic. If none is specified, source attribute routing will be used to match the partner topic.
  late final pulumi.Output<String?> partnerTopicRoutingMode;
  /// List of private endpoint connections.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// Provisioning state of the partner namespace.
  late final pulumi.Output<String> provisioningState;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  /// You can further restrict to specific IPs by configuring &lt;seealso cref="P:Microsoft.Azure.Events.ResourceProvider.Common.Contracts.PartnerNamespaceProperties.InboundIpRules" /&gt;
  late final pulumi.Output<String?> publicNetworkAccess;
  /// The system metadata relating to the Event Grid resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [PartnerNamespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PartnerNamespace]. {@macro pulumi_eventgrid_partner_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PartnerNamespace(
    String name, {
    PartnerNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventgrid:PartnerNamespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    disableLocalAuth = registerOutput<bool?>('disableLocalAuth');
    endpoint = registerOutput<String>('endpoint');
    inboundIpRules = registerOutput<List<Map<String, dynamic>>?>('inboundIpRules');
    location = registerOutput<String>('location');
    minimumTlsVersionAllowed = registerOutput<String?>('minimumTlsVersionAllowed');
    this.name = registerOutput<String>('name');
    partnerRegistrationFullyQualifiedId = registerOutput<String?>('partnerRegistrationFullyQualifiedId');
    partnerTopicRoutingMode = registerOutput<String?>('partnerTopicRoutingMode');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
