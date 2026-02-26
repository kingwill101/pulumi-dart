import 'package:pulumi/pulumi.dart';
import '../instance_add_on/instance_add_on.dart';
import 'instance_args3.dart';

/// Manages a Lightsail Instance. Use this resource to create easy virtual private servers with custom software already setup.
///
/// > **Note:** Lightsail is currently only supported in a limited number of AWS Regions, please see ["Regions and Availability Zones in Amazon Lightsail"](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail) for more details
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
/// const example = new aws.lightsail.Instance("example", {
/// name: "example",
/// availabilityZone: "us-east-1b",
/// blueprintId: "amazon_linux_2",
/// bundleId: "nano_3_0",
/// keyPairName: "some_key_name",
/// tags: {
/// foo: "bar",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Instance("example",
/// name="example",
/// availability_zone="us-east-1b",
/// blueprint_id="amazon_linux_2",
/// bundle_id="nano_3_0",
/// key_pair_name="some_key_name",
/// tags={
/// "foo": "bar",
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
/// var example = new Aws.LightSail.Instance("example", new()
/// {
/// Name = "example",
/// AvailabilityZone = "us-east-1b",
/// BlueprintId = "amazon_linux_2",
/// BundleId = "nano_3_0",
/// KeyPairName = "some_key_name",
/// Tags =
/// {
/// { "foo", "bar" },
/// },
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
/// _, err := lightsail.NewInstance(ctx, "example", &lightsail.InstanceArgs{
/// Name:             pulumi.String("example"),
/// AvailabilityZone: pulumi.String("us-east-1b"),
/// BlueprintId:      pulumi.String("amazon_linux_2"),
/// BundleId:         pulumi.String("nano_3_0"),
/// KeyPairName:      pulumi.String("some_key_name"),
/// Tags: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
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
/// import com.pulumi.aws.lightsail.Instance;
/// import com.pulumi.aws.lightsail.InstanceArgs;
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
/// var example = new Instance("example", InstanceArgs.builder()
/// .name("example")
/// .availabilityZone("us-east-1b")
/// .blueprintId("amazon_linux_2")
/// .bundleId("nano_3_0")
/// .keyPairName("some_key_name")
/// .tags(Map.of("foo", "bar"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:Instance
/// properties:
/// name: example
/// availabilityZone: us-east-1b
/// blueprintId: amazon_linux_2
/// bundleId: nano_3_0
/// keyPairName: some_key_name
/// tags:
/// foo: bar
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Example With User Data
///
/// Lightsail user data is handled differently than EC2 user data. Lightsail user data only accepts a single lined string. The below example shows installing apache and creating the index page.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.Instance("example", {
/// name: "example",
/// availabilityZone: "us-east-1b",
/// blueprintId: "amazon_linux_2",
/// bundleId: "nano_3_0",
/// userData: "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Pulumi</h1>' | sudo tee /var/www/html/index.html",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Instance("example",
/// name="example",
/// availability_zone="us-east-1b",
/// blueprint_id="amazon_linux_2",
/// bundle_id="nano_3_0",
/// user_data="sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Pulumi</h1>' | sudo tee /var/www/html/index.html")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LightSail.Instance("example", new()
/// {
/// Name = "example",
/// AvailabilityZone = "us-east-1b",
/// BlueprintId = "amazon_linux_2",
/// BundleId = "nano_3_0",
/// UserData = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Pulumi</h1>' | sudo tee /var/www/html/index.html",
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
/// _, err := lightsail.NewInstance(ctx, "example", &lightsail.InstanceArgs{
/// Name:             pulumi.String("example"),
/// AvailabilityZone: pulumi.String("us-east-1b"),
/// BlueprintId:      pulumi.String("amazon_linux_2"),
/// BundleId:         pulumi.String("nano_3_0"),
/// UserData:         pulumi.String("sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Pulumi</h1>' | sudo tee /var/www/html/index.html"),
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
/// import com.pulumi.aws.lightsail.Instance;
/// import com.pulumi.aws.lightsail.InstanceArgs;
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
/// var example = new Instance("example", InstanceArgs.builder()
/// .name("example")
/// .availabilityZone("us-east-1b")
/// .blueprintId("amazon_linux_2")
/// .bundleId("nano_3_0")
/// .userData("sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Pulumi</h1>' | sudo tee /var/www/html/index.html")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:Instance
/// properties:
/// name: example
/// availabilityZone: us-east-1b
/// blueprintId: amazon_linux_2
/// bundleId: nano_3_0
/// userData: sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Pulumi</h1>' | sudo tee /var/www/html/index.html
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Enable Auto Snapshots
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.Instance("example", {
/// name: "example",
/// availabilityZone: "us-east-1b",
/// blueprintId: "amazon_linux_2",
/// bundleId: "nano_3_0",
/// addOn: {
/// type: "AutoSnapshot",
/// snapshotTime: "06:00",
/// status: "Enabled",
/// },
/// tags: {
/// foo: "bar",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Instance("example",
/// name="example",
/// availability_zone="us-east-1b",
/// blueprint_id="amazon_linux_2",
/// bundle_id="nano_3_0",
/// add_on={
/// "type": "AutoSnapshot",
/// "snapshot_time": "06:00",
/// "status": "Enabled",
/// },
/// tags={
/// "foo": "bar",
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
/// var example = new Aws.LightSail.Instance("example", new()
/// {
/// Name = "example",
/// AvailabilityZone = "us-east-1b",
/// BlueprintId = "amazon_linux_2",
/// BundleId = "nano_3_0",
/// AddOn = new Aws.LightSail.Inputs.InstanceAddOnArgs
/// {
/// Type = "AutoSnapshot",
/// SnapshotTime = "06:00",
/// Status = "Enabled",
/// },
/// Tags =
/// {
/// { "foo", "bar" },
/// },
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
/// _, err := lightsail.NewInstance(ctx, "example", &lightsail.InstanceArgs{
/// Name:             pulumi.String("example"),
/// AvailabilityZone: pulumi.String("us-east-1b"),
/// BlueprintId:      pulumi.String("amazon_linux_2"),
/// BundleId:         pulumi.String("nano_3_0"),
/// AddOn: &lightsail.InstanceAddOnArgs{
/// Type:         pulumi.String("AutoSnapshot"),
/// SnapshotTime: pulumi.String("06:00"),
/// Status:       pulumi.String("Enabled"),
/// },
/// Tags: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
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
/// import com.pulumi.aws.lightsail.Instance;
/// import com.pulumi.aws.lightsail.InstanceArgs;
/// import com.pulumi.aws.lightsail.inputs.InstanceAddOnArgs;
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
/// var example = new Instance("example", InstanceArgs.builder()
/// .name("example")
/// .availabilityZone("us-east-1b")
/// .blueprintId("amazon_linux_2")
/// .bundleId("nano_3_0")
/// .addOn(InstanceAddOnArgs.builder()
/// .type("AutoSnapshot")
/// .snapshotTime("06:00")
/// .status("Enabled")
/// .build())
/// .tags(Map.of("foo", "bar"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:Instance
/// properties:
/// name: example
/// availabilityZone: us-east-1b
/// blueprintId: amazon_linux_2
/// bundleId: nano_3_0
/// addOn:
/// type: AutoSnapshot
/// snapshotTime: 06:00
/// status: Enabled
/// tags:
/// foo: bar
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Lightsail Instances using their name. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/instance:Instance example 'example'
/// ```
class Instance3 extends CustomResource {
  /// Add-on configuration for the instance. See below.
  late final Output<InstanceAddOn?> addOn;

  /// ARN of the Lightsail instance (matches <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>).
  late final Output<String> arn;

  /// Availability Zone in which to create your instance. A list of available zones can be obtained using the AWS CLI command: [`aws lightsail get-regions --include-availability-zones`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-regions.html).
  late final Output<String> availabilityZone;

  /// ID for a virtual private server image. A list of available blueprint IDs can be obtained using the AWS CLI command: [`aws lightsail get-blueprints`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-blueprints.html).
  late final Output<String> blueprintId;

  /// Bundle of specification information. A list of available bundle IDs can be obtained using the AWS CLI command: [`aws lightsail get-bundles`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-bundles.html).
  late final Output<String> bundleId;

  /// Number of vCPUs the instance has.
  late final Output<int> cpuCount;

  /// Timestamp when the instance was created.
  late final Output<String> createdAt;

  /// IP address type of the Lightsail Instance. Valid values: <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>, <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>, <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>. Default: <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>.
  late final Output<String?> ipAddressType;

  /// List of IPv6 addresses for the Lightsail instance.
  late final Output<List<String>> ipv6Addresses;

  /// Whether this instance has a static IP assigned to it.
  late final Output<bool> isStaticIp;

  /// Name of your key pair. Created in the Lightsail console (cannot use <span pulumi-lang-nodejs="`aws.ec2.KeyPair`" pulumi-lang-dotnet="`aws.ec2.KeyPair`" pulumi-lang-go="`ec2.KeyPair`" pulumi-lang-python="`ec2.KeyPair`" pulumi-lang-yaml="`aws.ec2.KeyPair`" pulumi-lang-java="`aws.ec2.KeyPair`">`aws.ec2.KeyPair`</span> at this time).
  late final Output<String?> keyPairName;

  /// Name of the Lightsail Instance. Names must be unique within each AWS Region in your Lightsail account.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Private IP address of the instance.
  late final Output<String> privateIpAddress;

  /// Public IP address of the instance.
  late final Output<String> publicIpAddress;

  /// Amount of RAM in GB on the instance (e.g., 1.0).
  late final Output<double> ramSize;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Single lined launch script as a string to configure server with additional user data.
  late final Output<String?> userData;

  /// User name for connecting to the instance (e.g., ec2-user).
  late final Output<String> username;

  Instance3(
    String name, {
    InstanceArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/instance:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.addOn = registerOutput<InstanceAddOn?>('addOn');
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.blueprintId = registerOutput<String>('blueprintId');
    this.bundleId = registerOutput<String>('bundleId');
    this.cpuCount = registerOutput<int>('cpuCount');
    this.createdAt = registerOutput<String>('createdAt');
    this.ipAddressType = registerOutput<String?>('ipAddressType');
    this.ipv6Addresses = registerOutput<List<String>>('ipv6Addresses');
    this.isStaticIp = registerOutput<bool>('isStaticIp');
    this.keyPairName = registerOutput<String?>('keyPairName');
    this.name = registerOutput<String>('name');
    this.privateIpAddress = registerOutput<String>('privateIpAddress');
    this.publicIpAddress = registerOutput<String>('publicIpAddress');
    this.ramSize = registerOutput<double>('ramSize');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userData = registerOutput<String?>('userData');
    this.username = registerOutput<String>('username');
  }
}
