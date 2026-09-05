import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_args.dart';
import 'monitor_local_resource.dart';
import 'monitor_remote_resource.dart';
import 'monitor_state.dart';
import 'monitor_timeouts.dart';

/// Manages a Network Flow Monitor Monitor.
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
/// const example = new aws.ec2.Vpc("example", {
///     cidrBlock: "10.0.0.0/16",
///     tags: {
///         Name: "example",
///     },
/// });
/// const exampleMonitor = new aws.networkflowmonitor.Monitor("example", {
///     localResources: [{
///         type: "AWS::EC2::VPC",
///         identifier: example.arn,
///     }],
///     remoteResources: [{
///         type: "AWS::EC2::VPC",
///         identifier: example.arn,
///     }],
///     monitorName: "example-monitor",
///     scopeArn: exampleAwsNetworkflowmonitorScope.scopeArn,
///     tags: {
///         Name: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Vpc("example",
///     cidr_block="10.0.0.0/16",
///     tags={
///         "Name": "example",
///     })
/// example_monitor = aws.networkflowmonitor.Monitor("example",
///     local_resources=[{
///         "type": "AWS::EC2::VPC",
///         "identifier": example.arn,
///     }],
///     remote_resources=[{
///         "type": "AWS::EC2::VPC",
///         "identifier": example.arn,
///     }],
///     monitor_name="example-monitor",
///     scope_arn=example_aws_networkflowmonitor_scope["scopeArn"],
///     tags={
///         "Name": "example",
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
///     var example = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///         Tags =
///         {
///             { "Name", "example" },
///         },
///     });
///
///     var exampleMonitor = new Aws.Networkflowmonitor.Monitor("example", new()
///     {
///         LocalResources = new[]
///         {
///             new Aws.Networkflowmonitor.Inputs.MonitorLocalResourceArgs
///             {
///                 Type = "AWS::EC2::VPC",
///                 Identifier = example.Arn,
///             },
///         },
///         RemoteResources = new[]
///         {
///             new Aws.Networkflowmonitor.Inputs.MonitorRemoteResourceArgs
///             {
///                 Type = "AWS::EC2::VPC",
///                 Identifier = example.Arn,
///             },
///         },
///         MonitorName = "example-monitor",
///         ScopeArn = exampleAwsNetworkflowmonitorScope.ScopeArn,
///         Tags =
///         {
///             { "Name", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkflowmonitor"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkflowmonitor.NewMonitor(ctx, "example", &networkflowmonitor.MonitorArgs{
/// 			LocalResources: networkflowmonitor.MonitorLocalResourceArray{
/// 				&networkflowmonitor.MonitorLocalResourceArgs{
/// 					Type:       pulumi.String("AWS::EC2::VPC"),
/// 					Identifier: example.Arn,
/// 				},
/// 			},
/// 			RemoteResources: networkflowmonitor.MonitorRemoteResourceArray{
/// 				&networkflowmonitor.MonitorRemoteResourceArgs{
/// 					Type:       pulumi.String("AWS::EC2::VPC"),
/// 					Identifier: example.Arn,
/// 				},
/// 			},
/// 			MonitorName: pulumi.String("example-monitor"),
/// 			ScopeArn:    pulumi.Any(exampleAwsNetworkflowmonitorScope.ScopeArn),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
/// 			},
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
/// resource "aws_ec2_vpc" "example" {
///   cidr_block = "10.0.0.0/16"
///   tags = {
///     "Name" = "example"
///   }
/// }
/// resource "aws_networkflowmonitor_monitor" "example" {
///   local_resources {
///     type       = "AWS::EC2::VPC"
///     identifier = aws_ec2_vpc.example.arn
///   }
///   remote_resources {
///     type       = "AWS::EC2::VPC"
///     identifier = aws_ec2_vpc.example.arn
///   }
///   monitor_name = "example-monitor"
///   scope_arn    = exampleAwsNetworkflowmonitorScope.scopeArn
///   tags = {
///     "Name" = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.networkflowmonitor.Monitor;
/// import com.pulumi.aws.networkflowmonitor.MonitorArgs;
/// import com.pulumi.aws.networkflowmonitor.inputs.MonitorLocalResourceArgs;
/// import com.pulumi.aws.networkflowmonitor.inputs.MonitorRemoteResourceArgs;
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
///         var example = new Vpc("example", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .tags(Map.of("Name", "example"))
///             .build());
///
///         var exampleMonitor = new Monitor("exampleMonitor", MonitorArgs.builder()
///             .localResources(MonitorLocalResourceArgs.builder()
///                 .type("AWS::EC2::VPC")
///                 .identifier(example.arn())
///                 .build())
///             .remoteResources(MonitorRemoteResourceArgs.builder()
///                 .type("AWS::EC2::VPC")
///                 .identifier(example.arn())
///                 .build())
///             .monitorName("example-monitor")
///             .scopeArn(exampleAwsNetworkflowmonitorScope.scopeArn())
///             .tags(Map.of("Name", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///       tags:
///         Name: example
///   exampleMonitor:
///     type: aws:networkflowmonitor:Monitor
///     name: example
///     properties:
///       localResources:
///         - type: AWS::EC2::VPC
///           identifier: ${example.arn}
///       remoteResources:
///         - type: AWS::EC2::VPC
///           identifier: ${example.arn}
///       monitorName: example-monitor
///       scopeArn: ${exampleAwsNetworkflowmonitorScope.scopeArn}
///       tags:
///         Name: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Flow Monitor Monitor using the monitor name. For example:
///
/// ```sh
/// $ pulumi import aws:networkflowmonitor/monitor:Monitor example example-monitor
/// ```
class Monitor extends pulumi.CustomResource {
  /// The local resources to monitor. A local resource in a workload is the location of the hosts where the Network Flow Monitor agent is installed.
  late final pulumi.Output<List<MonitorLocalResource>> localResources;
  /// ARN of the monitor.
  late final pulumi.Output<String> monitorArn;
  /// The name of the monitor. Cannot be changed after creation.
  late final pulumi.Output<String> monitorName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The remote resources to monitor. A remote resource is the other endpoint specified for the network flow of a workload, with a local resource.
  late final pulumi.Output<List<MonitorRemoteResource>?> remoteResources;
  /// ARN of the scope for the monitor. Cannot be changed after creation.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> scopeArn;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<MonitorTimeouts?> timeouts;

