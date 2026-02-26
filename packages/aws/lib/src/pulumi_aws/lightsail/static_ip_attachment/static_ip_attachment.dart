import 'package:pulumi/pulumi.dart';
import 'static_ip_attachment_args.dart';

/// Manages a static IP address attachment - relationship between a Lightsail static IP and Lightsail instance.
///
/// Use this resource to attach a static IP address to a Lightsail instance to provide a consistent public IP address that persists across instance restarts.
///
/// > **Note:** Lightsail is currently only supported in a limited number of AWS Regions, please see ["Regions and Availability Zones in Amazon Lightsail"](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail) for more details.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.StaticIp("example", {name: "example"});
/// const exampleInstance = new aws.lightsail.Instance("example", {
/// name: "example",
/// availabilityZone: "us-east-1a",
/// blueprintId: "ubuntu_20_04",
/// bundleId: "nano_2_0",
/// });
/// const exampleStaticIpAttachment = new aws.lightsail.StaticIpAttachment("example", {
/// staticIpName: example.id,
/// instanceName: exampleInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.StaticIp("example", name="example")
/// example_instance = aws.lightsail.Instance("example",
/// name="example",
/// availability_zone="us-east-1a",
/// blueprint_id="ubuntu_20_04",
/// bundle_id="nano_2_0")
/// example_static_ip_attachment = aws.lightsail.StaticIpAttachment("example",
/// static_ip_name=example.id,
/// instance_name=example_instance.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LightSail.StaticIp("example", new()
/// {
/// Name = "example",
/// });
///
/// var exampleInstance = new Aws.LightSail.Instance("example", new()
/// {
/// Name = "example",
/// AvailabilityZone = "us-east-1a",
/// BlueprintId = "ubuntu_20_04",
/// BundleId = "nano_2_0",
/// });
///
/// var exampleStaticIpAttachment = new Aws.LightSail.StaticIpAttachment("example", new()
/// {
/// StaticIpName = example.Id,
/// InstanceName = exampleInstance.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := lightsail.NewStaticIp(ctx, "example", &lightsail.StaticIpArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleInstance, err := lightsail.NewInstance(ctx, "example", &lightsail.InstanceArgs{
/// Name:             pulumi.String("example"),
/// AvailabilityZone: pulumi.String("us-east-1a"),
/// BlueprintId:      pulumi.String("ubuntu_20_04"),
/// BundleId:         pulumi.String("nano_2_0"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lightsail.NewStaticIpAttachment(ctx, "example", &lightsail.StaticIpAttachmentArgs{
/// StaticIpName: example.ID(),
/// InstanceName: exampleInstance.ID(),
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
/// import com.pulumi.aws.lightsail.StaticIp;
/// import com.pulumi.aws.lightsail.StaticIpArgs;
/// import com.pulumi.aws.lightsail.Instance;
/// import com.pulumi.aws.lightsail.InstanceArgs;
/// import com.pulumi.aws.lightsail.StaticIpAttachment;
/// import com.pulumi.aws.lightsail.StaticIpAttachmentArgs;
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
/// var example = new StaticIp("example", StaticIpArgs.builder()
/// .name("example")
/// .build());
///
/// var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
/// .name("example")
/// .availabilityZone("us-east-1a")
/// .blueprintId("ubuntu_20_04")
/// .bundleId("nano_2_0")
/// .build());
///
/// var exampleStaticIpAttachment = new StaticIpAttachment("exampleStaticIpAttachment", StaticIpAttachmentArgs.builder()
/// .staticIpName(example.id())
/// .instanceName(exampleInstance.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:StaticIp
/// properties:
/// name: example
/// exampleInstance:
/// type: aws:lightsail:Instance
/// name: example
/// properties:
/// name: example
/// availabilityZone: us-east-1a
/// blueprintId: ubuntu_20_04
/// bundleId: nano_2_0
/// exampleStaticIpAttachment:
/// type: aws:lightsail:StaticIpAttachment
/// name: example
/// properties:
/// staticIpName: ${example.id}
/// instanceName: ${exampleInstance.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.lightsail.StaticIpAttachment`" pulumi-lang-dotnet="`aws.lightsail.StaticIpAttachment`" pulumi-lang-go="`lightsail.StaticIpAttachment`" pulumi-lang-python="`lightsail.StaticIpAttachment`" pulumi-lang-yaml="`aws.lightsail.StaticIpAttachment`" pulumi-lang-java="`aws.lightsail.StaticIpAttachment`">`aws.lightsail.StaticIpAttachment`</span> using the static IP name. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/staticIpAttachment:StaticIpAttachment example example-static-ip
/// ```
class StaticIpAttachment extends CustomResource {
  /// Name of the Lightsail instance to attach the IP to.
  late final Output<String> instanceName;

  /// Allocated static IP address.
  late final Output<String> ipAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the allocated static IP.
  ///
  /// The following arguments are optional:
  late final Output<String> staticIpName;

  StaticIpAttachment(
    String name, {
    StaticIpAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/staticIpAttachment:StaticIpAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.instanceName = registerOutput<String>('instanceName');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.region = registerOutput<String>('region');
    this.staticIpName = registerOutput<String>('staticIpName');
  }
}
