import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_group_args.dart';
import 'target_group_config.dart';
import 'target_group_state.dart';

/// Resource for managing an AWS VPC Lattice Target Group.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.TargetGroup("example", {
///     name: "example",
///     type: "INSTANCE",
///     config: {
///         vpcIdentifier: exampleAwsVpc.id,
///         port: 443,
///         protocol: "HTTPS",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.TargetGroup("example",
///     name="example",
///     type="INSTANCE",
///     config={
///         "vpc_identifier": example_aws_vpc["id"],
///         "port": 443,
///         "protocol": "HTTPS",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.TargetGroup("example", new()
///     {
///         Name = "example",
///         Type = "INSTANCE",
///         Config = new Aws.VpcLattice.Inputs.TargetGroupConfigArgs
///         {
///             VpcIdentifier = exampleAwsVpc.Id,
///             Port = 443,
///             Protocol = "HTTPS",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.NewTargetGroup(ctx, "example", &vpclattice.TargetGroupArgs{
/// 			Name: pulumi.String("example"),
/// 			Type: pulumi.String("INSTANCE"),
/// 			Config: &vpclattice.TargetGroupConfigArgs{
/// 				VpcIdentifier: pulumi.Any(exampleAwsVpc.Id),
/// 				Port:          pulumi.Int(443),
/// 				Protocol:      pulumi.String("HTTPS"),
/// 			},
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
/// import com.pulumi.aws.vpclattice.TargetGroup;
/// import com.pulumi.aws.vpclattice.TargetGroupArgs;
/// import com.pulumi.aws.vpclattice.inputs.TargetGroupConfigArgs;
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
///         var example = new TargetGroup("example", TargetGroupArgs.builder()
///             .name("example")
///             .type("INSTANCE")
///             .config(TargetGroupConfigArgs.builder()
///                 .vpcIdentifier(exampleAwsVpc.id())
///                 .port(443)
///                 .protocol("HTTPS")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:TargetGroup
///     properties:
///       name: example
///       type: INSTANCE
///       config:
///         vpcIdentifier: ${exampleAwsVpc.id}
///         port: 443
///         protocol: HTTPS
/// ```
///
///
/// ### Basic usage with Health check
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.TargetGroup("example", {
///     name: "example",
///     type: "IP",
///     config: {
///         vpcIdentifier: exampleAwsVpc.id,
///         ipAddressType: "IPV4",
///         port: 443,
///         protocol: "HTTPS",
///         protocolVersion: "HTTP1",
///         healthCheck: {
///             enabled: true,
///             healthCheckIntervalSeconds: 20,
///             healthCheckTimeoutSeconds: 10,
///             healthyThresholdCount: 7,
///             unhealthyThresholdCount: 3,
///             matcher: {
///                 value: "200-299",
///             },
///             path: "/instance",
///             port: 80,
///             protocol: "HTTP",
///             protocolVersion: "HTTP1",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.TargetGroup("example",
///     name="example",
///     type="IP",
///     config={
///         "vpc_identifier": example_aws_vpc["id"],
///         "ip_address_type": "IPV4",
///         "port": 443,
///         "protocol": "HTTPS",
///         "protocol_version": "HTTP1",
///         "health_check": {
///             "enabled": True,
///             "health_check_interval_seconds": 20,
///             "health_check_timeout_seconds": 10,
///             "healthy_threshold_count": 7,
///             "unhealthy_threshold_count": 3,
///             "matcher": {
///                 "value": "200-299",
///             },
///             "path": "/instance",
///             "port": 80,
///             "protocol": "HTTP",
///             "protocol_version": "HTTP1",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.TargetGroup("example", new()
///     {
///         Name = "example",
///         Type = "IP",
///         Config = new Aws.VpcLattice.Inputs.TargetGroupConfigArgs
///         {
///             VpcIdentifier = exampleAwsVpc.Id,
///             IpAddressType = "IPV4",
///             Port = 443,
///             Protocol = "HTTPS",
///             ProtocolVersion = "HTTP1",
///             HealthCheck = new Aws.VpcLattice.Inputs.TargetGroupConfigHealthCheckArgs
///             {
///                 Enabled = true,
///                 HealthCheckIntervalSeconds = 20,
///                 HealthCheckTimeoutSeconds = 10,
///                 HealthyThresholdCount = 7,
///                 UnhealthyThresholdCount = 3,
///                 Matcher = new Aws.VpcLattice.Inputs.TargetGroupConfigHealthCheckMatcherArgs
///                 {
///                     Value = "200-299",
///                 },
///                 Path = "/instance",
///                 Port = 80,
///                 Protocol = "HTTP",
///                 ProtocolVersion = "HTTP1",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.NewTargetGroup(ctx, "example", &vpclattice.TargetGroupArgs{
/// 			Name: pulumi.String("example"),
/// 			Type: pulumi.String("IP"),
/// 			Config: &vpclattice.TargetGroupConfigArgs{
/// 				VpcIdentifier:   pulumi.Any(exampleAwsVpc.Id),
/// 				IpAddressType:   pulumi.String("IPV4"),
/// 				Port:            pulumi.Int(443),
/// 				Protocol:        pulumi.String("HTTPS"),
/// 				ProtocolVersion: pulumi.String("HTTP1"),
/// 				HealthCheck: &vpclattice.TargetGroupConfigHealthCheckArgs{
/// 					Enabled:                    pulumi.Bool(true),
/// 					HealthCheckIntervalSeconds: pulumi.Int(20),
/// 					HealthCheckTimeoutSeconds:  pulumi.Int(10),
/// 					HealthyThresholdCount:      pulumi.Int(7),
/// 					UnhealthyThresholdCount:    pulumi.Int(3),
/// 					Matcher: &vpclattice.TargetGroupConfigHealthCheckMatcherArgs{
/// 						Value: pulumi.String("200-299"),
/// 					},
/// 					Path:            pulumi.String("/instance"),
/// 					Port:            pulumi.Int(80),
/// 					Protocol:        pulumi.String("HTTP"),
/// 					ProtocolVersion: pulumi.String("HTTP1"),
/// 				},
/// 			},
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
/// import com.pulumi.aws.vpclattice.TargetGroup;
/// import com.pulumi.aws.vpclattice.TargetGroupArgs;
/// import com.pulumi.aws.vpclattice.inputs.TargetGroupConfigArgs;
/// import com.pulumi.aws.vpclattice.inputs.TargetGroupConfigHealthCheckArgs;
/// import com.pulumi.aws.vpclattice.inputs.TargetGroupConfigHealthCheckMatcherArgs;
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
///         var example = new TargetGroup("example", TargetGroupArgs.builder()
///             .name("example")
///             .type("IP")
///             .config(TargetGroupConfigArgs.builder()
///                 .vpcIdentifier(exampleAwsVpc.id())
///                 .ipAddressType("IPV4")
///                 .port(443)
///                 .protocol("HTTPS")
///                 .protocolVersion("HTTP1")
///                 .healthCheck(TargetGroupConfigHealthCheckArgs.builder()
///                     .enabled(true)
///                     .healthCheckIntervalSeconds(20)
///                     .healthCheckTimeoutSeconds(10)
///                     .healthyThresholdCount(7)
///                     .unhealthyThresholdCount(3)
///                     .matcher(TargetGroupConfigHealthCheckMatcherArgs.builder()
///                         .value("200-299")
///                         .build())
///                     .path("/instance")
///                     .port(80)
///                     .protocol("HTTP")
///                     .protocolVersion("HTTP1")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:TargetGroup
///     properties:
///       name: example
///       type: IP
///       config:
///         vpcIdentifier: ${exampleAwsVpc.id}
///         ipAddressType: IPV4
///         port: 443
///         protocol: HTTPS
///         protocolVersion: HTTP1
///         healthCheck:
///           enabled: true
///           healthCheckIntervalSeconds: 20
///           healthCheckTimeoutSeconds: 10
///           healthyThresholdCount: 7
///           unhealthyThresholdCount: 3
///           matcher:
///             value: 200-299
///           path: /instance
///           port: 80
///           protocol: HTTP
///           protocolVersion: HTTP1
/// ```
///
///
/// ### ALB
///
/// If the type is ALB, `health_check` block is not supported.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.TargetGroup("example", {
///     name: "example",
///     type: "ALB",
///     config: {
///         vpcIdentifier: exampleAwsVpc.id,
///         port: 443,
///         protocol: "HTTPS",
///         protocolVersion: "HTTP1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.TargetGroup("example",
///     name="example",
///     type="ALB",
///     config={
///         "vpc_identifier": example_aws_vpc["id"],
///         "port": 443,
///         "protocol": "HTTPS",
///         "protocol_version": "HTTP1",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.TargetGroup("example", new()
///     {
///         Name = "example",
///         Type = "ALB",
///         Config = new Aws.VpcLattice.Inputs.TargetGroupConfigArgs
///         {
///             VpcIdentifier = exampleAwsVpc.Id,
///             Port = 443,
///             Protocol = "HTTPS",
///             ProtocolVersion = "HTTP1",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.NewTargetGroup(ctx, "example", &vpclattice.TargetGroupArgs{
/// 			Name: pulumi.String("example"),
/// 			Type: pulumi.String("ALB"),
/// 			Config: &vpclattice.TargetGroupConfigArgs{
/// 				VpcIdentifier:   pulumi.Any(exampleAwsVpc.Id),
/// 				Port:            pulumi.Int(443),
/// 				Protocol:        pulumi.String("HTTPS"),
/// 				ProtocolVersion: pulumi.String("HTTP1"),
/// 			},
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
/// import com.pulumi.aws.vpclattice.TargetGroup;
/// import com.pulumi.aws.vpclattice.TargetGroupArgs;
/// import com.pulumi.aws.vpclattice.inputs.TargetGroupConfigArgs;
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
///         var example = new TargetGroup("example", TargetGroupArgs.builder()
///             .name("example")
///             .type("ALB")
///             .config(TargetGroupConfigArgs.builder()
///                 .vpcIdentifier(exampleAwsVpc.id())
///                 .port(443)
///                 .protocol("HTTPS")
///                 .protocolVersion("HTTP1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:TargetGroup
///     properties:
///       name: example
///       type: ALB
///       config:
///         vpcIdentifier: ${exampleAwsVpc.id}
///         port: 443
///         protocol: HTTPS
///         protocolVersion: HTTP1
/// ```
///
///
/// ### Lambda
///
/// If the type is Lambda, `config` block is not supported.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.TargetGroup("example", {
///     name: "example",
///     type: "LAMBDA",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.TargetGroup("example",
///     name="example",
///     type="LAMBDA")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.TargetGroup("example", new()
///     {
///         Name = "example",
///         Type = "LAMBDA",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.NewTargetGroup(ctx, "example", &vpclattice.TargetGroupArgs{
/// 			Name: pulumi.String("example"),
/// 			Type: pulumi.String("LAMBDA"),
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
/// import com.pulumi.aws.vpclattice.TargetGroup;
/// import com.pulumi.aws.vpclattice.TargetGroupArgs;
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
///         var example = new TargetGroup("example", TargetGroupArgs.builder()
///             .name("example")
///             .type("LAMBDA")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:TargetGroup
///     properties:
///       name: example
///       type: LAMBDA
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Target Group using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/targetGroup:TargetGroup example tg-0c11d4dc16ed96bdb
/// ```
class TargetGroup extends pulumi.CustomResource {
  /// ARN of the target group.
  late final pulumi.Output<String> arn;
  /// The target group configuration.
  late final pulumi.Output<TargetGroupConfig?> config;
  /// The name of the target group. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Status of the target group.
  late final pulumi.Output<String> status;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The type of target group. Valid Values are `IP` | `LAMBDA` | `INSTANCE` | `ALB`
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  /// Creates a new [TargetGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetGroup]. {@macro pulumi_vpclattice_target_group_target_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetGroup(
    String name, {
    TargetGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/targetGroup:TargetGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.config = registerOutput<TargetGroupConfig?>('config');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }

  /// Gets an existing [TargetGroup] resource's state with the given [name] and [id].
  static TargetGroup get(
    String name,
    pulumi.Input<String> id, {
    TargetGroupState? state,
  }) {
    return TargetGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TargetGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/targetGroup:TargetGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.config = registerOutput<TargetGroupConfig?>('config');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
