import 'package:pulumi/pulumi.dart' as pulumi;
import 'capture_description_response.dart';
import 'event_hub_args.dart';
import 'retention_description_response.dart';
import 'system_data_response.dart';

/// Single item in List or Get Event Hub operation
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01-preview.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EventHubCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventHub = new AzureNative.EventHub.EventHub("eventHub", new()
///     {
///         CaptureDescription = new AzureNative.EventHub.Inputs.CaptureDescriptionArgs
///         {
///             Destination = new AzureNative.EventHub.Inputs.DestinationArgs
///             {
///                 ArchiveNameFormat = "{Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}",
///                 BlobContainer = "container",
///                 Identity = new AzureNative.EventHub.Inputs.CaptureIdentityArgs
///                 {
///                     Type = AzureNative.EventHub.CaptureIdentityType.UserAssigned,
///                     UserAssignedIdentity = "/subscriptions/SampleSubscription/resourceGroups/ResurceGroupSample/providers/Microsoft.ManagedIdentity/userAssignedIdentities/ud2",
///                 },
///                 Name = "EventHubArchive.AzureBlockBlob",
///                 StorageAccountResourceId = "/subscriptions/e2f361f0-3b27-4503-a9cc-21cfba380093/resourceGroups/Default-Storage-SouthCentralUS/providers/Microsoft.ClassicStorage/storageAccounts/arjunteststorage",
///             },
///             Enabled = true,
///             Encoding = AzureNative.EventHub.EncodingCaptureDescription.Avro,
///             IntervalInSeconds = 120,
///             SizeLimitInBytes = 10485763,
///         },
///         EventHubName = "sdk-EventHub-6547",
///         MessageRetentionInDays = 4,
///         NamespaceName = "sdk-Namespace-5357",
///         PartitionCount = 4,
///         ResourceGroupName = "Default-NotificationHubs-AustraliaEast",
///         RetentionDescription = new AzureNative.EventHub.Inputs.RetentionDescriptionArgs
///         {
///             CleanupPolicy = AzureNative.EventHub.CleanupPolicyRetentionDescription.Compact,
///             RetentionTimeInHours = 96,
///             TombstoneRetentionTimeInHours = 1,
///         },
///         Status = AzureNative.EventHub.EntityStatus.Active,
///         UserMetadata = "key",
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
/// 		_, err := eventhub.NewEventHub(ctx, "eventHub", &eventhub.EventHubArgs{
/// 			CaptureDescription: &eventhub.CaptureDescriptionArgs{
/// 				Destination: &eventhub.DestinationArgs{
/// 					ArchiveNameFormat: pulumi.String("{Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}"),
/// 					BlobContainer:     pulumi.String("container"),
/// 					Identity: &eventhub.CaptureIdentityArgs{
/// 						Type:                 eventhub.CaptureIdentityTypeUserAssigned,
/// 						UserAssignedIdentity: pulumi.String("/subscriptions/SampleSubscription/resourceGroups/ResurceGroupSample/providers/Microsoft.ManagedIdentity/userAssignedIdentities/ud2"),
/// 					},
/// 					Name:                     pulumi.String("EventHubArchive.AzureBlockBlob"),
/// 					StorageAccountResourceId: pulumi.String("/subscriptions/e2f361f0-3b27-4503-a9cc-21cfba380093/resourceGroups/Default-Storage-SouthCentralUS/providers/Microsoft.ClassicStorage/storageAccounts/arjunteststorage"),
/// 				},
/// 				Enabled:           pulumi.Bool(true),
/// 				Encoding:          eventhub.EncodingCaptureDescriptionAvro,
/// 				IntervalInSeconds: pulumi.Int(120),
/// 				SizeLimitInBytes:  pulumi.Int(10485763),
/// 			},
/// 			EventHubName:           pulumi.String("sdk-EventHub-6547"),
/// 			MessageRetentionInDays: pulumi.Float64(4),
/// 			NamespaceName:          pulumi.String("sdk-Namespace-5357"),
/// 			PartitionCount:         pulumi.Float64(4),
/// 			ResourceGroupName:      pulumi.String("Default-NotificationHubs-AustraliaEast"),
/// 			RetentionDescription: &eventhub.RetentionDescriptionArgs{
/// 				CleanupPolicy:                 pulumi.String(eventhub.CleanupPolicyRetentionDescriptionCompact),
/// 				RetentionTimeInHours:          pulumi.Float64(96),
/// 				TombstoneRetentionTimeInHours: pulumi.Int(1),
/// 			},
/// 			Status:       eventhub.EntityStatusActive,
/// 			UserMetadata: pulumi.String("key"),
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
/// import com.pulumi.azurenative.eventhub.EventHub;
/// import com.pulumi.azurenative.eventhub.EventHubArgs;
/// import com.pulumi.azurenative.eventhub.inputs.CaptureDescriptionArgs;
/// import com.pulumi.azurenative.eventhub.inputs.DestinationArgs;
/// import com.pulumi.azurenative.eventhub.inputs.CaptureIdentityArgs;
/// import com.pulumi.azurenative.eventhub.inputs.RetentionDescriptionArgs;
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
///         var eventHub = new EventHub("eventHub", EventHubArgs.builder()
///             .captureDescription(CaptureDescriptionArgs.builder()
///                 .destination(DestinationArgs.builder()
///                     .archiveNameFormat("{Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}")
///                     .blobContainer("container")
///                     .identity(CaptureIdentityArgs.builder()
///                         .type("UserAssigned")
///                         .userAssignedIdentity("/subscriptions/SampleSubscription/resourceGroups/ResurceGroupSample/providers/Microsoft.ManagedIdentity/userAssignedIdentities/ud2")
///                         .build())
///                     .name("EventHubArchive.AzureBlockBlob")
///                     .storageAccountResourceId("/subscriptions/e2f361f0-3b27-4503-a9cc-21cfba380093/resourceGroups/Default-Storage-SouthCentralUS/providers/Microsoft.ClassicStorage/storageAccounts/arjunteststorage")
///                     .build())
///                 .enabled(true)
///                 .encoding("Avro")
///                 .intervalInSeconds(120)
///                 .sizeLimitInBytes(10485763)
///                 .build())
///             .eventHubName("sdk-EventHub-6547")
///             .messageRetentionInDays(4.0)
///             .namespaceName("sdk-Namespace-5357")
///             .partitionCount(4.0)
///             .resourceGroupName("Default-NotificationHubs-AustraliaEast")
///             .retentionDescription(RetentionDescriptionArgs.builder()
///                 .cleanupPolicy("Compact")
///                 .retentionTimeInHours(96.0)
///                 .tombstoneRetentionTimeInHours(1)
///                 .build())
///             .status("Active")
///             .userMetadata("key")
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
/// const eventHub = new azure_native.eventhub.EventHub("eventHub", {
///     captureDescription: {
///         destination: {
///             archiveNameFormat: "{Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}",
///             blobContainer: "container",
///             identity: {
///                 type: azure_native.eventhub.CaptureIdentityType.UserAssigned,
///                 userAssignedIdentity: "/subscriptions/SampleSubscription/resourceGroups/ResurceGroupSample/providers/Microsoft.ManagedIdentity/userAssignedIdentities/ud2",
///             },
///             name: "EventHubArchive.AzureBlockBlob",
///             storageAccountResourceId: "/subscriptions/e2f361f0-3b27-4503-a9cc-21cfba380093/resourceGroups/Default-Storage-SouthCentralUS/providers/Microsoft.ClassicStorage/storageAccounts/arjunteststorage",
///         },
///         enabled: true,
///         encoding: azure_native.eventhub.EncodingCaptureDescription.Avro,
///         intervalInSeconds: 120,
///         sizeLimitInBytes: 10485763,
///     },
///     eventHubName: "sdk-EventHub-6547",
///     messageRetentionInDays: 4,
///     namespaceName: "sdk-Namespace-5357",
///     partitionCount: 4,
///     resourceGroupName: "Default-NotificationHubs-AustraliaEast",
///     retentionDescription: {
///         cleanupPolicy: azure_native.eventhub.CleanupPolicyRetentionDescription.Compact,
///         retentionTimeInHours: 96,
///         tombstoneRetentionTimeInHours: 1,
///     },
///     status: azure_native.eventhub.EntityStatus.Active,
///     userMetadata: "key",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_hub = azure_native.eventhub.EventHub("eventHub",
///     capture_description={
///         "destination": {
///             "archive_name_format": "{Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}",
///             "blob_container": "container",
///             "identity": {
///                 "type": azure_native.eventhub.CaptureIdentityType.USER_ASSIGNED,
///                 "user_assigned_identity": "/subscriptions/SampleSubscription/resourceGroups/ResurceGroupSample/providers/Microsoft.ManagedIdentity/userAssignedIdentities/ud2",
///             },
///             "name": "EventHubArchive.AzureBlockBlob",
///             "storage_account_resource_id": "/subscriptions/e2f361f0-3b27-4503-a9cc-21cfba380093/resourceGroups/Default-Storage-SouthCentralUS/providers/Microsoft.ClassicStorage/storageAccounts/arjunteststorage",
///         },
///         "enabled": True,
///         "encoding": azure_native.eventhub.EncodingCaptureDescription.AVRO,
///         "interval_in_seconds": 120,
///         "size_limit_in_bytes": 10485763,
///     },
///     event_hub_name="sdk-EventHub-6547",
///     message_retention_in_days=4,
///     namespace_name="sdk-Namespace-5357",
///     partition_count=4,
///     resource_group_name="Default-NotificationHubs-AustraliaEast",
///     retention_description={
///         "cleanup_policy": azure_native.eventhub.CleanupPolicyRetentionDescription.COMPACT,
///         "retention_time_in_hours": 96,
///         "tombstone_retention_time_in_hours": 1,
///     },
///     status=azure_native.eventhub.EntityStatus.ACTIVE,
///     user_metadata="key")
///
/// ```
///
/// ```yaml
/// resources:
///   eventHub:
///     type: azure-native:eventhub:EventHub
///     properties:
///       captureDescription:
///         destination:
///           archiveNameFormat: '{Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}'
///           blobContainer: container
///           identity:
///             type: UserAssigned
///             userAssignedIdentity: /subscriptions/SampleSubscription/resourceGroups/ResurceGroupSample/providers/Microsoft.ManagedIdentity/userAssignedIdentities/ud2
///           name: EventHubArchive.AzureBlockBlob
///           storageAccountResourceId: /subscriptions/e2f361f0-3b27-4503-a9cc-21cfba380093/resourceGroups/Default-Storage-SouthCentralUS/providers/Microsoft.ClassicStorage/storageAccounts/arjunteststorage
///         enabled: true
///         encoding: Avro
///         intervalInSeconds: 120
///         sizeLimitInBytes: 1.0485763e+07
///       eventHubName: sdk-EventHub-6547
///       messageRetentionInDays: 4
///       namespaceName: sdk-Namespace-5357
///       partitionCount: 4
///       resourceGroupName: Default-NotificationHubs-AustraliaEast
///       retentionDescription:
///         cleanupPolicy: Compact
///         retentionTimeInHours: 96
///         tombstoneRetentionTimeInHours: 1
///       status: Active
///       userMetadata: key
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
/// $ pulumi import azure-native:eventhub:EventHub sdk-EventHub-10 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/eventhubs/{eventHubName}
/// ```
class EventHub extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Properties of capture description
  late final pulumi.Output<CaptureDescriptionResponse?> captureDescription;

  /// Exact time the Event Hub was created.
  late final pulumi.Output<String> createdAt;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Number of days to retain the events for this Event Hub, value should be 1 to 7 days
  late final pulumi.Output<double?> messageRetentionInDays;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Number of partitions created for the Event Hub, allowed values are from 1 to 32 partitions.
  late final pulumi.Output<double?> partitionCount;

  /// Current number of shards on the Event Hub.
  late final pulumi.Output<List<String>> partitionIds;

  /// Event Hub retention settings
  late final pulumi.Output<RetentionDescriptionResponse?> retentionDescription;

  /// Enumerates the possible values for the status of the Event Hub.
  late final pulumi.Output<String?> status;

  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  late final pulumi.Output<String> type;

  /// The exact time the message was updated.
  late final pulumi.Output<String> updatedAt;

  /// Gets and Sets Metadata of User.
  late final pulumi.Output<String?> userMetadata;

  /// Creates a new [EventHub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventHub]. {@macro pulumi_eventhub_event_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventHub(
    String name, {
    EventHubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:eventhub:EventHub',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    captureDescription = registerOutput<CaptureDescriptionResponse?>(
      'captureDescription',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CaptureDescriptionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createdAt = registerOutput<String>('createdAt');
    location = registerOutput<String>('location');
    messageRetentionInDays = registerOutput<double?>('messageRetentionInDays');
    this.name = registerOutput<String>('name');
    partitionCount = registerOutput<double?>('partitionCount');
    partitionIds = registerOutput<List<String>>('partitionIds');
    retentionDescription = registerOutput<RetentionDescriptionResponse?>(
      'retentionDescription',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RetentionDescriptionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<String?>('status');
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
    updatedAt = registerOutput<String>('updatedAt');
    userMetadata = registerOutput<String?>('userMetadata');
  }
}
