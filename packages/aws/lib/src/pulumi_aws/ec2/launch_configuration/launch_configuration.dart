import 'package:pulumi/pulumi.dart';
import '../launch_configuration_ebs_block_device/launch_configuration_ebs_block_device.dart';
import '../launch_configuration_ephemeral_block_device/launch_configuration_ephemeral_block_device.dart';
import '../launch_configuration_metadata_options/launch_configuration_metadata_options.dart';
import '../launch_configuration_root_block_device/launch_configuration_root_block_device.dart';
import 'launch_configuration_args.dart';

/// Provides a resource to create a new launch configuration, used for autoscaling groups.
///
/// !> **WARNING:** The use of launch configurations is discouraged in favor of launch templates. Read more in the [AWS EC2 Documentation](https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-configurations.html).
///
/// > **Note** When using <span pulumi-lang-nodejs="`aws.ec2.LaunchConfiguration`" pulumi-lang-dotnet="`aws.ec2.LaunchConfiguration`" pulumi-lang-go="`ec2.LaunchConfiguration`" pulumi-lang-python="`ec2.LaunchConfiguration`" pulumi-lang-yaml="`aws.ec2.LaunchConfiguration`" pulumi-lang-java="`aws.ec2.LaunchConfiguration`">`aws.ec2.LaunchConfiguration`</span> with <span pulumi-lang-nodejs="`aws.autoscaling.Group`" pulumi-lang-dotnet="`aws.autoscaling.Group`" pulumi-lang-go="`autoscaling.Group`" pulumi-lang-python="`autoscaling.Group`" pulumi-lang-yaml="`aws.autoscaling.Group`" pulumi-lang-java="`aws.autoscaling.Group`">`aws.autoscaling.Group`</span>, it is recommended to use the <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span> (Optional) instead of the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> (Optional) attribute.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ubuntu = aws.ec2.getAmi({
/// mostRecent: true,
/// filters: [
/// {
/// name: "name",
/// values: ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"],
/// },
/// {
/// name: "virtualization-type",
/// values: ["hvm"],
/// },
/// ],
/// owners: ["099720109477"],
/// });
/// const asConf = new aws.ec2.LaunchConfiguration("as_conf", {
/// name: "web_config",
/// imageId: ubuntu.then(ubuntu => ubuntu.id),
/// instanceType: "t2.micro",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ubuntu = aws.ec2.get_ami(most_recent=True,
/// filters=[
/// {
/// "name": "name",
/// "values": ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"],
/// },
/// {
/// "name": "virtualization-type",
/// "values": ["hvm"],
/// },
/// ],
/// owners=["099720109477"])
/// as_conf = aws.ec2.LaunchConfiguration("as_conf",
/// name="web_config",
/// image_id=ubuntu.id,
/// instance_type="t2.micro")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var ubuntu = Aws.Ec2.GetAmi.Invoke(new()
/// {
/// MostRecent = true,
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetAmiFilterInputArgs
/// {
/// Name = "name",
/// Values = new[]
/// {
/// "ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*",
/// },
/// },
/// new Aws.Ec2.Inputs.GetAmiFilterInputArgs
/// {
/// Name = "virtualization-type",
/// Values = new[]
/// {
/// "hvm",
/// },
/// },
/// },
/// Owners = new[]
/// {
/// "099720109477",
/// },
/// });
///
/// var asConf = new Aws.Ec2.LaunchConfiguration("as_conf", new()
/// {
/// Name = "web_config",
/// ImageId = ubuntu.Apply(getAmiResult => getAmiResult.Id),
/// InstanceType = "t2.micro",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// ubuntu, err := ec2.LookupAmi(ctx, &ec2.LookupAmiArgs{
/// MostRecent: pulumi.BoolRef(true),
/// Filters: []ec2.GetAmiFilter{
/// {
/// Name: "name",
/// Values: []string{
/// "ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*",
/// },
/// },
/// {
/// Name: "virtualization-type",
/// Values: []string{
/// "hvm",
/// },
/// },
/// },
/// Owners: []string{
/// "099720109477",
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewLaunchConfiguration(ctx, "as_conf", &ec2.LaunchConfigurationArgs{
/// Name:         pulumi.String("web_config"),
/// ImageId:      pulumi.String(ubuntu.Id),
/// InstanceType: pulumi.String("t2.micro"),
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetAmiArgs;
/// import com.pulumi.aws.ec2.LaunchConfiguration;
/// import com.pulumi.aws.ec2.LaunchConfigurationArgs;
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
/// final var ubuntu = Ec2Functions.getAmi(GetAmiArgs.builder()
/// .mostRecent(true)
/// .filters(
/// GetAmiFilterArgs.builder()
/// .name("name")
/// .values("ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*")
/// .build(),
/// GetAmiFilterArgs.builder()
/// .name("virtualization-type")
/// .values("hvm")
/// .build())
/// .owners("099720109477")
/// .build());
///
/// var asConf = new LaunchConfiguration("asConf", LaunchConfigurationArgs.builder()
/// .name("web_config")
/// .imageId(ubuntu.id())
/// .instanceType("t2.micro")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// asConf:
/// type: aws:ec2:LaunchConfiguration
/// name: as_conf
/// properties:
/// name: web_config
/// imageId: ${ubuntu.id}
/// instanceType: t2.micro
/// variables:
/// ubuntu:
/// fn::invoke:
/// function: aws:ec2:getAmi
/// arguments:
/// mostRecent: true
/// filters:
/// - name: name
/// values:
/// - ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*
/// - name: virtualization-type
/// values:
/// - hvm
/// owners:
/// - '099720109477'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import launch configurations using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/launchConfiguration:LaunchConfiguration as_conf pulumi-lg-123456
/// ```
class LaunchConfiguration extends CustomResource {
  /// The Amazon Resource Name of the launch configuration.
  late final Output<String> arn;

  /// Associate a public ip address with an instance in a VPC.
  late final Output<bool?> associatePublicIpAddress;

  /// Additional EBS block devices to attach to the instance. See Block Devices below for details.
  late final Output<List<LaunchConfigurationEbsBlockDevice>> ebsBlockDevices;

  /// If true, the launched EC2 instance will be EBS-optimized.
  late final Output<bool> ebsOptimized;

  /// Enables/disables detailed monitoring. This is enabled by default.
  late final Output<bool?> enableMonitoring;

  /// Customize Ephemeral (also known as "Instance Store") volumes on the instance. See Block Devices below for details.
  late final Output<List<LaunchConfigurationEphemeralBlockDevice>?>
      ephemeralBlockDevices;

  /// The name attribute of the IAM instance profile to associate with launched instances.
  late final Output<String?> iamInstanceProfile;

  /// The EC2 image ID to launch.
  late final Output<String> imageId;

  /// The size of instance to launch.
  ///
  /// The following arguments are optional:
  late final Output<String> instanceType;

  /// The key name that should be used for the instance.
  late final Output<String> keyName;

  /// The metadata options for the instance.
  late final Output<LaunchConfigurationMetadataOptions> metadataOptions;

  /// The name of the launch configuration. If you leave this blank, this provider will auto-generate a unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// The tenancy of the instance. Valid values are <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span> or <span pulumi-lang-nodejs="`dedicated`" pulumi-lang-dotnet="`Dedicated`" pulumi-lang-go="`dedicated`" pulumi-lang-python="`dedicated`" pulumi-lang-yaml="`dedicated`" pulumi-lang-java="`dedicated`">`dedicated`</span>, see [AWS's Create Launch Configuration](http://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_CreateLaunchConfiguration.html) for more details.
  late final Output<String?> placementTenancy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Customize details about the root block device of the instance. See Block Devices below for details.
  late final Output<LaunchConfigurationRootBlockDevice> rootBlockDevice;

  /// A list of associated security group IDS.
  late final Output<List<String>?> securityGroups;

  /// The maximum price to use for reserving spot instances.
  late final Output<String?> spotPrice;

  /// The user data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see <span pulumi-lang-nodejs="`userDataBase64`" pulumi-lang-dotnet="`UserDataBase64`" pulumi-lang-go="`userDataBase64`" pulumi-lang-python="`user_data_base64`" pulumi-lang-yaml="`userDataBase64`" pulumi-lang-java="`userDataBase64`">`user_data_base64`</span> instead.
  late final Output<String?> userData;

  /// Can be used instead of <span pulumi-lang-nodejs="`userData`" pulumi-lang-dotnet="`UserData`" pulumi-lang-go="`userData`" pulumi-lang-python="`user_data`" pulumi-lang-yaml="`userData`" pulumi-lang-java="`userData`">`user_data`</span> to pass base64-encoded binary data directly. Use this instead of <span pulumi-lang-nodejs="`userData`" pulumi-lang-dotnet="`UserData`" pulumi-lang-go="`userData`" pulumi-lang-python="`user_data`" pulumi-lang-yaml="`userData`" pulumi-lang-java="`userData`">`user_data`</span> whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption.
  late final Output<String?> userDataBase64;

  LaunchConfiguration(
    String name, {
    LaunchConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/launchConfiguration:LaunchConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.associatePublicIpAddress = Output.createUnknown<bool?>();
    this.ebsBlockDevices =
        Output.createUnknown<List<LaunchConfigurationEbsBlockDevice>>();
    this.ebsOptimized = Output.createUnknown<bool>();
    this.enableMonitoring = Output.createUnknown<bool?>();
    this.ephemeralBlockDevices =
        Output.createUnknown<List<LaunchConfigurationEphemeralBlockDevice>?>();
    this.iamInstanceProfile = Output.createUnknown<String?>();
    this.imageId = Output.createUnknown<String>();
    this.instanceType = Output.createUnknown<String>();
    this.keyName = Output.createUnknown<String>();
    this.metadataOptions =
        Output.createUnknown<LaunchConfigurationMetadataOptions>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.placementTenancy = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.rootBlockDevice =
        Output.createUnknown<LaunchConfigurationRootBlockDevice>();
    this.securityGroups = Output.createUnknown<List<String>?>();
    this.spotPrice = Output.createUnknown<String?>();
    this.userData = Output.createUnknown<String?>();
    this.userDataBase64 = Output.createUnknown<String?>();
  }
}
