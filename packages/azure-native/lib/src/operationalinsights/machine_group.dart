import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_group_args.dart';
import 'machine_reference_with_hints_response.dart';

/// A user-defined logical grouping of machines.
///
/// Uses Azure REST API version 2015-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2015-11-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SMMachineGroupsUpdatePut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var machineGroup = new AzureNative.OperationalInsights.MachineGroup("machineGroup", new()
///     {
///         Count = 1,
///         DisplayName = "Foo",
///         Kind = "machineGroup",
///         MachineGroupName = "ccfbf4bf-dc08-4371-9e9b-00a8d875d45a",
///         Machines = new[]
///         {
///             new AzureNative.OperationalInsights.Inputs.MachineReferenceWithHintsArgs
///             {
///                 Id = "/subscriptions/63BE4E24-FDF0-4E9C-9342-6A5D5A359722/resourceGroups/rg-sm/providers/Microsoft.OperationalInsights/workspaces/D6F79F14-E563-469B-84B5-9286D2803B2F/machines/m-0fe4b501-7ac9-41d7-a4e1-1591a0789519",
///                 Kind = "ref:machinewithhints",
///             },
///         },
///         ResourceGroupName = "rg-sm",
///         WorkspaceName = "D6F79F14-E563-469B-84B5-9286D2803B2F",
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
/// 	operationalinsights "github.com/pulumi/pulumi-azure-native-sdk/operationalinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := operationalinsights.NewMachineGroup(ctx, "machineGroup", &operationalinsights.MachineGroupArgs{
/// 			Count:            pulumi.Int(1),
/// 			DisplayName:      pulumi.String("Foo"),
/// 			Kind:             pulumi.String("machineGroup"),
/// 			MachineGroupName: pulumi.String("ccfbf4bf-dc08-4371-9e9b-00a8d875d45a"),
/// 			Machines: operationalinsights.MachineReferenceWithHintsArray{
/// 				&operationalinsights.MachineReferenceWithHintsArgs{
/// 					Id:   pulumi.String("/subscriptions/63BE4E24-FDF0-4E9C-9342-6A5D5A359722/resourceGroups/rg-sm/providers/Microsoft.OperationalInsights/workspaces/D6F79F14-E563-469B-84B5-9286D2803B2F/machines/m-0fe4b501-7ac9-41d7-a4e1-1591a0789519"),
/// 					Kind: pulumi.String("ref:machinewithhints"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg-sm"),
/// 			WorkspaceName:     pulumi.String("D6F79F14-E563-469B-84B5-9286D2803B2F"),
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
/// import com.pulumi.azurenative.operationalinsights.MachineGroup;
/// import com.pulumi.azurenative.operationalinsights.MachineGroupArgs;
/// import com.pulumi.azurenative.operationalinsights.inputs.MachineReferenceWithHintsArgs;
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
///         var machineGroup = new MachineGroup("machineGroup", MachineGroupArgs.builder()
///             .count(1)
///             .displayName("Foo")
///             .kind("machineGroup")
///             .machineGroupName("ccfbf4bf-dc08-4371-9e9b-00a8d875d45a")
///             .machines(MachineReferenceWithHintsArgs.builder()
///                 .id("/subscriptions/63BE4E24-FDF0-4E9C-9342-6A5D5A359722/resourceGroups/rg-sm/providers/Microsoft.OperationalInsights/workspaces/D6F79F14-E563-469B-84B5-9286D2803B2F/machines/m-0fe4b501-7ac9-41d7-a4e1-1591a0789519")
///                 .kind("ref:machinewithhints")
///                 .build())
///             .resourceGroupName("rg-sm")
///             .workspaceName("D6F79F14-E563-469B-84B5-9286D2803B2F")
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
/// const machineGroup = new azure_native.operationalinsights.MachineGroup("machineGroup", {
///     count: 1,
///     displayName: "Foo",
///     kind: "machineGroup",
///     machineGroupName: "ccfbf4bf-dc08-4371-9e9b-00a8d875d45a",
///     machines: [{
///         id: "/subscriptions/63BE4E24-FDF0-4E9C-9342-6A5D5A359722/resourceGroups/rg-sm/providers/Microsoft.OperationalInsights/workspaces/D6F79F14-E563-469B-84B5-9286D2803B2F/machines/m-0fe4b501-7ac9-41d7-a4e1-1591a0789519",
///         kind: "ref:machinewithhints",
///     }],
///     resourceGroupName: "rg-sm",
///     workspaceName: "D6F79F14-E563-469B-84B5-9286D2803B2F",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// machine_group = azure_native.operationalinsights.MachineGroup("machineGroup",
///     count=1,
///     display_name="Foo",
///     kind="machineGroup",
///     machine_group_name="ccfbf4bf-dc08-4371-9e9b-00a8d875d45a",
///     machines=[{
///         "id": "/subscriptions/63BE4E24-FDF0-4E9C-9342-6A5D5A359722/resourceGroups/rg-sm/providers/Microsoft.OperationalInsights/workspaces/D6F79F14-E563-469B-84B5-9286D2803B2F/machines/m-0fe4b501-7ac9-41d7-a4e1-1591a0789519",
///         "kind": "ref:machinewithhints",
///     }],
///     resource_group_name="rg-sm",
///     workspace_name="D6F79F14-E563-469B-84B5-9286D2803B2F")
///
/// ```
///
/// ```yaml
/// resources:
///   machineGroup:
///     type: azure-native:operationalinsights:MachineGroup
///     properties:
///       count: 1
///       displayName: Foo
///       kind: machineGroup
///       machineGroupName: ccfbf4bf-dc08-4371-9e9b-00a8d875d45a
///       machines:
///         - id: /subscriptions/63BE4E24-FDF0-4E9C-9342-6A5D5A359722/resourceGroups/rg-sm/providers/Microsoft.OperationalInsights/workspaces/D6F79F14-E563-469B-84B5-9286D2803B2F/machines/m-0fe4b501-7ac9-41d7-a4e1-1591a0789519
///           kind: ref:machinewithhints
///       resourceGroupName: rg-sm
///       workspaceName: D6F79F14-E563-469B-84B5-9286D2803B2F
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
/// $ pulumi import azure-native:operationalinsights:MachineGroup ccfbf4bf-dc08-4371-9e9b-00a8d875d45a /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/features/serviceMap/machineGroups/{machineGroupName}
/// ```
class MachineGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Count of machines in this group. The value of count may be bigger than the number of machines in case of the group has been truncated due to exceeding the max number of machines a group can handle.
  late final pulumi.Output<int?> count;
  /// User defined name for the group
  late final pulumi.Output<String> displayName;
  /// Resource ETAG.
  late final pulumi.Output<String?> etag;
  /// Type of the machine group
  late final pulumi.Output<String?> groupType;
  /// Additional resource type qualifier.
  /// Expected value is 'machineGroup'.
  late final pulumi.Output<String> kind;
  /// References of the machines in this group. The hints within each reference do not represent the current value of the corresponding fields. They are a snapshot created during the last time the machine group was updated.
  late final pulumi.Output<List<MachineReferenceWithHintsResponse>?> machines;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [MachineGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MachineGroup]. {@macro pulumi_operationalinsights_machine_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MachineGroup(
    String name, {
    MachineGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:operationalinsights:MachineGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.count = registerOutput<int?>('count');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String?>('etag');
    this.groupType = registerOutput<String?>('groupType');
    this.kind = registerOutput<String>('kind');
    this.machines = registerOutput<List<MachineReferenceWithHintsResponse>?>('machines');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
  }
}
