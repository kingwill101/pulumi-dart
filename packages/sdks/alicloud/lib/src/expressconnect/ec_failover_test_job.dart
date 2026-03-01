import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec_failover_test_job_args.dart';
import 'ec_failover_test_job_state.dart';

/// Provides a Express Connect Ec Failover Test Job resource. Express Connect Failover Test Job.
///
/// For information about Express Connect Ec Failover Test Job and how to use it, see [What is Ec Failover Test Job](https://www.alibabacloud.com/help/zh/express-connect/developer-reference/api-vpc-2016-04-28-createfailovertestjob-efficiency-channels).
///
/// > **NOTE:** Available since v1.215.0.
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
/// const _default = alicloud.expressconnect.getPhysicalConnections({
///     nameRegex: "preserved-NODELETING",
/// });
/// const defaultEcFailoverTestJob = new alicloud.expressconnect.EcFailoverTestJob("default", {
///     description: name,
///     jobType: "StartNow",
///     resourceIds: [
///         _default.then(_default => _default.ids?.[0]),
///         _default.then(_default => _default.ids?.[1]),
///     ],
///     jobDuration: 1,
///     resourceType: "PHYSICALCONNECTION",
///     ecFailoverTestJobName: name,
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
/// default = alicloud.expressconnect.get_physical_connections(name_regex="preserved-NODELETING")
/// default_ec_failover_test_job = alicloud.expressconnect.EcFailoverTestJob("default",
///     description=name,
///     job_type="StartNow",
///     resource_ids=[
///         default.ids[0],
///         default.ids[1],
///     ],
///     job_duration=1,
///     resource_type="PHYSICALCONNECTION",
///     ec_failover_test_job_name=name)
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
///     var @default = AliCloud.ExpressConnect.GetPhysicalConnections.Invoke(new()
///     {
///         NameRegex = "preserved-NODELETING",
///     });
///
///     var defaultEcFailoverTestJob = new AliCloud.ExpressConnect.EcFailoverTestJob("default", new()
///     {
///         Description = name,
///         JobType = "StartNow",
///         ResourceIds = new[]
///         {
///             @default.Apply(@default => @default.Apply(getPhysicalConnectionsResult => getPhysicalConnectionsResult.Ids[0])),
///             @default.Apply(@default => @default.Apply(getPhysicalConnectionsResult => getPhysicalConnectionsResult.Ids[1])),
///         },
///         JobDuration = 1,
///         ResourceType = "PHYSICALCONNECTION",
///         EcFailoverTestJobName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
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
/// 		_default, err := expressconnect.GetPhysicalConnections(ctx, &expressconnect.GetPhysicalConnectionsArgs{
/// 			NameRegex: pulumi.StringRef("preserved-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = expressconnect.NewEcFailoverTestJob(ctx, "default", &expressconnect.EcFailoverTestJobArgs{
/// 			Description: pulumi.String(name),
/// 			JobType:     pulumi.String("StartNow"),
/// 			ResourceIds: pulumi.StringArray{
/// 				pulumi.String(_default.Ids[0]),
/// 				pulumi.String(_default.Ids[1]),
/// 			},
/// 			JobDuration:           pulumi.Int(1),
/// 			ResourceType:          pulumi.String("PHYSICALCONNECTION"),
/// 			EcFailoverTestJobName: pulumi.String(name),
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
/// import com.pulumi.alicloud.expressconnect.ExpressconnectFunctions;
/// import com.pulumi.alicloud.expressconnect.inputs.GetPhysicalConnectionsArgs;
/// import com.pulumi.alicloud.expressconnect.EcFailoverTestJob;
/// import com.pulumi.alicloud.expressconnect.EcFailoverTestJobArgs;
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
///         final var default = ExpressconnectFunctions.getPhysicalConnections(GetPhysicalConnectionsArgs.builder()
///             .nameRegex("preserved-NODELETING")
///             .build());
///
///         var defaultEcFailoverTestJob = new EcFailoverTestJob("defaultEcFailoverTestJob", EcFailoverTestJobArgs.builder()
///             .description(name)
///             .jobType("StartNow")
///             .resourceIds(
///                 default_.ids()[0],
///                 default_.ids()[1])
///             .jobDuration(1)
///             .resourceType("PHYSICALCONNECTION")
///             .ecFailoverTestJobName(name)
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
///   defaultEcFailoverTestJob:
///     type: alicloud:expressconnect:EcFailoverTestJob
///     name: default
///     properties:
///       description: ${name}
///       jobType: StartNow
///       resourceIds:
///         - ${default.ids[0]}
///         - ${default.ids[1]}
///       jobDuration: '1'
///       resourceType: PHYSICALCONNECTION
///       ecFailoverTestJobName: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:expressconnect:getPhysicalConnections
///       arguments:
///         nameRegex: preserved-NODELETING
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Express Connect Ec Failover Test Job can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:expressconnect/ecFailoverTestJob:EcFailoverTestJob example <id>
/// ```
class EcFailoverTestJob extends pulumi.CustomResource {
  /// Job description.
  late final pulumi.Output<String?> description;
  /// Job name.
  late final pulumi.Output<String?> ecFailoverTestJobName;
  /// Job duration.
  late final pulumi.Output<int> jobDuration;
  /// Job type.
  late final pulumi.Output<String> jobType;
  /// Resource id list.
  late final pulumi.Output<List<String>> resourceIds;
  /// Resource type.
  late final pulumi.Output<String> resourceType;
  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// Creates a new [EcFailoverTestJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcFailoverTestJob]. {@macro pulumi_expressconnect_ec_failover_test_job_ec_failover_test_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcFailoverTestJob(
    String name, {
    EcFailoverTestJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:expressconnect/ecFailoverTestJob:EcFailoverTestJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.ecFailoverTestJobName = registerOutput<String?>('ecFailoverTestJobName');
    this.jobDuration = registerOutput<int>('jobDuration');
    this.jobType = registerOutput<String>('jobType');
    this.resourceIds = registerOutput<List<String>>('resourceIds');
    this.resourceType = registerOutput<String>('resourceType');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [EcFailoverTestJob] resource's state with the given [name] and [id].
  static EcFailoverTestJob get(
    String name,
    pulumi.Input<String> id, {
    EcFailoverTestJobState? state,
  }) {
    return EcFailoverTestJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EcFailoverTestJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:expressconnect/ecFailoverTestJob:EcFailoverTestJob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.ecFailoverTestJobName = registerOutput<String?>('ecFailoverTestJobName');
    this.jobDuration = registerOutput<int>('jobDuration');
    this.jobType = registerOutput<String>('jobType');
    this.resourceIds = registerOutput<List<String>>('resourceIds');
    this.resourceType = registerOutput<String>('resourceType');
    this.status = registerOutput<String>('status');
  }
}
