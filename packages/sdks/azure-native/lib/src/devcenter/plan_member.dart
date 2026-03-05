import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_member_args.dart';
import 'plan_member_sync_status_response.dart';
import 'system_data_response.dart';

/// Represents a devcenter plan member resource.
///
/// Uses Azure REST API version 2024-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-05-01-preview.
///
/// Other available API versions: 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Plans_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var planMember = new AzureNative.DevCenter.PlanMember("planMember", new()
///     {
///         MemberId = "d702f662-b3f2-4796-9e8c-13c22378ced3",
///         MemberName = "d702f662-b3f2-4796-9e8c-13c22378ced3",
///         MemberType = AzureNative.DevCenter.PlanMemberType.User,
///         PlanName = "ContosoPlan",
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "CostCode", "12345" },
///         },
///         Tier = "Standard",
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
/// 	devcenter "github.com/pulumi/pulumi-azure-native-sdk/devcenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devcenter.NewPlanMember(ctx, "planMember", &devcenter.PlanMemberArgs{
/// 			MemberId:          pulumi.String("d702f662-b3f2-4796-9e8c-13c22378ced3"),
/// 			MemberName:        pulumi.String("d702f662-b3f2-4796-9e8c-13c22378ced3"),
/// 			MemberType:        pulumi.String(devcenter.PlanMemberTypeUser),
/// 			PlanName:          pulumi.String("ContosoPlan"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"CostCode": pulumi.String("12345"),
/// 			},
/// 			Tier: pulumi.String("Standard"),
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
/// import com.pulumi.azurenative.devcenter.PlanMember;
/// import com.pulumi.azurenative.devcenter.PlanMemberArgs;
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
///         var planMember = new PlanMember("planMember", PlanMemberArgs.builder()
///             .memberId("d702f662-b3f2-4796-9e8c-13c22378ced3")
///             .memberName("d702f662-b3f2-4796-9e8c-13c22378ced3")
///             .memberType("User")
///             .planName("ContosoPlan")
///             .resourceGroupName("rg1")
///             .tags(Map.of("CostCode", "12345"))
///             .tier("Standard")
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
/// const planMember = new azure_native.devcenter.PlanMember("planMember", {
///     memberId: "d702f662-b3f2-4796-9e8c-13c22378ced3",
///     memberName: "d702f662-b3f2-4796-9e8c-13c22378ced3",
///     memberType: azure_native.devcenter.PlanMemberType.User,
///     planName: "ContosoPlan",
///     resourceGroupName: "rg1",
///     tags: {
///         CostCode: "12345",
///     },
///     tier: "Standard",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// plan_member = azure_native.devcenter.PlanMember("planMember",
///     member_id="d702f662-b3f2-4796-9e8c-13c22378ced3",
///     member_name="d702f662-b3f2-4796-9e8c-13c22378ced3",
///     member_type=azure_native.devcenter.PlanMemberType.USER,
///     plan_name="ContosoPlan",
///     resource_group_name="rg1",
///     tags={
///         "CostCode": "12345",
///     },
///     tier="Standard")
///
/// ```
///
/// ```yaml
/// resources:
///   planMember:
///     type: azure-native:devcenter:PlanMember
///     properties:
///       memberId: d702f662-b3f2-4796-9e8c-13c22378ced3
///       memberName: d702f662-b3f2-4796-9e8c-13c22378ced3
///       memberType: User
///       planName: ContosoPlan
///       resourceGroupName: rg1
///       tags:
///         CostCode: '12345'
///       tier: Standard
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
/// $ pulumi import azure-native:devcenter:PlanMember d702f662-b3f2-4796-9e8c-13c22378ced3 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/plans/{planName}/members/{memberName}
/// ```
class PlanMember extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The unique id of the member.
  late final pulumi.Output<String?> memberId;
  /// The type of the member (user, group)
  late final pulumi.Output<String?> memberType;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The sync status of the member.
  late final pulumi.Output<PlanMemberSyncStatusResponse> syncStatus;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The tier of the member.
  late final pulumi.Output<String?> tier;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PlanMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PlanMember]. {@macro pulumi_devcenter_plan_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PlanMember(
    String name, {
    PlanMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devcenter:PlanMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    memberId = registerOutput<String?>('memberId');
    memberType = registerOutput<String?>('memberType');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    syncStatus = registerOutput<PlanMemberSyncStatusResponse>('syncStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlanMemberSyncStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tier = registerOutput<String?>('tier');
    type = registerOutput<String>('type');
  }
}
