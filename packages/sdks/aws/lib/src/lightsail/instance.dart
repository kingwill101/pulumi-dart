import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_add_on.dart';
import 'instance_args.dart';
import 'instance_state.dart';

/// Manages a Lightsail Instance. Use this resource to create easy virtual private servers with custom software already setup.
///
/// &gt; **Note:** Lightsail is currently only supported in a limited number of AWS Regions, please see ["Regions and Availability Zones in Amazon Lightsail"](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail) for more details
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
/// const example = new aws.lightsail.Instance("example", {
///     name: "example",
///     availabilityZone: "us-east-1b",
///     blueprintId: "amazon_linux_2",
///     bundleId: "nano_3_0",
///     keyPairName: "some_key_name",
///     tags: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Instance("example",
///     name="example",
///     availability_zone="us-east-1b",
///     blueprint_id="amazon_linux_2",
///     bundle_id="nano_3_0",
///     key_pair_name="some_key_name",
///     tags={
///         "foo": "bar",
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
///     var example = new Aws.LightSail.Instance("example", new()
///     {
///         Name = "example",
///         AvailabilityZone = "us-east-1b",
///         BlueprintId = "amazon_linux_2",
///         BundleId = "nano_3_0",
///         KeyPairName = "some_key_name",
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lightsail.NewInstance(ctx, "example", &lightsail.InstanceArgs{
/// 			Name:             pulumi.String("example"),
/// 			AvailabilityZone: pulumi.String("us-east-1b"),
/// 			BlueprintId:      pulumi.String("amazon_linux_2"),
/// 			BundleId:         pulumi.String("nano_3_0"),
/// 			KeyPairName:      pulumi.String("some_key_name"),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// resource "aws_lightsail_instance" "example" {
///   name              = "example"
///   availability_zone = "us-east-1b"
///   blueprint_id      = "amazon_linux_2"
///   bundle_id         = "nano_3_0"
///   key_pair_name     = "some_key_name"
///   tags = {
///     "foo" = "bar"
///   }
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
///         var example = new Instance("example", InstanceArgs.builder()
///             .name("example")
///             .availabilityZone("us-east-1b")
///             .blueprintId("amazon_linux_2")
///             .bundleId("nano_3_0")
///             .keyPairName("some_key_name")
///             .tags(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lightsail:Instance
///     properties:
///       name: example
///       availabilityZone: us-east-1b
///       blueprintId: amazon_linux_2
///       bundleId: nano_3_0
///       keyPairName: some_key_name
///       tags:
///         foo: bar
/// ```
///
///
/// ### Example With User Data
///
/// Lightsail user data is handled differently than EC2 user data. Lightsail user data only accepts a single lined string. The below example shows installing apache and creating the index page.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.Instance("example", {
///     name: "example",
///     availabilityZone: "us-east-1b",
///     blueprintId: "amazon_linux_2",
///     bundleId: "nano_3_0",
///     userData: "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Pulumi</h1>' | sudo tee /var/www/html/index.html",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Instance("example",
///     name="example",
///     availability_zone="us-east-1b",
///     blueprint_id="amazon_linux_2",
///     bundle_id="nano_3_0",
///     user_data="sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Pulumi</h1>' | sudo tee /var/www/html/index.html")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LightSail.Instance("example", new()
///     {
///         Name = "example",
///         AvailabilityZone = "us-east-1b",
///         BlueprintId = "amazon_linux_2",
///         BundleId = "nano_3_0",
///         UserData = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Pulumi</h1>' | sudo tee /var/www/html/index.html",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lightsail.NewInstance(ctx, "example", &lightsail.InstanceArgs{
/// 			Name:             pulumi.String("example"),
/// 			AvailabilityZone: pulumi.String("us-east-1b"),
/// 			BlueprintId:      pulumi.String("amazon_linux_2"),
/// 			BundleId:         pulumi.String("nano_3_0"),
/// 			UserData:         pulumi.String("sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Pulumi</h1>' | sudo tee /var/www/html/index.html"),
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
/// resource "aws_lightsail_instance" "example" {
///   name              = "example"
///   availability_zone = "us-east-1b"
///   blueprint_id      = "amazon_linux_2"
///   bundle_id         = "nano_3_0"
///   user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Pulumi</h1>' | sudo tee /var/www/html/index.html"
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
///         var example = new Instance("example", InstanceArgs.builder()
///             .name("example")
///             .availabilityZone("us-east-1b")
///             .blueprintId("amazon_linux_2")
///             .bundleId("nano_3_0")
///             .userData("sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Pulumi</h1>' | sudo tee /var/www/html/index.html")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lightsail:Instance
///     properties:
///       name: example
///       availabilityZone: us-east-1b
///       blueprintId: amazon_linux_2
///       bundleId: nano_3_0
///       userData: sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Pulumi</h1>' | sudo tee /var/www/html/index.html
/// ```
///
///
/// ### Enable Auto Snapshots
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.Instance("example", {
///     name: "example",
///     availabilityZone: "us-east-1b",
///     blueprintId: "amazon_linux_2",
///     bundleId: "nano_3_0",
///     addOn: {
///         type: "AutoSnapshot",
///         snapshotTime: "06:00",
///         status: "Enabled",
///     },
///     tags: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Instance("example",
///     name="example",
///     availability_zone="us-east-1b",
///     blueprint_id="amazon_linux_2",
///     bundle_id="nano_3_0",
///     add_on={
///         "type": "AutoSnapshot",
///         "snapshot_time": "06:00",
///         "status": "Enabled",
///     },
///     tags={
///         "foo": "bar",
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
///     var example = new Aws.LightSail.Instance("example", new()
///     {
///         Name = "example",
///         AvailabilityZone = "us-east-1b",
///         BlueprintId = "amazon_linux_2",
///         BundleId = "nano_3_0",
///         AddOn = new Aws.LightSail.Inputs.InstanceAddOnArgs
///         {
///             Type = "AutoSnapshot",
///             SnapshotTime = "06:00",
///             Status = "Enabled",
///         },
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lightsail.NewInstance(ctx, "example", &lightsail.InstanceArgs{
/// 			Name:             pulumi.String("example"),
/// 			AvailabilityZone: pulumi.String("us-east-1b"),
/// 			BlueprintId:      pulumi.String("amazon_linux_2"),
/// 			BundleId:         pulumi.String("nano_3_0"),
/// 			AddOn: &lightsail.InstanceAddOnArgs{
/// 				Type:         pulumi.String("AutoSnapshot"),
/// 				SnapshotTime: pulumi.String("06:00"),
/// 				Status:       pulumi.String("Enabled"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// resource "aws_lightsail_instance" "example" {
///   name              = "example"
///   availability_zone = "us-east-1b"
///   blueprint_id      = "amazon_linux_2"
///   bundle_id         = "nano_3_0"
///   add_on = {
///     type          = "AutoSnapshot"
///     snapshot_time = "06:00"
///     status        = "Enabled"
///   }
///   tags = {
///     "foo" = "bar"
///   }
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
///         var example = new Instance("example", InstanceArgs.builder()
///             .name("example")
///             .availabilityZone("us-east-1b")
///             .blueprintId("amazon_linux_2")
///             .bundleId("nano_3_0")
///             .addOn(InstanceAddOnArgs.builder()
///                 .type("AutoSnapshot")
///                 .snapshotTime("06:00")
///                 .status("Enabled")
///                 .build())
///             .tags(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lightsail:Instance
///     properties:
///       name: example
///       availabilityZone: us-east-1b
///       blueprintId: amazon_linux_2
///       bundleId: nano_3_0
///       addOn:
///         type: AutoSnapshot
///         snapshotTime: 06:00
///         status: Enabled
///       tags:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Lightsail Instances using their name. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/instance:Instance example 'example'
/// ```
class Instance extends pulumi.CustomResource {
  /// Add-on configuration for the instance. See below.
  late final pulumi.Output<InstanceAddOn?> addOn;
  /// ARN of the Lightsail instance (matches `id`).
  late final pulumi.Output<String> arn;
  /// Availability Zone in which to create your instance. A list of available zones can be obtained using the AWS CLI command: [`aws lightsail get-regions --include-availability-zones`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-regions.html).
  late final pulumi.Output<String> availabilityZone;
  /// ID for a virtual private server image. A list of available blueprint IDs can be obtained using the AWS CLI command: [`aws lightsail get-blueprints`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-blueprints.html).
  late final pulumi.Output<String> blueprintId;
  /// Bundle of specification information. A list of available bundle IDs can be obtained using the AWS CLI command: [`aws lightsail get-bundles`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-bundles.html).
  late final pulumi.Output<String> bundleId;
  /// Number of vCPUs the instance has.
  late final pulumi.Output<int> cpuCount;
  /// Timestamp when the instance was created.
  late final pulumi.Output<String> createdAt;
  /// IP address type of the Lightsail Instance. Valid values: `dualstack`, `ipv4`, `ipv6`. Default: `dualstack`.
  late final pulumi.Output<String?> ipAddressType;
  /// List of IPv6 addresses for the Lightsail instance.
  late final pulumi.Output<List<String>> ipv6Addresses;
  /// Whether this instance has a static IP assigned to it.
  late final pulumi.Output<bool> isStaticIp;
  /// Name of your key pair. Created in the Lightsail console (cannot use `aws.ec2.KeyPair` at this time).
  late final pulumi.Output<String?> keyPairName;
  /// Name of the Lightsail Instance. Names must be unique within each AWS Region in your Lightsail account.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Private IP address of the instance.
  late final pulumi.Output<String> privateIpAddress;
  /// Public IP address of the instance.
  late final pulumi.Output<String> publicIpAddress;
  /// Amount of RAM in GB on the instance (e.g., 1.0).
  late final pulumi.Output<double> ramSize;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Single lined launch script as a string to configure server with additional user data.
  late final pulumi.Output<String?> userData;
  /// User name for connecting to the instance (e.g., ec2-user).
  late final pulumi.Output<String> username;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_lightsail_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addOn = registerOutput<InstanceAddOn?>('addOn', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceAddOn.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    blueprintId = registerOutput<String>('blueprintId');
    bundleId = registerOutput<String>('bundleId');
    cpuCount = registerOutput<int>('cpuCount');
    createdAt = registerOutput<String>('createdAt');
    ipAddressType = registerOutput<String?>('ipAddressType');
    ipv6Addresses = registerOutput<List<String>>('ipv6Addresses');
    isStaticIp = registerOutput<bool>('isStaticIp');
    keyPairName = registerOutput<String?>('keyPairName');
    this.name = registerOutput<String>('name');
    privateIpAddress = registerOutput<String>('privateIpAddress');
    publicIpAddress = registerOutput<String>('publicIpAddress');
    ramSize = registerOutput<double>('ramSize');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    userData = registerOutput<String?>('userData');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addOn = registerOutput<InstanceAddOn?>('addOn', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceAddOn.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    blueprintId = registerOutput<String>('blueprintId');
    bundleId = registerOutput<String>('bundleId');
    cpuCount = registerOutput<int>('cpuCount');
    createdAt = registerOutput<String>('createdAt');
    ipAddressType = registerOutput<String?>('ipAddressType');
    ipv6Addresses = registerOutput<List<String>>('ipv6Addresses');
    isStaticIp = registerOutput<bool>('isStaticIp');
    keyPairName = registerOutput<String?>('keyPairName');
    this.name = registerOutput<String>('name');
    privateIpAddress = registerOutput<String>('privateIpAddress');
    publicIpAddress = registerOutput<String>('publicIpAddress');
    ramSize = registerOutput<double>('ramSize');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    userData = registerOutput<String?>('userData');
    username = registerOutput<String>('username');
  }
}
