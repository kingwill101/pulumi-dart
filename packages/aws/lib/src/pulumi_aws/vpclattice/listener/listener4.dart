import 'package:pulumi/pulumi.dart';
import '../listener_default_action/listener_default_action3.dart';
import 'listener_args4.dart';

/// Resource for managing an AWS VPC Lattice Listener.
///
/// ## Example Usage
///
/// ### Fixed response action
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.Service("example", {name: "example"});
/// const exampleListener = new aws.vpclattice.Listener("example", {
/// name: "example",
/// protocol: "HTTPS",
/// serviceIdentifier: example.id,
/// defaultAction: {
/// fixedResponse: {
/// statusCode: 404,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.Service("example", name="example")
/// example_listener = aws.vpclattice.Listener("example",
/// name="example",
/// protocol="HTTPS",
/// service_identifier=example.id,
/// default_action={
/// "fixed_response": {
/// "status_code": 404,
/// },
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
/// var example = new Aws.VpcLattice.Service("example", new()
/// {
/// Name = "example",
/// });
///
/// var exampleListener = new Aws.VpcLattice.Listener("example", new()
/// {
/// Name = "example",
/// Protocol = "HTTPS",
/// ServiceIdentifier = example.Id,
/// DefaultAction = new Aws.VpcLattice.Inputs.ListenerDefaultActionArgs
/// {
/// FixedResponse = new Aws.VpcLattice.Inputs.ListenerDefaultActionFixedResponseArgs
/// {
/// StatusCode = 404,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := vpclattice.NewService(ctx, "example", &vpclattice.ServiceArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = vpclattice.NewListener(ctx, "example", &vpclattice.ListenerArgs{
/// Name:              pulumi.String("example"),
/// Protocol:          pulumi.String("HTTPS"),
/// ServiceIdentifier: example.ID(),
/// DefaultAction: &vpclattice.ListenerDefaultActionArgs{
/// FixedResponse: &vpclattice.ListenerDefaultActionFixedResponseArgs{
/// StatusCode: pulumi.Int(404),
/// },
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
/// import com.pulumi.aws.vpclattice.Service;
/// import com.pulumi.aws.vpclattice.ServiceArgs;
/// import com.pulumi.aws.vpclattice.Listener;
/// import com.pulumi.aws.vpclattice.ListenerArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerDefaultActionFixedResponseArgs;
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
/// var example = new Service("example", ServiceArgs.builder()
/// .name("example")
/// .build());
///
/// var exampleListener = new Listener("exampleListener", ListenerArgs.builder()
/// .name("example")
/// .protocol("HTTPS")
/// .serviceIdentifier(example.id())
/// .defaultAction(ListenerDefaultActionArgs.builder()
/// .fixedResponse(ListenerDefaultActionFixedResponseArgs.builder()
/// .statusCode(404)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:vpclattice:Service
/// properties:
/// name: example
/// exampleListener:
/// type: aws:vpclattice:Listener
/// name: example
/// properties:
/// name: example
/// protocol: HTTPS
/// serviceIdentifier: ${example.id}
/// defaultAction:
/// fixedResponse:
/// statusCode: 404
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Forward action
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.Service("example", {name: "example"});
/// const exampleTargetGroup = new aws.vpclattice.TargetGroup("example", {
/// name: "example-target-group-1",
/// type: "INSTANCE",
/// config: {
/// port: 80,
/// protocol: "HTTP",
/// vpcIdentifier: exampleAwsVpc.id,
/// },
/// });
/// const exampleListener = new aws.vpclattice.Listener("example", {
/// name: "example",
/// protocol: "HTTP",
/// serviceIdentifier: example.id,
/// defaultAction: {
/// forwards: [{
/// targetGroups: [{
/// targetGroupIdentifier: exampleTargetGroup.id,
/// }],
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.Service("example", name="example")
/// example_target_group = aws.vpclattice.TargetGroup("example",
/// name="example-target-group-1",
/// type="INSTANCE",
/// config={
/// "port": 80,
/// "protocol": "HTTP",
/// "vpc_identifier": example_aws_vpc["id"],
/// })
/// example_listener = aws.vpclattice.Listener("example",
/// name="example",
/// protocol="HTTP",
/// service_identifier=example.id,
/// default_action={
/// "forwards": [{
/// "target_groups": [{
/// "target_group_identifier": example_target_group.id,
/// }],
/// }],
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
/// var example = new Aws.VpcLattice.Service("example", new()
/// {
/// Name = "example",
/// });
///
/// var exampleTargetGroup = new Aws.VpcLattice.TargetGroup("example", new()
/// {
/// Name = "example-target-group-1",
/// Type = "INSTANCE",
/// Config = new Aws.VpcLattice.Inputs.TargetGroupConfigArgs
/// {
/// Port = 80,
/// Protocol = "HTTP",
/// VpcIdentifier = exampleAwsVpc.Id,
/// },
/// });
///
/// var exampleListener = new Aws.VpcLattice.Listener("example", new()
/// {
/// Name = "example",
/// Protocol = "HTTP",
/// ServiceIdentifier = example.Id,
/// DefaultAction = new Aws.VpcLattice.Inputs.ListenerDefaultActionArgs
/// {
/// Forwards = new[]
/// {
/// new Aws.VpcLattice.Inputs.ListenerDefaultActionForwardArgs
/// {
/// TargetGroups = new[]
/// {
/// new Aws.VpcLattice.Inputs.ListenerDefaultActionForwardTargetGroupArgs
/// {
/// TargetGroupIdentifier = exampleTargetGroup.Id,
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := vpclattice.NewService(ctx, "example", &vpclattice.ServiceArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleTargetGroup, err := vpclattice.NewTargetGroup(ctx, "example", &vpclattice.TargetGroupArgs{
/// Name: pulumi.String("example-target-group-1"),
/// Type: pulumi.String("INSTANCE"),
/// Config: &vpclattice.TargetGroupConfigArgs{
/// Port:          pulumi.Int(80),
/// Protocol:      pulumi.String("HTTP"),
/// VpcIdentifier: pulumi.Any(exampleAwsVpc.Id),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = vpclattice.NewListener(ctx, "example", &vpclattice.ListenerArgs{
/// Name:              pulumi.String("example"),
/// Protocol:          pulumi.String("HTTP"),
/// ServiceIdentifier: example.ID(),
/// DefaultAction: &vpclattice.ListenerDefaultActionArgs{
/// Forwards: vpclattice.ListenerDefaultActionForwardArray{
/// &vpclattice.ListenerDefaultActionForwardArgs{
/// TargetGroups: vpclattice.ListenerDefaultActionForwardTargetGroupArray{
/// &vpclattice.ListenerDefaultActionForwardTargetGroupArgs{
/// TargetGroupIdentifier: exampleTargetGroup.ID(),
/// },
/// },
/// },
/// },
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
/// import com.pulumi.aws.vpclattice.Service;
/// import com.pulumi.aws.vpclattice.ServiceArgs;
/// import com.pulumi.aws.vpclattice.TargetGroup;
/// import com.pulumi.aws.vpclattice.TargetGroupArgs;
/// import com.pulumi.aws.vpclattice.inputs.TargetGroupConfigArgs;
/// import com.pulumi.aws.vpclattice.Listener;
/// import com.pulumi.aws.vpclattice.ListenerArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerDefaultActionArgs;
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
/// var example = new Service("example", ServiceArgs.builder()
/// .name("example")
/// .build());
///
/// var exampleTargetGroup = new TargetGroup("exampleTargetGroup", TargetGroupArgs.builder()
/// .name("example-target-group-1")
/// .type("INSTANCE")
/// .config(TargetGroupConfigArgs.builder()
/// .port(80)
/// .protocol("HTTP")
/// .vpcIdentifier(exampleAwsVpc.id())
/// .build())
/// .build());
///
/// var exampleListener = new Listener("exampleListener", ListenerArgs.builder()
/// .name("example")
/// .protocol("HTTP")
/// .serviceIdentifier(example.id())
/// .defaultAction(ListenerDefaultActionArgs.builder()
/// .forwards(ListenerDefaultActionForwardArgs.builder()
/// .targetGroups(ListenerDefaultActionForwardTargetGroupArgs.builder()
/// .targetGroupIdentifier(exampleTargetGroup.id())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:vpclattice:Service
/// properties:
/// name: example
/// exampleTargetGroup:
/// type: aws:vpclattice:TargetGroup
/// name: example
/// properties:
/// name: example-target-group-1
/// type: INSTANCE
/// config:
/// port: 80
/// protocol: HTTP
/// vpcIdentifier: ${exampleAwsVpc.id}
/// exampleListener:
/// type: aws:vpclattice:Listener
/// name: example
/// properties:
/// name: example
/// protocol: HTTP
/// serviceIdentifier: ${example.id}
/// defaultAction:
/// forwards:
/// - targetGroups:
/// - targetGroupIdentifier: ${exampleTargetGroup.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Forward action with weighted target groups
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.Service("example", {name: "example"});
/// const example1 = new aws.vpclattice.TargetGroup("example1", {
/// name: "example-target-group-1",
/// type: "INSTANCE",
/// config: {
/// port: 80,
/// protocol: "HTTP",
/// vpcIdentifier: exampleAwsVpc.id,
/// },
/// });
/// const example2 = new aws.vpclattice.TargetGroup("example2", {
/// name: "example-target-group-2",
/// type: "INSTANCE",
/// config: {
/// port: 8080,
/// protocol: "HTTP",
/// vpcIdentifier: exampleAwsVpc.id,
/// },
/// });
/// const exampleListener = new aws.vpclattice.Listener("example", {
/// name: "example",
/// protocol: "HTTP",
/// serviceIdentifier: example.id,
/// defaultAction: {
/// forwards: [{
/// targetGroups: [
/// {
/// targetGroupIdentifier: example1.id,
/// weight: 80,
/// },
/// {
/// targetGroupIdentifier: example2.id,
/// weight: 20,
/// },
/// ],
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.Service("example", name="example")
/// example1 = aws.vpclattice.TargetGroup("example1",
/// name="example-target-group-1",
/// type="INSTANCE",
/// config={
/// "port": 80,
/// "protocol": "HTTP",
/// "vpc_identifier": example_aws_vpc["id"],
/// })
/// example2 = aws.vpclattice.TargetGroup("example2",
/// name="example-target-group-2",
/// type="INSTANCE",
/// config={
/// "port": 8080,
/// "protocol": "HTTP",
/// "vpc_identifier": example_aws_vpc["id"],
/// })
/// example_listener = aws.vpclattice.Listener("example",
/// name="example",
/// protocol="HTTP",
/// service_identifier=example.id,
/// default_action={
/// "forwards": [{
/// "target_groups": [
/// {
/// "target_group_identifier": example1.id,
/// "weight": 80,
/// },
/// {
/// "target_group_identifier": example2.id,
/// "weight": 20,
/// },
/// ],
/// }],
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
/// var example = new Aws.VpcLattice.Service("example", new()
/// {
/// Name = "example",
/// });
///
/// var example1 = new Aws.VpcLattice.TargetGroup("example1", new()
/// {
/// Name = "example-target-group-1",
/// Type = "INSTANCE",
/// Config = new Aws.VpcLattice.Inputs.TargetGroupConfigArgs
/// {
/// Port = 80,
/// Protocol = "HTTP",
/// VpcIdentifier = exampleAwsVpc.Id,
/// },
/// });
///
/// var example2 = new Aws.VpcLattice.TargetGroup("example2", new()
/// {
/// Name = "example-target-group-2",
/// Type = "INSTANCE",
/// Config = new Aws.VpcLattice.Inputs.TargetGroupConfigArgs
/// {
/// Port = 8080,
/// Protocol = "HTTP",
/// VpcIdentifier = exampleAwsVpc.Id,
/// },
/// });
///
/// var exampleListener = new Aws.VpcLattice.Listener("example", new()
/// {
/// Name = "example",
/// Protocol = "HTTP",
/// ServiceIdentifier = example.Id,
/// DefaultAction = new Aws.VpcLattice.Inputs.ListenerDefaultActionArgs
/// {
/// Forwards = new[]
/// {
/// new Aws.VpcLattice.Inputs.ListenerDefaultActionForwardArgs
/// {
/// TargetGroups = new[]
/// {
/// new Aws.VpcLattice.Inputs.ListenerDefaultActionForwardTargetGroupArgs
/// {
/// TargetGroupIdentifier = example1.Id,
/// Weight = 80,
/// },
/// new Aws.VpcLattice.Inputs.ListenerDefaultActionForwardTargetGroupArgs
/// {
/// TargetGroupIdentifier = example2.Id,
/// Weight = 20,
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := vpclattice.NewService(ctx, "example", &vpclattice.ServiceArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// example1, err := vpclattice.NewTargetGroup(ctx, "example1", &vpclattice.TargetGroupArgs{
/// Name: pulumi.String("example-target-group-1"),
/// Type: pulumi.String("INSTANCE"),
/// Config: &vpclattice.TargetGroupConfigArgs{
/// Port:          pulumi.Int(80),
/// Protocol:      pulumi.String("HTTP"),
/// VpcIdentifier: pulumi.Any(exampleAwsVpc.Id),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// example2, err := vpclattice.NewTargetGroup(ctx, "example2", &vpclattice.TargetGroupArgs{
/// Name: pulumi.String("example-target-group-2"),
/// Type: pulumi.String("INSTANCE"),
/// Config: &vpclattice.TargetGroupConfigArgs{
/// Port:          pulumi.Int(8080),
/// Protocol:      pulumi.String("HTTP"),
/// VpcIdentifier: pulumi.Any(exampleAwsVpc.Id),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = vpclattice.NewListener(ctx, "example", &vpclattice.ListenerArgs{
/// Name:              pulumi.String("example"),
/// Protocol:          pulumi.String("HTTP"),
/// ServiceIdentifier: example.ID(),
/// DefaultAction: &vpclattice.ListenerDefaultActionArgs{
/// Forwards: vpclattice.ListenerDefaultActionForwardArray{
/// &vpclattice.ListenerDefaultActionForwardArgs{
/// TargetGroups: vpclattice.ListenerDefaultActionForwardTargetGroupArray{
/// &vpclattice.ListenerDefaultActionForwardTargetGroupArgs{
/// TargetGroupIdentifier: example1.ID(),
/// Weight:                pulumi.Int(80),
/// },
/// &vpclattice.ListenerDefaultActionForwardTargetGroupArgs{
/// TargetGroupIdentifier: example2.ID(),
/// Weight:                pulumi.Int(20),
/// },
/// },
/// },
/// },
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
/// import com.pulumi.aws.vpclattice.Service;
/// import com.pulumi.aws.vpclattice.ServiceArgs;
/// import com.pulumi.aws.vpclattice.TargetGroup;
/// import com.pulumi.aws.vpclattice.TargetGroupArgs;
/// import com.pulumi.aws.vpclattice.inputs.TargetGroupConfigArgs;
/// import com.pulumi.aws.vpclattice.Listener;
/// import com.pulumi.aws.vpclattice.ListenerArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerDefaultActionArgs;
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
/// var example = new Service("example", ServiceArgs.builder()
/// .name("example")
/// .build());
///
/// var example1 = new TargetGroup("example1", TargetGroupArgs.builder()
/// .name("example-target-group-1")
/// .type("INSTANCE")
/// .config(TargetGroupConfigArgs.builder()
/// .port(80)
/// .protocol("HTTP")
/// .vpcIdentifier(exampleAwsVpc.id())
/// .build())
/// .build());
///
/// var example2 = new TargetGroup("example2", TargetGroupArgs.builder()
/// .name("example-target-group-2")
/// .type("INSTANCE")
/// .config(TargetGroupConfigArgs.builder()
/// .port(8080)
/// .protocol("HTTP")
/// .vpcIdentifier(exampleAwsVpc.id())
/// .build())
/// .build());
///
/// var exampleListener = new Listener("exampleListener", ListenerArgs.builder()
/// .name("example")
/// .protocol("HTTP")
/// .serviceIdentifier(example.id())
/// .defaultAction(ListenerDefaultActionArgs.builder()
/// .forwards(ListenerDefaultActionForwardArgs.builder()
/// .targetGroups(
/// ListenerDefaultActionForwardTargetGroupArgs.builder()
/// .targetGroupIdentifier(example1.id())
/// .weight(80)
/// .build(),
/// ListenerDefaultActionForwardTargetGroupArgs.builder()
/// .targetGroupIdentifier(example2.id())
/// .weight(20)
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:vpclattice:Service
/// properties:
/// name: example
/// example1:
/// type: aws:vpclattice:TargetGroup
/// properties:
/// name: example-target-group-1
/// type: INSTANCE
/// config:
/// port: 80
/// protocol: HTTP
/// vpcIdentifier: ${exampleAwsVpc.id}
/// example2:
/// type: aws:vpclattice:TargetGroup
/// properties:
/// name: example-target-group-2
/// type: INSTANCE
/// config:
/// port: 8080
/// protocol: HTTP
/// vpcIdentifier: ${exampleAwsVpc.id}
/// exampleListener:
/// type: aws:vpclattice:Listener
/// name: example
/// properties:
/// name: example
/// protocol: HTTP
/// serviceIdentifier: ${example.id}
/// defaultAction:
/// forwards:
/// - targetGroups:
/// - targetGroupIdentifier: ${example1.id}
/// weight: 80
/// - targetGroupIdentifier: ${example2.id}
/// weight: 20
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Listener using the <span pulumi-lang-nodejs="`listenerId`" pulumi-lang-dotnet="`ListenerId`" pulumi-lang-go="`listenerId`" pulumi-lang-python="`listener_id`" pulumi-lang-yaml="`listenerId`" pulumi-lang-java="`listenerId`">`listener_id`</span> of the listener and the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> of the VPC Lattice service combined with a `/` character. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/listener:Listener example svc-1a2b3c4d/listener-987654321
/// ```
class Listener4 extends CustomResource {
  /// ARN of the listener.
  late final Output<String> arn;

  /// Date and time that the listener was created, specified in ISO-8601 format.
  late final Output<String> createdAt;

  /// Default action block for the default listener rule. Default action blocks are defined below.
  late final Output<ListenerDefaultAction3> defaultAction;
  late final Output<String> lastUpdatedAt;

  /// Standalone ID of the listener, e.g. `listener-0a1b2c3d4e5f6g`.
  late final Output<String> listenerId;

  /// Name of the listener. A listener name must be unique within a service. Valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  late final Output<String> name;

  /// Listener port. You can specify a value from 1 to 65535. If <span pulumi-lang-nodejs="`port`" pulumi-lang-dotnet="`Port`" pulumi-lang-go="`port`" pulumi-lang-python="`port`" pulumi-lang-yaml="`port`" pulumi-lang-java="`port`">`port`</span> is not specified and <span pulumi-lang-nodejs="`protocol`" pulumi-lang-dotnet="`Protocol`" pulumi-lang-go="`protocol`" pulumi-lang-python="`protocol`" pulumi-lang-yaml="`protocol`" pulumi-lang-java="`protocol`">`protocol`</span> is HTTP, the value will default to 80. If <span pulumi-lang-nodejs="`port`" pulumi-lang-dotnet="`Port`" pulumi-lang-go="`port`" pulumi-lang-python="`port`" pulumi-lang-yaml="`port`" pulumi-lang-java="`port`">`port`</span> is not specified and <span pulumi-lang-nodejs="`protocol`" pulumi-lang-dotnet="`Protocol`" pulumi-lang-go="`protocol`" pulumi-lang-python="`protocol`" pulumi-lang-yaml="`protocol`" pulumi-lang-java="`protocol`">`protocol`</span> is HTTPS, the value will default to 443.
  late final Output<int> port;

  /// Protocol for the listener. Supported values are `HTTP`, `HTTPS` or `TLS_PASSTHROUGH`
  late final Output<String> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) of the VPC Lattice service. You must include either the <span pulumi-lang-nodejs="`serviceArn`" pulumi-lang-dotnet="`ServiceArn`" pulumi-lang-go="`serviceArn`" pulumi-lang-python="`service_arn`" pulumi-lang-yaml="`serviceArn`" pulumi-lang-java="`serviceArn`">`service_arn`</span> or <span pulumi-lang-nodejs="`serviceIdentifier`" pulumi-lang-dotnet="`ServiceIdentifier`" pulumi-lang-go="`serviceIdentifier`" pulumi-lang-python="`service_identifier`" pulumi-lang-yaml="`serviceIdentifier`" pulumi-lang-java="`serviceIdentifier`">`service_identifier`</span> arguments.
  late final Output<String> serviceArn;

  /// ID of the VPC Lattice service. You must include either the <span pulumi-lang-nodejs="`serviceArn`" pulumi-lang-dotnet="`ServiceArn`" pulumi-lang-go="`serviceArn`" pulumi-lang-python="`service_arn`" pulumi-lang-yaml="`serviceArn`" pulumi-lang-java="`serviceArn`">`service_arn`</span> or <span pulumi-lang-nodejs="`serviceIdentifier`" pulumi-lang-dotnet="`ServiceIdentifier`" pulumi-lang-go="`serviceIdentifier`" pulumi-lang-python="`service_identifier`" pulumi-lang-yaml="`serviceIdentifier`" pulumi-lang-java="`serviceIdentifier`">`service_identifier`</span> arguments.
  /// > **NOTE:** You must specify one of the following arguments: <span pulumi-lang-nodejs="`serviceArn`" pulumi-lang-dotnet="`ServiceArn`" pulumi-lang-go="`serviceArn`" pulumi-lang-python="`service_arn`" pulumi-lang-yaml="`serviceArn`" pulumi-lang-java="`serviceArn`">`service_arn`</span> or <span pulumi-lang-nodejs="`serviceIdentifier`" pulumi-lang-dotnet="`ServiceIdentifier`" pulumi-lang-go="`serviceIdentifier`" pulumi-lang-python="`service_identifier`" pulumi-lang-yaml="`serviceIdentifier`" pulumi-lang-java="`serviceIdentifier`">`service_identifier`</span>.
  late final Output<String> serviceIdentifier;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  Listener4(
    String name, {
    ListenerArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/listener:Listener',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.createdAt = Output.createUnknown<String>();
    this.defaultAction = Output.createUnknown<ListenerDefaultAction3>();
    this.lastUpdatedAt = Output.createUnknown<String>();
    this.listenerId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.port = Output.createUnknown<int>();
    this.protocol = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.serviceArn = Output.createUnknown<String>();
    this.serviceIdentifier = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
