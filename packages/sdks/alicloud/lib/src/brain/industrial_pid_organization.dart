import 'package:pulumi/pulumi.dart' as pulumi;
import 'industrial_pid_organization_args.dart';
import 'industrial_pid_organization_state.dart';

/// Provides a Brain Industrial Pid Organization resource.
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
/// const example = new alicloud.brain.IndustrialPidOrganization("example", {pidOrganizationName: "tf-testAcc"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.brain.IndustrialPidOrganization("example", pid_organization_name="tf-testAcc")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Brain.IndustrialPidOrganization("example", new()
///     {
///         PidOrganizationName = "tf-testAcc",
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
/// 		_, err := brain.NewIndustrialPidOrganization(ctx, "example", &brain.IndustrialPidOrganizationArgs{
/// 			PidOrganizationName: pulumi.String("tf-testAcc"),
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
/// import com.pulumi.alicloud.brain.IndustrialPidOrganization;
/// import com.pulumi.alicloud.brain.IndustrialPidOrganizationArgs;
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
///         var example = new IndustrialPidOrganization("example", IndustrialPidOrganizationArgs.builder()
///             .pidOrganizationName("tf-testAcc")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:brain:IndustrialPidOrganization
///     properties:
///       pidOrganizationName: tf-testAcc
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Brain Industrial Pid Organization can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:brain/industrialPidOrganization:IndustrialPidOrganization example <id>
/// ```
class IndustrialPidOrganization extends pulumi.CustomResource {
  /// The ID of parent pid organization.
  late final pulumi.Output<String?> parentPidOrganizationId;

  /// The name of pid organization.
  late final pulumi.Output<String> pidOrganizationName;

  /// Creates a new [IndustrialPidOrganization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IndustrialPidOrganization]. {@macro pulumi_brain_industrial_pid_organization_industrial_pid_organization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IndustrialPidOrganization(
    String name, {
    IndustrialPidOrganizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:brain/industrialPidOrganization:IndustrialPidOrganization',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    parentPidOrganizationId = registerOutput<String?>(
      'parentPidOrganizationId',
    );
    pidOrganizationName = registerOutput<String>('pidOrganizationName');
  }

  /// Gets an existing [IndustrialPidOrganization] resource's state with the given [name] and [id].
  static IndustrialPidOrganization get(
    String name,
    pulumi.Input<String> id, {
    IndustrialPidOrganizationState? state,
  }) {
    return IndustrialPidOrganization._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IndustrialPidOrganization._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:brain/industrialPidOrganization:IndustrialPidOrganization',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    parentPidOrganizationId = registerOutput<String?>(
      'parentPidOrganizationId',
    );
    pidOrganizationName = registerOutput<String>('pidOrganizationName');
  }
}
