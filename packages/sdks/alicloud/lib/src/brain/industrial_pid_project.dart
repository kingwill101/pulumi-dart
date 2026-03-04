import 'package:pulumi/pulumi.dart' as pulumi;
import 'industrial_pid_project_args.dart';
import 'industrial_pid_project_state.dart';

/// Provides a Brain Industrial Pid Project resource.
///
/// &gt; **NOTE:** Available since v1.113.0.
///
/// &gt; **DEPRECATED:**  This resource has been deprecated from version `1.222.0`.
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
/// const example = new alicloud.brain.IndustrialPidProject("example", {
///     pidOrganizationId: "3e74e684-cbb5-xxxx",
///     pidProjectName: "tf-testAcc",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.brain.IndustrialPidProject("example",
///     pid_organization_id="3e74e684-cbb5-xxxx",
///     pid_project_name="tf-testAcc")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Brain.IndustrialPidProject("example", new()
///     {
///         PidOrganizationId = "3e74e684-cbb5-xxxx",
///         PidProjectName = "tf-testAcc",
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
/// 		_, err := brain.NewIndustrialPidProject(ctx, "example", &brain.IndustrialPidProjectArgs{
/// 			PidOrganizationId: pulumi.String("3e74e684-cbb5-xxxx"),
/// 			PidProjectName:    pulumi.String("tf-testAcc"),
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
/// import com.pulumi.alicloud.brain.IndustrialPidProject;
/// import com.pulumi.alicloud.brain.IndustrialPidProjectArgs;
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
///         var example = new IndustrialPidProject("example", IndustrialPidProjectArgs.builder()
///             .pidOrganizationId("3e74e684-cbb5-xxxx")
///             .pidProjectName("tf-testAcc")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:brain:IndustrialPidProject
///     properties:
///       pidOrganizationId: 3e74e684-cbb5-xxxx
///       pidProjectName: tf-testAcc
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Brain Industrial Pid Project can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:brain/industrialPidProject:IndustrialPidProject example <id>
/// ```
class IndustrialPidProject extends pulumi.CustomResource {
  /// The ID of Pid Organization.
  late final pulumi.Output<String> pidOrganizationId;

  /// The description of Pid Project.
  late final pulumi.Output<String?> pidProjectDesc;

  /// The name of Pid Project.
  late final pulumi.Output<String> pidProjectName;

  /// Creates a new [IndustrialPidProject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IndustrialPidProject]. {@macro pulumi_brain_industrial_pid_project_industrial_pid_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IndustrialPidProject(
    String name, {
    IndustrialPidProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:brain/industrialPidProject:IndustrialPidProject',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    pidOrganizationId = registerOutput<String>('pidOrganizationId');
    pidProjectDesc = registerOutput<String?>('pidProjectDesc');
    pidProjectName = registerOutput<String>('pidProjectName');
  }

  /// Gets an existing [IndustrialPidProject] resource's state with the given [name] and [id].
  static IndustrialPidProject get(
    String name,
    pulumi.Input<String> id, {
    IndustrialPidProjectState? state,
  }) {
    return IndustrialPidProject._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IndustrialPidProject._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:brain/industrialPidProject:IndustrialPidProject',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    pidOrganizationId = registerOutput<String>('pidOrganizationId');
    pidProjectDesc = registerOutput<String?>('pidProjectDesc');
    pidProjectName = registerOutput<String>('pidProjectName');
  }
}
