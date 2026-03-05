import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_args.dart';
import 'job_template_state.dart';

/// Provides a Ehpc Job Template resource.
///
/// For information about Ehpc Job Template and how to use it, see [What is Job Template](https://www.alibabacloud.com/help/product/57664.html).
///
/// &gt; **NOTE:** Available since v1.133.0.
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
/// const _default = new alicloud.ehpc.JobTemplate("default", {
///     jobTemplateName: "example_value",
///     commandLine: "./LammpsTest/lammps.pbs",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ehpc.JobTemplate("default",
///     job_template_name="example_value",
///     command_line="./LammpsTest/lammps.pbs")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Ehpc.JobTemplate("default", new()
///     {
///         JobTemplateName = "example_value",
///         CommandLine = "./LammpsTest/lammps.pbs",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ehpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ehpc.NewJobTemplate(ctx, "default", &ehpc.JobTemplateArgs{
/// 			JobTemplateName: pulumi.String("example_value"),
/// 			CommandLine:     pulumi.String("./LammpsTest/lammps.pbs"),
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
/// import com.pulumi.alicloud.ehpc.JobTemplate;
/// import com.pulumi.alicloud.ehpc.JobTemplateArgs;
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
///         var default_ = new JobTemplate("default", JobTemplateArgs.builder()
///             .jobTemplateName("example_value")
///             .commandLine("./LammpsTest/lammps.pbs")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:ehpc:JobTemplate
///     properties:
///       jobTemplateName: example_value
///       commandLine: ./LammpsTest/lammps.pbs
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ehpc Job Template can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ehpc/jobTemplate:JobTemplate example <id>
/// ```
class JobTemplate extends pulumi.CustomResource {
  /// Queue Jobs, Is of the Form: 1-10:2.
  late final pulumi.Output<String?> arrayRequest;
  /// Job Maximum Run Time.
  late final pulumi.Output<String?> clockTime;
  /// Job Commands.
  late final pulumi.Output<String> commandLine;
  /// A Single Compute Node Using the GPU Number.Possible Values: 1~20000.
  late final pulumi.Output<int?> gpu;
  /// A Job Template Name.
  late final pulumi.Output<String> jobTemplateName;
  /// A Single Compute Node Maximum Memory.
  late final pulumi.Output<String?> mem;
  /// Submit a Task Is Required for Computing the Number of Data Nodes to Be. Possible Values: 1~5000 .
  late final pulumi.Output<int?> node;
  /// Job Commands the Directory.
  late final pulumi.Output<String?> packagePath;
  /// The Job Priority.
  late final pulumi.Output<int?> priority;
  /// The Job Queue.
  late final pulumi.Output<String?> queue;
  /// If the Job Is Support for the Re-Run.
  late final pulumi.Output<bool> reRunable;
  /// The name of the user who performed the job.
  late final pulumi.Output<String?> runasUser;
  /// Error Output Path.
  late final pulumi.Output<String?> stderrRedirectPath;
  /// Standard Output Path and.
  late final pulumi.Output<String?> stdoutRedirectPath;
  /// A Single Compute Node Required Number of Tasks. Possible Values: 1~20000 .
  late final pulumi.Output<int?> task;
  /// A Single Task and the Number of Required Threads.
  late final pulumi.Output<int?> thread;
  /// The Job of the Environment Variable.
  late final pulumi.Output<String?> variables;

  /// Creates a new [JobTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobTemplate]. {@macro pulumi_ehpc_job_template_job_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobTemplate(
    String name, {
    JobTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ehpc/jobTemplate:JobTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arrayRequest = registerOutput<String?>('arrayRequest');
    clockTime = registerOutput<String?>('clockTime');
    commandLine = registerOutput<String>('commandLine');
    gpu = registerOutput<int?>('gpu');
    jobTemplateName = registerOutput<String>('jobTemplateName');
    mem = registerOutput<String?>('mem');
    node = registerOutput<int?>('node');
    packagePath = registerOutput<String?>('packagePath');
    priority = registerOutput<int?>('priority');
    queue = registerOutput<String?>('queue');
    reRunable = registerOutput<bool>('reRunable');
    runasUser = registerOutput<String?>('runasUser');
    stderrRedirectPath = registerOutput<String?>('stderrRedirectPath');
    stdoutRedirectPath = registerOutput<String?>('stdoutRedirectPath');
    task = registerOutput<int?>('task');
    thread = registerOutput<int?>('thread');
    variables = registerOutput<String?>('variables');
  }

  /// Gets an existing [JobTemplate] resource's state with the given [name] and [id].
  static JobTemplate get(
    String name,
    pulumi.Input<String> id, {
    JobTemplateState? state,
  }) {
    return JobTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  JobTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ehpc/jobTemplate:JobTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arrayRequest = registerOutput<String?>('arrayRequest');
    clockTime = registerOutput<String?>('clockTime');
    commandLine = registerOutput<String>('commandLine');
    gpu = registerOutput<int?>('gpu');
    jobTemplateName = registerOutput<String>('jobTemplateName');
    mem = registerOutput<String?>('mem');
    node = registerOutput<int?>('node');
    packagePath = registerOutput<String?>('packagePath');
    priority = registerOutput<int?>('priority');
    queue = registerOutput<String?>('queue');
    reRunable = registerOutput<bool>('reRunable');
    runasUser = registerOutput<String?>('runasUser');
    stderrRedirectPath = registerOutput<String?>('stderrRedirectPath');
    stdoutRedirectPath = registerOutput<String?>('stdoutRedirectPath');
    task = registerOutput<int?>('task');
    thread = registerOutput<int?>('thread');
    variables = registerOutput<String?>('variables');
  }
}
