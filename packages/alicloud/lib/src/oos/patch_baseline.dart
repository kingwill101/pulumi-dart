import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_baseline_args.dart';

/// Provides a OOS Patch Baseline resource.
///
/// For information about OOS Patch Baseline and how to use it, see [What is Patch Baseline](https://www.alibabacloud.com/help/en/operation-orchestration-service/latest/patch-manager-overview).
///
/// > **NOTE:** Available since v1.146.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.oos.PatchBaseline("default", {
///     patchBaselineName: name,
///     operationSystem: "Windows",
///     approvalRules: "{\"PatchRules\":[{\"EnableNonSecurity\":true,\"PatchFilterGroup\":[{\"Values\":[\"*\"],\"Key\":\"Product\"},{\"Values\":[\"Security\",\"Bugfix\"],\"Key\":\"Classification\"},{\"Values\":[\"Critical\",\"Important\"],\"Key\":\"Severity\"}],\"ApproveAfterDays\":7,\"ComplianceLevel\":\"Unspecified\"}]}",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.oos.PatchBaseline("default",
///     patch_baseline_name=name,
///     operation_system="Windows",
///     approval_rules="{\"PatchRules\":[{\"EnableNonSecurity\":true,\"PatchFilterGroup\":[{\"Values\":[\"*\"],\"Key\":\"Product\"},{\"Values\":[\"Security\",\"Bugfix\"],\"Key\":\"Classification\"},{\"Values\":[\"Critical\",\"Important\"],\"Key\":\"Severity\"}],\"ApproveAfterDays\":7,\"ComplianceLevel\":\"Unspecified\"}]}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Oos.PatchBaseline("default", new()
///     {
///         PatchBaselineName = name,
///         OperationSystem = "Windows",
///         ApprovalRules = "{\"PatchRules\":[{\"EnableNonSecurity\":true,\"PatchFilterGroup\":[{\"Values\":[\"*\"],\"Key\":\"Product\"},{\"Values\":[\"Security\",\"Bugfix\"],\"Key\":\"Classification\"},{\"Values\":[\"Critical\",\"Important\"],\"Key\":\"Severity\"}],\"ApproveAfterDays\":7,\"ComplianceLevel\":\"Unspecified\"}]}",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oos"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := oos.NewPatchBaseline(ctx, "default", &oos.PatchBaselineArgs{
/// 			PatchBaselineName: pulumi.String(name),
/// 			OperationSystem:   pulumi.String("Windows"),
/// 			ApprovalRules:     pulumi.String("{\"PatchRules\":[{\"EnableNonSecurity\":true,\"PatchFilterGroup\":[{\"Values\":[\"*\"],\"Key\":\"Product\"},{\"Values\":[\"Security\",\"Bugfix\"],\"Key\":\"Classification\"},{\"Values\":[\"Critical\",\"Important\"],\"Key\":\"Severity\"}],\"ApproveAfterDays\":7,\"ComplianceLevel\":\"Unspecified\"}]}"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.oos.PatchBaseline;
/// import com.pulumi.alicloud.oos.PatchBaselineArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new PatchBaseline("default", PatchBaselineArgs.builder()
///             .patchBaselineName(name)
///             .operationSystem("Windows")
///             .approvalRules("{\"PatchRules\":[{\"EnableNonSecurity\":true,\"PatchFilterGroup\":[{\"Values\":[\"*\"],\"Key\":\"Product\"},{\"Values\":[\"Security\",\"Bugfix\"],\"Key\":\"Classification\"},{\"Values\":[\"Critical\",\"Important\"],\"Key\":\"Severity\"}],\"ApproveAfterDays\":7,\"ComplianceLevel\":\"Unspecified\"}]}")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:oos:PatchBaseline
///     properties:
///       patchBaselineName: ${name}
///       operationSystem: Windows
///       approvalRules: '{"PatchRules":[{"EnableNonSecurity":true,"PatchFilterGroup":[{"Values":["*"],"Key":"Product"},{"Values":["Security","Bugfix"],"Key":"Classification"},{"Values":["Critical","Important"],"Key":"Severity"}],"ApproveAfterDays":7,"ComplianceLevel":"Unspecified"}]}'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OOS Patch Baseline can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oos/patchBaseline:PatchBaseline example <id>
/// ```
class PatchBaseline extends pulumi.CustomResource {
  /// Accept the rules. This value follows the json format. For more details, see the description of [ApprovalRules in the Request parameters table for details](https://www.alibabacloud.com/help/zh/operation-orchestration-service/latest/api-oos-2019-06-01-createpatchbaseline).
  late final pulumi.Output<String> approvalRules;
  /// Approved Patch.
  late final pulumi.Output<List<String>?> approvedPatches;
  /// ApprovedPatchesEnableNonSecurity.
  late final pulumi.Output<bool?> approvedPatchesEnableNonSecurity;
  /// Creation time.
  late final pulumi.Output<String> createTime;
  /// Patches baseline description information.
  late final pulumi.Output<String?> description;
  /// Operating system type. Valid values: `AliyunLinux`, `Anolis`, `CentOS`, `Debian`, `RedhatEnterpriseLinux`, `Ubuntu`, `Windows`, `AlmaLinux`.
  late final pulumi.Output<String> operationSystem;
  /// The name of the patch baseline.
  late final pulumi.Output<String> patchBaselineName;
  /// Reject patches.
  late final pulumi.Output<List<String>?> rejectedPatches;
  /// Rejected patches action. Valid values: `ALLOW_AS_DEPENDENCY`, `BLOCK`.
  late final pulumi.Output<String> rejectedPatchesAction;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// Source.
  late final pulumi.Output<List<String>?> sources;
  /// Label.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [PatchBaseline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PatchBaseline]. {@macro pulumi_oos_patch_baseline_patch_baseline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PatchBaseline(
    String name, {
    PatchBaselineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oos/patchBaseline:PatchBaseline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.approvalRules = registerOutput<String>('approvalRules');
    this.approvedPatches = registerOutput<List<String>?>('approvedPatches');
    this.approvedPatchesEnableNonSecurity = registerOutput<bool?>('approvedPatchesEnableNonSecurity');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.operationSystem = registerOutput<String>('operationSystem');
    this.patchBaselineName = registerOutput<String>('patchBaselineName');
    this.rejectedPatches = registerOutput<List<String>?>('rejectedPatches');
    this.rejectedPatchesAction = registerOutput<String>('rejectedPatchesAction');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.sources = registerOutput<List<String>?>('sources');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
