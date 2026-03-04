import 'package:pulumi/pulumi.dart' as pulumi;
import 'industrial_pid_loop_args.dart';
import 'industrial_pid_loop_state.dart';

/// Provides a Brain Industrial Pid Loop resource.
///
/// &gt; **NOTE:** Available since v1.117.0.
///
/// &gt; **DEPRECATED:**  This resource has been deprecated from version `1.229.1`.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = new alicloud.brain.IndustrialPidLoop("example", {
///     pidLoopConfiguration: "YourLoopConfiguration",
///     pidLoopDcsType: "standard",
///     pidLoopIsCrucial: true,
///     pidLoopName: "tf-testAcc",
///     pidLoopType: "0",
///     pidProjectId: "856c6b8f-ca63-40a4-xxxx-xxxx",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.brain.IndustrialPidLoop("example",
///     pid_loop_configuration="YourLoopConfiguration",
///     pid_loop_dcs_type="standard",
///     pid_loop_is_crucial=True,
///     pid_loop_name="tf-testAcc",
///     pid_loop_type="0",
///     pid_project_id="856c6b8f-ca63-40a4-xxxx-xxxx")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Brain.IndustrialPidLoop("example", new()
///     {
///         PidLoopConfiguration = "YourLoopConfiguration",
///         PidLoopDcsType = "standard",
///         PidLoopIsCrucial = true,
///         PidLoopName = "tf-testAcc",
///         PidLoopType = "0",
///         PidProjectId = "856c6b8f-ca63-40a4-xxxx-xxxx",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/brain"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := brain.NewIndustrialPidLoop(ctx, "example", &brain.IndustrialPidLoopArgs{
/// 			PidLoopConfiguration: pulumi.String("YourLoopConfiguration"),
/// 			PidLoopDcsType:       pulumi.String("standard"),
/// 			PidLoopIsCrucial:     pulumi.Bool(true),
/// 			PidLoopName:          pulumi.String("tf-testAcc"),
/// 			PidLoopType:          pulumi.String("0"),
/// 			PidProjectId:         pulumi.String("856c6b8f-ca63-40a4-xxxx-xxxx"),
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
/// import com.pulumi.alicloud.brain.IndustrialPidLoop;
/// import com.pulumi.alicloud.brain.IndustrialPidLoopArgs;
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
///         var example = new IndustrialPidLoop("example", IndustrialPidLoopArgs.builder()
///             .pidLoopConfiguration("YourLoopConfiguration")
///             .pidLoopDcsType("standard")
///             .pidLoopIsCrucial(true)
///             .pidLoopName("tf-testAcc")
///             .pidLoopType("0")
///             .pidProjectId("856c6b8f-ca63-40a4-xxxx-xxxx")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:brain:IndustrialPidLoop
///     properties:
///       pidLoopConfiguration: YourLoopConfiguration
///       pidLoopDcsType: standard
///       pidLoopIsCrucial: true
///       pidLoopName: tf-testAcc
///       pidLoopType: '0'
///       pidProjectId: 856c6b8f-ca63-40a4-xxxx-xxxx
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Brain Industrial Pid Loop can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:brain/industrialPidLoop:IndustrialPidLoop example <id>
/// ```
class IndustrialPidLoop extends pulumi.CustomResource {
  /// The Pid Loop Configuration.
  late final pulumi.Output<String> pidLoopConfiguration;

  /// The dcs type of Pid Loop. Valid values: `standard`.
  late final pulumi.Output<String> pidLoopDcsType;

  /// The desc of Pid Loop.
  late final pulumi.Output<String?> pidLoopDesc;

  /// Whether is crucial Pid Loop.
  late final pulumi.Output<bool> pidLoopIsCrucial;

  /// The name of Pid Loop.
  late final pulumi.Output<String> pidLoopName;

  /// The type of Pid Loop. Valid values: `0`, `1`, `2`, `3`, `4`, `5`.
  late final pulumi.Output<String> pidLoopType;

  /// The pid project id.
  late final pulumi.Output<String> pidProjectId;

  /// The status of Pid Loop.
  late final pulumi.Output<String> status;

  /// Creates a new [IndustrialPidLoop].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IndustrialPidLoop]. {@macro pulumi_brain_industrial_pid_loop_industrial_pid_loop_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IndustrialPidLoop(
    String name, {
    IndustrialPidLoopArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:brain/industrialPidLoop:IndustrialPidLoop',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    pidLoopConfiguration = registerOutput<String>('pidLoopConfiguration');
    pidLoopDcsType = registerOutput<String>('pidLoopDcsType');
    pidLoopDesc = registerOutput<String?>('pidLoopDesc');
    pidLoopIsCrucial = registerOutput<bool>('pidLoopIsCrucial');
    pidLoopName = registerOutput<String>('pidLoopName');
    pidLoopType = registerOutput<String>('pidLoopType');
    pidProjectId = registerOutput<String>('pidProjectId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [IndustrialPidLoop] resource's state with the given [name] and [id].
  static IndustrialPidLoop get(
    String name,
    pulumi.Input<String> id, {
    IndustrialPidLoopState? state,
  }) {
    return IndustrialPidLoop._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IndustrialPidLoop._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:brain/industrialPidLoop:IndustrialPidLoop',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    pidLoopConfiguration = registerOutput<String>('pidLoopConfiguration');
    pidLoopDcsType = registerOutput<String>('pidLoopDcsType');
    pidLoopDesc = registerOutput<String?>('pidLoopDesc');
    pidLoopIsCrucial = registerOutput<bool>('pidLoopIsCrucial');
    pidLoopName = registerOutput<String>('pidLoopName');
    pidLoopType = registerOutput<String>('pidLoopType');
    pidProjectId = registerOutput<String>('pidProjectId');
    status = registerOutput<String>('status');
  }
}
