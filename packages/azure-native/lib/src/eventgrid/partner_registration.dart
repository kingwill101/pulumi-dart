import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_registration_args.dart';
import 'system_data_response.dart';

/// Information about a partner registration.
///
/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2022-06-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PartnerRegistrations_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var partnerRegistration = new AzureNative.EventGrid.PartnerRegistration("partnerRegistration", new()
///     {
///         Location = "global",
///         PartnerRegistrationName = "examplePartnerRegistrationName1",
///         ResourceGroupName = "examplerg",
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "Value2" },
///             { "key3", "Value3" },
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
/// 		_, err := eventgrid.NewPartnerRegistration(ctx, "partnerRegistration", &eventgrid.PartnerRegistrationArgs{
/// 			Location:                pulumi.String("global"),
/// 			PartnerRegistrationName: pulumi.String("examplePartnerRegistrationName1"),
/// 			ResourceGroupName:       pulumi.String("examplerg"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("Value2"),
/// 				"key3": pulumi.String("Value3"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.eventgrid.PartnerRegistration;
/// import com.pulumi.azurenative.eventgrid.PartnerRegistrationArgs;
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
///         var partnerRegistration = new PartnerRegistration("partnerRegistration", PartnerRegistrationArgs.builder()
///             .location("global")
///             .partnerRegistrationName("examplePartnerRegistrationName1")
///             .resourceGroupName("examplerg")
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "Value2"),
///                 Map.entry("key3", "Value3")
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
/// const partnerRegistration = new azure_native.eventgrid.PartnerRegistration("partnerRegistration", {
///     location: "global",
///     partnerRegistrationName: "examplePartnerRegistrationName1",
///     resourceGroupName: "examplerg",
///     tags: {
///         key1: "value1",
///         key2: "Value2",
///         key3: "Value3",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// partner_registration = azure_native.eventgrid.PartnerRegistration("partnerRegistration",
///     location="global",
///     partner_registration_name="examplePartnerRegistrationName1",
///     resource_group_name="examplerg",
///     tags={
///         "key1": "value1",
///         "key2": "Value2",
///         "key3": "Value3",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   partnerRegistration:
///     type: azure-native:eventgrid:PartnerRegistration
///     properties:
///       location: global
///       partnerRegistrationName: examplePartnerRegistrationName1
///       resourceGroupName: examplerg
///       tags:
///         key1: value1
///         key2: Value2
///         key3: Value3
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
/// $ pulumi import azure-native:eventgrid:PartnerRegistration examplePartnerRegistrationName1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/partnerRegistrations/{partnerRegistrationName}
/// ```
class PartnerRegistration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Location of the resource.
  late final pulumi.Output<String> location;
  /// Name of the resource.
  late final pulumi.Output<String> name;
  /// The immutableId of the corresponding partner registration.
  /// Note: This property is marked for deprecation and is not supported in any future GA API version
  late final pulumi.Output<String?> partnerRegistrationImmutableId;
  /// Provisioning state of the partner registration.
  late final pulumi.Output<String> provisioningState;
  /// The system metadata relating to the Event Grid resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [PartnerRegistration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PartnerRegistration]. {@macro pulumi_eventgrid_partner_registration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PartnerRegistration(
    String name, {
    PartnerRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventgrid:PartnerRegistration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.partnerRegistrationImmutableId = registerOutput<String?>('partnerRegistrationImmutableId');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
