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
///     config: {
///         vpcIdentifier: exampleAwsVpc.id,
///         port: 443,
///         protocol: "HTTPS",
///     },
///     name: "example",
///     type: "INSTANCE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.TargetGroup("example",
///     config={
///         "vpc_identifier": example_aws_vpc["id"],
///         "port": 443,
///         "protocol": "HTTPS",
///     },
///     name="example",
///     type="INSTANCE")
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
///         Config = new Aws.VpcLattice.Inputs.TargetGroupConfigArgs
///         {
///             VpcIdentifier = exampleAwsVpc.Id,
///             Port = 443,
///             Protocol = "HTTPS",
///         },
///         Name = "example",
///         Type = "INSTANCE",
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
/// 			Config: &vpclattice.TargetGroupConfigArgs{
/// 				VpcIdentifier: pulumi.Any(exampleAwsVpc.Id),
/// 				Port:          pulumi.Int(443),
/// 				Protocol:      pulumi.String("HTTPS"),
/// 			},
/// 			Name: pulumi.String("example"),
/// 			Type: pulumi.String("INSTANCE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_vpclattice_targetgroup" "example" {
///   config = {
///     vpc_identifier = exampleAwsVpc.id
///     port           = 443
///     protocol       = "HTTPS"
///   }
///   name = "example"
///   type = "INSTANCE"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .config(TargetGroupConfigArgs.builder()
///                 .vpcIdentifier(exampleAwsVpc.id())
///                 .port(443)
///                 .protocol("HTTPS")
///                 .build())
///             .name("example")
///             .type("INSTANCE")
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
///       config:
///         vpcIdentifier: ${exampleAwsVpc.id}
///         port: 443
///         protocol: HTTPS
///       name: example
///       type: INSTANCE
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
///     config: {
///         healthCheck: {
///             matcher: {
///                 value: "200-299",
///             },
///             enabled: true,
///             healthCheckIntervalSeconds: 20,
///             healthCheckTimeoutSeconds: 10,
///             healthyThresholdCount: 7,
///             unhealthyThresholdCount: 3,
///             path: "/instance",
///             port: 80,
///             protocol: "HTTP",
///             protocolVersion: "HTTP1",
///         },
///         vpcIdentifier: exampleAwsVpc.id,
///         ipAddressType: "IPV4",
///         port: 443,
///         protocol: "HTTPS",
///         protocolVersion: "HTTP1",
///     },
///     name: "example",
///     type: "IP",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.TargetGroup("example",
///     config={
///         "health_check": {
///             "matcher": {
///                 "value": "200-299",
///             },
///             "enabled": True,
///             "health_check_interval_seconds": 20,
///             "health_check_timeout_seconds": 10,
///             "healthy_threshold_count": 7,
///             "unhealthy_threshold_count": 3,
///             "path": "/instance",
///             "port": 80,
///             "protocol": "HTTP",
///             "protocol_version": "HTTP1",
///         },
///         "vpc_identifier": example_aws_vpc["id"],
///         "ip_address_type": "IPV4",
///         "port": 443,
///         "protocol": "HTTPS",
///         "protocol_version": "HTTP1",
///     },
///     name="example",
///     type="IP")
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
///         Config = new Aws.VpcLattice.Inputs.TargetGroupConfigArgs
///         {
///             HealthCheck = new Aws.VpcLattice.Inputs.TargetGroupConfigHealthCheckArgs
///             {
///                 Matcher = new Aws.VpcLattice.Inputs.TargetGroupConfigHealthCheckMatcherArgs
///                 {
///                     Value = "200-299",
///                 },
///                 Enabled = true,
///                 HealthCheckIntervalSeconds = 20,
///                 HealthCheckTimeoutSeconds = 10,
///                 HealthyThresholdCount = 7,
///                 UnhealthyThresholdCount = 3,
///                 Path = "/instance",
///                 Port = 80,
///                 Protocol = "HTTP",
///                 ProtocolVersion = "HTTP1",
///             },
///             VpcIdentifier = exampleAwsVpc.Id,
///             IpAddressType = "IPV4",
///             Port = 443,
///             Protocol = "HTTPS",
///             ProtocolVersion = "HTTP1",
///         },
///         Name = "example",
///         Type = "IP",
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
/// 			Config: &vpclattice.TargetGroupConfigArgs{
/// 				HealthCheck: &vpclattice.TargetGroupConfigHealthCheckArgs{
/// 					Matcher: &vpclattice.TargetGroupConfigHealthCheckMatcherArgs{
/// 						Value: pulumi.String("200-299"),
/// 					},
/// 					Enabled:                    pulumi.Bool(true),
/// 					HealthCheckIntervalSeconds: pulumi.Int(20),
/// 					HealthCheckTimeoutSeconds:  pulumi.Int(10),
/// 					HealthyThresholdCount:      pulumi.Int(7),
/// 					UnhealthyThresholdCount:    pulumi.Int(3),
/// 					Path:                       pulumi.String("/instance"),
/// 					Port:                       pulumi.Int(80),
/// 					Protocol:                   pulumi.String("HTTP"),
/// 					ProtocolVersion:            pulumi.String("HTTP1"),
/// 				},
/// 				VpcIdentifier:   pulumi.Any(exampleAwsVpc.Id),
/// 				IpAddressType:   pulumi.String("IPV4"),
/// 				Port:            pulumi.Int(443),
/// 				Protocol:        pulumi.String("HTTPS"),
/// 				ProtocolVersion: pulumi.String("HTTP1"),
/// 			},
/// 			Name: pulumi.String("example"),
/// 			Type: pulumi.String("IP"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_vpclattice_targetgroup" "example" {
///   config = {
///     health_check = {
///       matcher = {
///         value = "200-299"
///       }
///       enabled                       = true
///       health_check_interval_seconds = 20
///       health_check_timeout_seconds  = 10
///       healthy_threshold_count       = 7
///       unhealthy_threshold_count     = 3
///       path                          = "/instance"
///       port                          = 80
///       protocol                      = "HTTP"
///       protocol_version              = "HTTP1"
///     }
///     vpc_identifier   = exampleAwsVpc.id
///     ip_address_type  = "IPV4"
///     port             = 443
///     protocol         = "HTTPS"
///     protocol_version = "HTTP1"
///   }
///   name = "example"
///   type = "IP"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .config(TargetGroupConfigArgs.builder()
///                 .healthCheck(TargetGroupConfigHealthCheckArgs.builder()
///                     .matcher(TargetGroupConfigHealthCheckMatcherArgs.builder()
///                         .value("200-299")
///                         .build())
///                     .enabled(true)
///                     .healthCheckIntervalSeconds(20)
///                     .healthCheckTimeoutSeconds(10)
///                     .healthyThresholdCount(7)
///                     .unhealthyThresholdCount(3)
///                     .path("/instance")
///                     .port(80)
///                     .protocol("HTTP")
///                     .protocolVersion("HTTP1")
///                     .build())
///                 .vpcIdentifier(exampleAwsVpc.id())
///                 .ipAddressType("IPV4")
///                 .port(443)
///                 .protocol("HTTPS")
///                 .protocolVersion("HTTP1")
///                 .build())
///             .name("example")
///             .type("IP")
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
///       config:
///         healthCheck:
///           matcher:
///             value: 200-299
///           enabled: true
///           healthCheckIntervalSeconds: 20
///           healthCheckTimeoutSeconds: 10
///           healthyThresholdCount: 7
///           unhealthyThresholdCount: 3
///           path: /instance
///           port: 80
///           protocol: HTTP
///           protocolVersion: HTTP1
///         vpcIdentifier: ${exampleAwsVpc.id}
///         ipAddressType: IPV4
///         port: 443
///         protocol: HTTPS
///         protocolVersion: HTTP1
///       name: example
///       type: IP
/// ```
///
///
/// ### ALB
///
/// If the type is ALB, `healthCheck` block is not supported.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.TargetGroup("example", {
///     config: {
///         vpcIdentifier: exampleAwsVpc.id,
///         port: 443,
///         protocol: "HTTPS",
///         protocolVersion: "HTTP1",
///     },
///     name: "example",
///     type: "ALB",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.TargetGroup("example",
///     config={
///         "vpc_identifier": example_aws_vpc["id"],
///         "port": 443,
///         "protocol": "HTTPS",
///         "protocol_version": "HTTP1",
///     },
///     name="example",
///     type="ALB")
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
///         Config = new Aws.VpcLattice.Inputs.TargetGroupConfigArgs
///         {
///             VpcIdentifier = exampleAwsVpc.Id,
///             Port = 443,
///             Protocol = "HTTPS",
///             ProtocolVersion = "HTTP1",
///         },
///         Name = "example",
///         Type = "ALB",
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
/// 			Config: &vpclattice.TargetGroupConfigArgs{
/// 				VpcIdentifier:   pulumi.Any(exampleAwsVpc.Id),
/// 				Port:            pulumi.Int(443),
/// 				Protocol:        pulumi.String("HTTPS"),
/// 				ProtocolVersion: pulumi.String("HTTP1"),
/// 			},
/// 			Name: pulumi.String("example"),
/// 			Type: pulumi.String("ALB"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_vpclattice_targetgroup" "example" {
///   config = {
///     vpc_identifier   = exampleAwsVpc.id
///     port             = 443
///     protocol         = "HTTPS"
///     protocol_version = "HTTP1"
///   }
///   name = "example"
///   type = "ALB"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .config(TargetGroupConfigArgs.builder()
///                 .vpcIdentifier(exampleAwsVpc.id())
///                 .port(443)
///                 .protocol("HTTPS")
///                 .protocolVersion("HTTP1")
///                 .build())
///             .name("example")
///             .type("ALB")
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
///       config:
///         vpcIdentifier: ${exampleAwsVpc.id}
///         port: 443
///         protocol: HTTPS
///         protocolVersion: HTTP1
///       name: example
///       type: ALB
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_vpclattice_targetgroup" "example" {
///   name = "example"
///   type = "LAMBDA"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
  /// Target group configuration. See `config` Block below.
  late final pulumi.Output<TargetGroupConfig?> config;
  /// Name of the target group. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Status of the target group.
  late final pulumi.Output<String> status;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Type of target group. Valid values are `IP`, `LAMBDA`, `INSTANCE`, or `ALB`.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    config = registerOutput<TargetGroupConfig?>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetGroupConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Gets an existing [TargetGroup] resource's state with the given [name] and [id].
  static TargetGroup get(
    String name,
    pulumi.Input<String> id, {
    TargetGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TargetGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    arn = registerOutput<String>('arn');
    config = registerOutput<TargetGroupConfig?>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetGroupConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [TargetGroup] resource.
  TargetGroup.reference(String urn)
    : super(
        'aws:vpclattice/targetGroup:TargetGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    config = registerOutput<TargetGroupConfig?>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetGroupConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
