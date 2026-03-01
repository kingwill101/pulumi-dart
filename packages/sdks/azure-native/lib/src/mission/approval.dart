import 'package:pulumi/pulumi.dart' as pulumi;
import 'approval_args.dart';
import 'approver_response.dart';
import 'request_metadata_response.dart';
import 'system_data_response.dart';

/// Approval Model Resource
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Approval_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var approval = new AzureNative.Mission.Approval("approval", new()
///     {
///         ApprovalName = "TestApprovals",
///         Approvers = new[]
///         {
///             new AzureNative.Mission.Inputs.ApproverArgs
///             {
///                 ActionPerformed = AzureNative.Mission.ActionPerformed.Approved,
///                 ApproverEntraId = "00000000-0000-0000-0000-000000000000",
///                 LastUpdatedAt = "2023-03-17T20:43:17.760Z",
///             },
///         },
///         CreatedAt = "2023-03-17T20:43:17.760Z",
///         GrandparentResourceId = "/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity",
///         ParentResourceId = "/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/microsoft.mission/virtualenclaves/TestMyEnclave",
///         RequestMetadata = new AzureNative.Mission.Inputs.RequestMetadataArgs
///         {
///             ApprovalCallbackPayload = @"{
///   ""key1"": ""value1"",
///   ""key2"": ""value2""
/// }",
///             ApprovalCallbackRoute = "approvalCallback",
///             ApprovalStatus = AzureNative.Mission.ApprovalStatus.Approved,
///             ResourceAction = "string",
///         },
///         ResourceUri = "subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/Microsoft.Mission/enclaveconnections/TestMyEnclaveConnection",
///         StateChangedAt = "2023-03-17T20:43:17.760Z",
///         TicketId = "string",
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
/// 	mission "github.com/pulumi/pulumi-azure-native-sdk/mission/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mission.NewApproval(ctx, "approval", &mission.ApprovalArgs{
/// 			ApprovalName: pulumi.String("TestApprovals"),
/// 			Approvers: mission.ApproverArray{
/// 				&mission.ApproverArgs{
/// 					ActionPerformed: pulumi.String(mission.ActionPerformedApproved),
/// 					ApproverEntraId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 					LastUpdatedAt:   pulumi.String("2023-03-17T20:43:17.760Z"),
/// 				},
/// 			},
/// 			CreatedAt:             pulumi.String("2023-03-17T20:43:17.760Z"),
/// 			GrandparentResourceId: pulumi.String("/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity"),
/// 			ParentResourceId:      pulumi.String("/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/microsoft.mission/virtualenclaves/TestMyEnclave"),
/// 			RequestMetadata: &mission.RequestMetadataArgs{
/// 				ApprovalCallbackPayload: pulumi.String("{\n  \"key1\": \"value1\",\n  \"key2\": \"value2\"\n}"),
/// 				ApprovalCallbackRoute:   pulumi.String("approvalCallback"),
/// 				ApprovalStatus:          pulumi.String(mission.ApprovalStatusApproved),
/// 				ResourceAction:          pulumi.String("string"),
/// 			},
/// 			ResourceUri:    pulumi.String("subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/Microsoft.Mission/enclaveconnections/TestMyEnclaveConnection"),
/// 			StateChangedAt: pulumi.String("2023-03-17T20:43:17.760Z"),
/// 			TicketId:       pulumi.String("string"),
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
/// import com.pulumi.azurenative.mission.Approval;
/// import com.pulumi.azurenative.mission.ApprovalArgs;
/// import com.pulumi.azurenative.mission.inputs.ApproverArgs;
/// import com.pulumi.azurenative.mission.inputs.RequestMetadataArgs;
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
///         var approval = new Approval("approval", ApprovalArgs.builder()
///             .approvalName("TestApprovals")
///             .approvers(ApproverArgs.builder()
///                 .actionPerformed("Approved")
///                 .approverEntraId("00000000-0000-0000-0000-000000000000")
///                 .lastUpdatedAt("2023-03-17T20:43:17.760Z")
///                 .build())
///             .createdAt("2023-03-17T20:43:17.760Z")
///             .grandparentResourceId("/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity")
///             .parentResourceId("/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/microsoft.mission/virtualenclaves/TestMyEnclave")
///             .requestMetadata(RequestMetadataArgs.builder()
///                 .approvalCallbackPayload("""
/// {
///   "key1": "value1",
///   "key2": "value2"
/// }                """)
///                 .approvalCallbackRoute("approvalCallback")
///                 .approvalStatus("Approved")
///                 .resourceAction("string")
///                 .build())
///             .resourceUri("subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/Microsoft.Mission/enclaveconnections/TestMyEnclaveConnection")
///             .stateChangedAt("2023-03-17T20:43:17.760Z")
///             .ticketId("string")
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
/// const approval = new azure_native.mission.Approval("approval", {
///     approvalName: "TestApprovals",
///     approvers: [{
///         actionPerformed: azure_native.mission.ActionPerformed.Approved,
///         approverEntraId: "00000000-0000-0000-0000-000000000000",
///         lastUpdatedAt: "2023-03-17T20:43:17.760Z",
///     }],
///     createdAt: "2023-03-17T20:43:17.760Z",
///     grandparentResourceId: "/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity",
///     parentResourceId: "/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/microsoft.mission/virtualenclaves/TestMyEnclave",
///     requestMetadata: {
///         approvalCallbackPayload: `{
///   "key1": "value1",
///   "key2": "value2"
/// }`,
///         approvalCallbackRoute: "approvalCallback",
///         approvalStatus: azure_native.mission.ApprovalStatus.Approved,
///         resourceAction: "string",
///     },
///     resourceUri: "subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/Microsoft.Mission/enclaveconnections/TestMyEnclaveConnection",
///     stateChangedAt: "2023-03-17T20:43:17.760Z",
///     ticketId: "string",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// approval = azure_native.mission.Approval("approval",
///     approval_name="TestApprovals",
///     approvers=[{
///         "action_performed": azure_native.mission.ActionPerformed.APPROVED,
///         "approver_entra_id": "00000000-0000-0000-0000-000000000000",
///         "last_updated_at": "2023-03-17T20:43:17.760Z",
///     }],
///     created_at="2023-03-17T20:43:17.760Z",
///     grandparent_resource_id="/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity",
///     parent_resource_id="/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/microsoft.mission/virtualenclaves/TestMyEnclave",
///     request_metadata={
///         "approval_callback_payload": """{
///   "key1": "value1",
///   "key2": "value2"
/// }""",
///         "approval_callback_route": "approvalCallback",
///         "approval_status": azure_native.mission.ApprovalStatus.APPROVED,
///         "resource_action": "string",
///     },
///     resource_uri="subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/Microsoft.Mission/enclaveconnections/TestMyEnclaveConnection",
///     state_changed_at="2023-03-17T20:43:17.760Z",
///     ticket_id="string")
///
/// ```
///
/// ```yaml
/// resources:
///   approval:
///     type: azure-native:mission:Approval
///     properties:
///       approvalName: TestApprovals
///       approvers:
///         - actionPerformed: Approved
///           approverEntraId: 00000000-0000-0000-0000-000000000000
///           lastUpdatedAt: 2023-03-17T20:43:17.760Z
///       createdAt: 2023-03-17T20:43:17.760Z
///       grandparentResourceId: /subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity
///       parentResourceId: /subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/microsoft.mission/virtualenclaves/TestMyEnclave
///       requestMetadata:
///         approvalCallbackPayload: |-
///           {
///             "key1": "value1",
///             "key2": "value2"
///           }
///         approvalCallbackRoute: approvalCallback
///         approvalStatus: Approved
///         resourceAction: string
///       resourceUri: subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/Microsoft.Mission/enclaveconnections/TestMyEnclaveConnection
///       stateChangedAt: 2023-03-17T20:43:17.760Z
///       ticketId: string
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
/// $ pulumi import azure-native:mission:Approval TestApprovals /{resourceUri}/providers/Microsoft.Mission/approvals/{approvalName}
/// ```
class Approval extends pulumi.CustomResource {
  /// List of approvers for the approval request
  late final pulumi.Output<List<ApproverResponse>?> approvers;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Approval request creation time
  late final pulumi.Output<String?> createdAt;
  /// Parameter for optimizing query results
  late final pulumi.Output<String?> grandparentResourceId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Parameter for optimizing query results
  late final pulumi.Output<String?> parentResourceId;
  /// Provisioning State.
  late final pulumi.Output<String> provisioningState;
  /// Request metadata for the approval request.
  late final pulumi.Output<RequestMetadataResponse> requestMetadata;
  /// Approval request state change time, time at which approval request state changed from pending to approved or rejected.
  late final pulumi.Output<String?> stateChangedAt;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Ticket ID for the approval request
  late final pulumi.Output<String?> ticketId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Approval].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Approval]. {@macro pulumi_mission_approval_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Approval(
    String name, {
    ApprovalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:mission:Approval',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.approvers = registerOutput<List<ApproverResponse>?>('approvers');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.createdAt = registerOutput<String?>('createdAt');
    this.grandparentResourceId = registerOutput<String?>('grandparentResourceId');
    this.name = registerOutput<String>('name');
    this.parentResourceId = registerOutput<String?>('parentResourceId');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.requestMetadata = registerOutput<RequestMetadataResponse>('requestMetadata');
    this.stateChangedAt = registerOutput<String?>('stateChangedAt');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.ticketId = registerOutput<String?>('ticketId');
    this.type = registerOutput<String>('type');
  }
}
