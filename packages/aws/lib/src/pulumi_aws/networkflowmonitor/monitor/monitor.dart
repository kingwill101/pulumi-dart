import 'package:pulumi/pulumi.dart';
import '../monitor_local_resource/monitor_local_resource.dart';
import '../monitor_remote_resource/monitor_remote_resource.dart';
import '../monitor_timeouts/monitor_timeouts.dart';
import 'monitor_args.dart';

/// Manages a Network Flow Monitor Monitor.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Vpc("example", {
/// cidrBlock: "10.0.0.0/16",
/// tags: {
/// Name: "example",
/// },
/// });
/// const exampleMonitor = new aws.networkflowmonitor.Monitor("example", {
/// monitorName: "example-monitor",
/// scopeArn: exampleAwsNetworkflowmonitorScope.scopeArn,
/// localResources: [{
/// type: "AWS::EC2::VPC",
/// identifier: example.arn,
/// }],
/// remoteResources: [{
/// type: "AWS::EC2::VPC",
/// identifier: example.arn,
/// }],
/// tags: {
/// Name: "example",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Vpc("example",
/// cidr_block="10.0.0.0/16",
/// tags={
/// "Name": "example",
/// })
/// example_monitor = aws.networkflowmonitor.Monitor("example",
/// monitor_name="example-monitor",
/// scope_arn=example_aws_networkflowmonitor_scope["scopeArn"],
/// local_resources=[{
/// "type": "AWS::EC2::VPC",
/// "identifier": example.arn,
/// }],
/// remote_resources=[{
/// "type": "AWS::EC2::VPC",
/// "identifier": example.arn,
/// }],
/// tags={
/// "Name": "example",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.Vpc("example", new()
/// {
/// CidrBlock = "10.0.0.0/16",
/// Tags =
/// {
/// { "Name", "example" },
/// },
/// });
///
/// var exampleMonitor = new Aws.Networkflowmonitor.Monitor("example", new()
/// {
/// MonitorName = "example-monitor",
/// ScopeArn = exampleAwsNetworkflowmonitorScope.ScopeArn,
/// LocalResources = new[]
/// {
/// new Aws.Networkflowmonitor.Inputs.MonitorLocalResourceArgs
/// {
/// Type = "AWS::EC2::VPC",
/// Identifier = example.Arn,
/// },
/// },
/// RemoteResources = new[]
/// {
/// new Aws.Networkflowmonitor.Inputs.MonitorRemoteResourceArgs
/// {
/// Type = "AWS::EC2::VPC",
/// Identifier = example.Arn,
/// },
/// },
/// Tags =
/// {
/// { "Name", "example" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkflowmonitor"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.0.0.0/16"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networkflowmonitor.NewMonitor(ctx, "example", &networkflowmonitor.MonitorArgs{
/// MonitorName: pulumi.String("example-monitor"),
/// ScopeArn:    pulumi.Any(exampleAwsNetworkflowmonitorScope.ScopeArn),
/// LocalResources: networkflowmonitor.MonitorLocalResourceArray{
/// &networkflowmonitor.MonitorLocalResourceArgs{
/// Type:       pulumi.String("AWS::EC2::VPC"),
/// Identifier: example.Arn,
/// },
/// },
/// RemoteResources: networkflowmonitor.MonitorRemoteResourceArray{
/// &networkflowmonitor.MonitorRemoteResourceArgs{
/// Type:       pulumi.String("AWS::EC2::VPC"),
/// Identifier: example.Arn,
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Vpc("example", VpcArgs.builder()
/// .cidrBlock("10.0.0.0/16")
/// .tags(Map.of("Name", "example"))
/// .build());
///
/// var exampleMonitor = new Monitor("exampleMonitor", MonitorArgs.builder()
/// .monitorName("example-monitor")
/// .scopeArn(exampleAwsNetworkflowmonitorScope.scopeArn())
/// .localResources(MonitorLocalResourceArgs.builder()
/// .type("AWS::EC2::VPC")
/// .identifier(example.arn())
/// .build())
/// .remoteResources(MonitorRemoteResourceArgs.builder()
/// .type("AWS::EC2::VPC")
/// .identifier(example.arn())
/// .build())
/// .tags(Map.of("Name", "example"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.0.0.0/16
/// tags:
/// Name: example
/// exampleMonitor:
/// type: aws:networkflowmonitor:Monitor
/// name: example
/// properties:
/// monitorName: example-monitor
/// scopeArn: ${exampleAwsNetworkflowmonitorScope.scopeArn}
/// localResources:
/// - type: AWS::EC2::VPC
/// identifier: ${example.arn}
/// remoteResources:
/// - type: AWS::EC2::VPC
/// identifier: ${example.arn}
/// tags:
/// Name: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Network Flow Monitor Monitor using the monitor name. For example:
///
/// ```sh
/// $ pulumi import aws:networkflowmonitor/monitor:Monitor example example-monitor
/// ```
class Monitor extends CustomResource {
  /// The local resources to monitor. A local resource in a workload is the location of the hosts where the Network Flow Monitor agent is installed.
  late final Output<List<MonitorLocalResource>> localResources;

  /// The Amazon Resource Name (ARN) of the monitor.
  late final Output<String> monitorArn;

  /// The name of the monitor. Cannot be changed after creation.
  late final Output<String> monitorName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The remote resources to monitor. A remote resource is the other endpoint specified for the network flow of a workload, with a local resource.
  late final Output<List<MonitorRemoteResource>?> remoteResources;

  /// The Amazon Resource Name (ARN) of the scope for the monitor. Cannot be changed after creation.
  ///
  /// The following arguments are optional:
  late final Output<String> scopeArn;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<MonitorTimeouts?> timeouts;

  Monitor(
    String name, {
    MonitorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkflowmonitor/monitor:Monitor',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.localResources = Output.createUnknown<List<MonitorLocalResource>>();
    this.monitorArn = Output.createUnknown<String>();
    this.monitorName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.remoteResources = Output.createUnknown<List<MonitorRemoteResource>?>();
    this.scopeArn = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<MonitorTimeouts?>();
  }
}
