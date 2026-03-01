import 'package:pulumi/pulumi.dart' as pulumi;
import 'smartag_flow_log_args.dart';

/// Provides a Smartag Flow Log resource.
///
/// For information about Smartag Flow Log and how to use it, see [What is Flow Log](https://www.alibabacloud.com/help/en/smart-access-gateway/latest/createflowlog).
///
/// > **NOTE:** Available since v1.168.0.
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
/// const example = new alicloud.sag.SmartagFlowLog("example", {
///     netflowServerIp: "192.168.0.2",
///     netflowServerPort: 9995,
///     netflowVersion: "V9",
///     outputType: "netflow",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.sag.SmartagFlowLog("example",
///     netflow_server_ip="192.168.0.2",
///     netflow_server_port=9995,
///     netflow_version="V9",
///     output_type="netflow")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Sag.SmartagFlowLog("example", new()
///     {
///         NetflowServerIp = "192.168.0.2",
///         NetflowServerPort = 9995,
///         NetflowVersion = "V9",
///         OutputType = "netflow",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sag"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sag.NewSmartagFlowLog(ctx, "example", &sag.SmartagFlowLogArgs{
/// 			NetflowServerIp:   pulumi.String("192.168.0.2"),
/// 			NetflowServerPort: pulumi.Int(9995),
/// 			NetflowVersion:    pulumi.String("V9"),
/// 			OutputType:        pulumi.String("netflow"),
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
/// import com.pulumi.alicloud.sag.SmartagFlowLog;
/// import com.pulumi.alicloud.sag.SmartagFlowLogArgs;
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
///         var example = new SmartagFlowLog("example", SmartagFlowLogArgs.builder()
///             .netflowServerIp("192.168.0.2")
///             .netflowServerPort(9995)
///             .netflowVersion("V9")
///             .outputType("netflow")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:sag:SmartagFlowLog
///     properties:
///       netflowServerIp: 192.168.0.2
///       netflowServerPort: 9995
///       netflowVersion: V9
///       outputType: netflow
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Smartag Flow Log can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sag/smartagFlowLog:SmartagFlowLog example <id>
/// ```
class SmartagFlowLog extends pulumi.CustomResource {
  /// The time interval at which log data of active connections is collected. Valid values: `60` to `6000`. Default value: `300`. Unit: second.
  late final pulumi.Output<int> activeAging;
  /// The description of the flow log.
  late final pulumi.Output<String?> description;
  /// The name of the flow log.
  late final pulumi.Output<String?> flowLogName;
  /// The time interval at which log data of inactive connections is connected. Valid values: `10` to `600`. Default value: `15`. Unit: second.
  late final pulumi.Output<int> inactiveAging;
  /// The Logstore in Log Service. If `output_type` is set to `sls` or `all`, this parameter is required.
  late final pulumi.Output<String?> logstoreName;
  /// The IP address of the NetFlow collector where the flow log is stored. If `output_type` is set to `netflow` or `all`, this parameter is required.
  late final pulumi.Output<String?> netflowServerIp;
  /// The port of the NetFlow collector. Default value: `9995`. If `output_type` is set to `netflow` or `all`, this parameter is required.
  late final pulumi.Output<int> netflowServerPort;
  /// The NetFlow version. Default value: `V9`. Valid values: `V10`, `V5`, `V9`. If `output_type` is set to `netflow` or `all`, this parameter is required.
  late final pulumi.Output<String> netflowVersion;
  /// The location where the flow log is stored. Valid values:
  late final pulumi.Output<String> outputType;
  /// The project in Log Service. If `output_type` is set to `sls` or `all`, this parameter is required.
  late final pulumi.Output<String?> projectName;
  /// The ID of the region where Log Service is deployed. If `output_type` is set to `sls` or `all`, this parameter is required.
  late final pulumi.Output<String?> slsRegionId;
  /// The status of the flow log. Valid values:  `Active`: The flow log is enabled. `Inactive`: The flow log is disabled.
  late final pulumi.Output<String> status;

  /// Creates a new [SmartagFlowLog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SmartagFlowLog]. {@macro pulumi_sag_smartag_flow_log_smartag_flow_log_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SmartagFlowLog(
    String name, {
    SmartagFlowLogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sag/smartagFlowLog:SmartagFlowLog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activeAging = registerOutput<int>('activeAging');
    this.description = registerOutput<String?>('description');
    this.flowLogName = registerOutput<String?>('flowLogName');
    this.inactiveAging = registerOutput<int>('inactiveAging');
    this.logstoreName = registerOutput<String?>('logstoreName');
    this.netflowServerIp = registerOutput<String?>('netflowServerIp');
    this.netflowServerPort = registerOutput<int>('netflowServerPort');
    this.netflowVersion = registerOutput<String>('netflowVersion');
    this.outputType = registerOutput<String>('outputType');
    this.projectName = registerOutput<String?>('projectName');
    this.slsRegionId = registerOutput<String?>('slsRegionId');
    this.status = registerOutput<String>('status');
  }
}