  /// Creates a new [Monitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Monitor]. {@macro pulumi_networkflowmonitor_monitor_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Monitor(
    String name, {
    MonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkflowmonitor/monitor:Monitor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    localResources = registerOutput<List<MonitorLocalResource>>('localResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MonitorLocalResource>(guardedValue, (value) => MonitorLocalResource.fromMap((value as Map).cast<String, dynamic>())); });
    monitorArn = registerOutput<String>('monitorArn');
    monitorName = registerOutput<String>('monitorName');
    region = registerOutput<String>('region');
    remoteResources = registerOutput<List<MonitorRemoteResource>?>('remoteResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MonitorRemoteResource>(guardedValue, (value) => MonitorRemoteResource.fromMap((value as Map).cast<String, dynamic>())); });
    scopeArn = registerOutput<String>('scopeArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<MonitorTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MonitorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Monitor] resource's state with the given [name] and [id].
  static Monitor get(
    String name,
    pulumi.Input<String> id, {
    MonitorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Monitor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Monitor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkflowmonitor/monitor:Monitor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    localResources = registerOutput<List<MonitorLocalResource>>('localResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MonitorLocalResource>(guardedValue, (value) => MonitorLocalResource.fromMap((value as Map).cast<String, dynamic>())); });
    monitorArn = registerOutput<String>('monitorArn');
    monitorName = registerOutput<String>('monitorName');
    region = registerOutput<String>('region');
    remoteResources = registerOutput<List<MonitorRemoteResource>?>('remoteResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MonitorRemoteResource>(guardedValue, (value) => MonitorRemoteResource.fromMap((value as Map).cast<String, dynamic>())); });
    scopeArn = registerOutput<String>('scopeArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<MonitorTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MonitorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Monitor] resource.
  Monitor.reference(String urn)
    : super(
        'aws:networkflowmonitor/monitor:Monitor',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    localResources = registerOutput<List<MonitorLocalResource>>('localResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MonitorLocalResource>(guardedValue, (value) => MonitorLocalResource.fromMap((value as Map).cast<String, dynamic>())); });
    monitorArn = registerOutput<String>('monitorArn');
    monitorName = registerOutput<String>('monitorName');
    region = registerOutput<String>('region');
    remoteResources = registerOutput<List<MonitorRemoteResource>?>('remoteResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MonitorRemoteResource>(guardedValue, (value) => MonitorRemoteResource.fromMap((value as Map).cast<String, dynamic>())); });
    scopeArn = registerOutput<String>('scopeArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<MonitorTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MonitorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
