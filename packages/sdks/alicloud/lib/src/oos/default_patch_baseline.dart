import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_patch_baseline_args.dart';
import 'default_patch_baseline_state.dart';

/// Provides a Oos Default Patch Baseline resource.
///
/// For information about Oos Default Patch Baseline and how to use it, see [What is Default Patch Baseline](https://www.alibabacloud.com/help/en/operation-orchestration-service/latest/api-oos-2019-06-01-registerdefaultpatchbaseline).
///
/// &gt; **NOTE:** Available since v1.203.0.
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
/// const _default = new alicloud.oos.PatchBaseline("default", {
///     operationSystem: "Windows",
///     patchBaselineName: "terraform-example",
///     description: "terraform-example",
///     approvalRules: "{\"PatchRules\":[{\"PatchFilterGroup\":[{\"Key\":\"PatchSet\",\"Values\":[\"OS\"]},{\"Key\":\"ProductFamily\",\"Values\":[\"Windows\"]},{\"Key\":\"Product\",\"Values\":[\"Windows 10\",\"Windows 7\"]},{\"Key\":\"Classification\",\"Values\":[\"Security Updates\",\"Updates\",\"Update Rollups\",\"Critical Updates\"]},{\"Key\":\"Severity\",\"Values\":[\"Critical\",\"Important\",\"Moderate\"]}],\"ApproveAfterDays\":7,\"EnableNonSecurity\":true,\"ComplianceLevel\":\"Medium\"}]}",
/// });
/// const defaultDefaultPatchBaseline = new alicloud.oos.DefaultPatchBaseline("default", {patchBaselineName: _default.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.oos.PatchBaseline("default",
///     operation_system="Windows",
///     patch_baseline_name="terraform-example",
///     description="terraform-example",
///     approval_rules="{\"PatchRules\":[{\"PatchFilterGroup\":[{\"Key\":\"PatchSet\",\"Values\":[\"OS\"]},{\"Key\":\"ProductFamily\",\"Values\":[\"Windows\"]},{\"Key\":\"Product\",\"Values\":[\"Windows 10\",\"Windows 7\"]},{\"Key\":\"Classification\",\"Values\":[\"Security Updates\",\"Updates\",\"Update Rollups\",\"Critical Updates\"]},{\"Key\":\"Severity\",\"Values\":[\"Critical\",\"Important\",\"Moderate\"]}],\"ApproveAfterDays\":7,\"EnableNonSecurity\":true,\"ComplianceLevel\":\"Medium\"}]}")
/// default_default_patch_baseline = alicloud.oos.DefaultPatchBaseline("default", patch_baseline_name=default.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Oos.PatchBaseline("default", new()
///     {
///         OperationSystem = "Windows",
///         PatchBaselineName = "terraform-example",
///         Description = "terraform-example",
///         ApprovalRules = "{\"PatchRules\":[{\"PatchFilterGroup\":[{\"Key\":\"PatchSet\",\"Values\":[\"OS\"]},{\"Key\":\"ProductFamily\",\"Values\":[\"Windows\"]},{\"Key\":\"Product\",\"Values\":[\"Windows 10\",\"Windows 7\"]},{\"Key\":\"Classification\",\"Values\":[\"Security Updates\",\"Updates\",\"Update Rollups\",\"Critical Updates\"]},{\"Key\":\"Severity\",\"Values\":[\"Critical\",\"Important\",\"Moderate\"]}],\"ApproveAfterDays\":7,\"EnableNonSecurity\":true,\"ComplianceLevel\":\"Medium\"}]}",
///     });
///
///     var defaultDefaultPatchBaseline = new AliCloud.Oos.DefaultPatchBaseline("default", new()
///     {
///         PatchBaselineName = @default.Id,
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
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := oos.NewPatchBaseline(ctx, "default", &oos.PatchBaselineArgs{
/// 			OperationSystem:   pulumi.String("Windows"),
/// 			PatchBaselineName: pulumi.String("terraform-example"),
/// 			Description:       pulumi.String("terraform-example"),
/// 			ApprovalRules:     pulumi.String("{\"PatchRules\":[{\"PatchFilterGroup\":[{\"Key\":\"PatchSet\",\"Values\":[\"OS\"]},{\"Key\":\"ProductFamily\",\"Values\":[\"Windows\"]},{\"Key\":\"Product\",\"Values\":[\"Windows 10\",\"Windows 7\"]},{\"Key\":\"Classification\",\"Values\":[\"Security Updates\",\"Updates\",\"Update Rollups\",\"Critical Updates\"]},{\"Key\":\"Severity\",\"Values\":[\"Critical\",\"Important\",\"Moderate\"]}],\"ApproveAfterDays\":7,\"EnableNonSecurity\":true,\"ComplianceLevel\":\"Medium\"}]}"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oos.NewDefaultPatchBaseline(ctx, "default", &oos.DefaultPatchBaselineArgs{
/// 			PatchBaselineName: _default.ID(),
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
/// import com.pulumi.alicloud.oos.DefaultPatchBaseline;
/// import com.pulumi.alicloud.oos.DefaultPatchBaselineArgs;
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
///         var default_ = new PatchBaseline("default", PatchBaselineArgs.builder()
///             .operationSystem("Windows")
///             .patchBaselineName("terraform-example")
///             .description("terraform-example")
///             .approvalRules("{\"PatchRules\":[{\"PatchFilterGroup\":[{\"Key\":\"PatchSet\",\"Values\":[\"OS\"]},{\"Key\":\"ProductFamily\",\"Values\":[\"Windows\"]},{\"Key\":\"Product\",\"Values\":[\"Windows 10\",\"Windows 7\"]},{\"Key\":\"Classification\",\"Values\":[\"Security Updates\",\"Updates\",\"Update Rollups\",\"Critical Updates\"]},{\"Key\":\"Severity\",\"Values\":[\"Critical\",\"Important\",\"Moderate\"]}],\"ApproveAfterDays\":7,\"EnableNonSecurity\":true,\"ComplianceLevel\":\"Medium\"}]}")
///             .build());
///
///         var defaultDefaultPatchBaseline = new DefaultPatchBaseline("defaultDefaultPatchBaseline", DefaultPatchBaselineArgs.builder()
///             .patchBaselineName(default_.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:oos:PatchBaseline
///     properties:
///       operationSystem: Windows
///       patchBaselineName: terraform-example
///       description: terraform-example
///       approvalRules: '{"PatchRules":[{"PatchFilterGroup":[{"Key":"PatchSet","Values":["OS"]},{"Key":"ProductFamily","Values":["Windows"]},{"Key":"Product","Values":["Windows 10","Windows 7"]},{"Key":"Classification","Values":["Security Updates","Updates","Update Rollups","Critical Updates"]},{"Key":"Severity","Values":["Critical","Important","Moderate"]}],"ApproveAfterDays":7,"EnableNonSecurity":true,"ComplianceLevel":"Medium"}]}'
///   defaultDefaultPatchBaseline:
///     type: alicloud:oos:DefaultPatchBaseline
///     name: default
///     properties:
///       patchBaselineName: ${default.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Oos Default Patch Baseline can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oos/defaultPatchBaseline:DefaultPatchBaseline example <id>
/// ```
class DefaultPatchBaseline extends pulumi.CustomResource {
  /// The ID of the patch baseline.
  late final pulumi.Output<String> patchBaselineId;
  /// The name of the patch baseline.
  late final pulumi.Output<String> patchBaselineName;

  /// Creates a new [DefaultPatchBaseline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultPatchBaseline]. {@macro pulumi_oos_default_patch_baseline_default_patch_baseline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultPatchBaseline(
    String name, {
    DefaultPatchBaselineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oos/defaultPatchBaseline:DefaultPatchBaseline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    patchBaselineId = registerOutput<String>('patchBaselineId');
    patchBaselineName = registerOutput<String>('patchBaselineName');
  }

  /// Gets an existing [DefaultPatchBaseline] resource's state with the given [name] and [id].
  static DefaultPatchBaseline get(
    String name,
    pulumi.Input<String> id, {
    DefaultPatchBaselineState? state,
  }) {
    return DefaultPatchBaseline._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DefaultPatchBaseline._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oos/defaultPatchBaseline:DefaultPatchBaseline',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    patchBaselineId = registerOutput<String>('patchBaselineId');
    patchBaselineName = registerOutput<String>('patchBaselineName');
  }
}
