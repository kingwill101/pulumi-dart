import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_configuration_args.dart';
import 'launch_configuration_metadata_options.dart';
import 'launch_configuration_root_block_device.dart';
import 'launch_configuration_state.dart';

/// Provides a resource to create a new launch configuration, used for autoscaling groups.
///
/// !&gt; **WARNING:** The use of launch configurations is discouraged in favor of launch templates. Read more in the [AWS EC2 Documentation](https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-configurations.html).
///
/// &gt; **Note** When using `aws.ec2.LaunchConfiguration` with `aws.autoscaling.Group`, it is recommended to use the `name_prefix` (Optional) instead of the `name` (Optional) attribute.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ubuntu = aws.ec2.getAmi({
///     mostRecent: true,
///     filters: [
///         {
///             name: "name",
///             values: ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"],
///         },
///         {
///             name: "virtualization-type",
///             values: ["hvm"],
///         },
///     ],
///     owners: ["099720109477"],
/// });
/// const asConf = new aws.ec2.LaunchConfiguration("as_conf", {
///     name: "web_config",
///     imageId: ubuntu.then(ubuntu => ubuntu.id),
///     instanceType: "t2.micro",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ubuntu = aws.ec2.get_ami(most_recent=True,
///     filters=[
///         {
///             "name": "name",
///             "values": ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"],
///         },
///         {
///             "name": "virtualization-type",
///             "values": ["hvm"],
///         },
///     ],
///     owners=["099720109477"])
/// as_conf = aws.ec2.LaunchConfiguration("as_conf",
///     name="web_config",
///     image_id=ubuntu.id,
///     instance_type="t2.micro")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ubuntu = Aws.Ec2.GetAmi.Invoke(new()
///     {
///         MostRecent = true,
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetAmiFilterInputArgs
///             {
///                 Name = "name",
///                 Values = new[]
///                 {
///                     "ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*",
///                 },
///             },
///             new Aws.Ec2.Inputs.GetAmiFilterInputArgs
///             {
///                 Name = "virtualization-type",
///                 Values = new[]
///                 {
///                     "hvm",
///                 },
///             },
///         },
///         Owners = new[]
///         {
///             "099720109477",
///         },
///     });
///
///     var asConf = new Aws.Ec2.LaunchConfiguration("as_conf", new()
///     {
///         Name = "web_config",
///         ImageId = ubuntu.Apply(getAmiResult => getAmiResult.Id),
///         InstanceType = "t2.micro",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ubuntu, err := ec2.LookupAmi(ctx, &ec2.LookupAmiArgs{
/// 			MostRecent: pulumi.BoolRef(true),
/// 			Filters: []ec2.GetAmiFilter{
/// 				{
/// 					Name: "name",
/// 					Values: []string{
/// 						"ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*",
/// 					},
/// 				},
/// 				{
/// 					Name: "virtualization-type",
/// 					Values: []string{
/// 						"hvm",
/// 					},
/// 				},
/// 			},
/// 			Owners: []string{
/// 				"099720109477",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewLaunchConfiguration(ctx, "as_conf", &ec2.LaunchConfigurationArgs{
/// 			Name:         pulumi.String("web_config"),
/// 			ImageId:      pulumi.String(ubuntu.Id),
/// 			InstanceType: pulumi.String("t2.micro"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var ubuntu = Ec2Functions.getAmi(GetAmiArgs.builder()
///             .mostRecent(true)
///             .filters(
///                 GetAmiFilterArgs.builder()
///                     .name("name")
///                     .values("ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*")
///                     .build(),
///                 GetAmiFilterArgs.builder()
///                     .name("virtualization-type")
///                     .values("hvm")
///                     .build())
///             .owners("099720109477")
///             .build());
///
///         var asConf = new LaunchConfiguration("asConf", LaunchConfigurationArgs.builder()
///             .name("web_config")
///             .imageId(ubuntu.id())
///             .instanceType("t2.micro")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   asConf:
///     type: aws:ec2:LaunchConfiguration
///     name: as_conf
///     properties:
///       name: web_config
///       imageId: ${ubuntu.id}
///       instanceType: t2.micro
/// variables:
///   ubuntu:
///     fn::invoke:
///       function: aws:ec2:getAmi
///       arguments:
///         mostRecent: true
///         filters:
///           - name: name
///             values:
///               - ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*
///           - name: virtualization-type
///             values:
///               - hvm
///         owners:
///           - '099720109477'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import launch configurations using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/launchConfiguration:LaunchConfiguration as_conf pulumi-lg-123456
/// ```
class LaunchConfiguration extends pulumi.CustomResource {
  /// The Amazon Resource Name of the launch configuration.
  late final pulumi.Output<String> arn;

  /// Associate a public ip address with an instance in a VPC.
  late final pulumi.Output<bool?> associatePublicIpAddress;

  /// Additional EBS block devices to attach to the instance. See Block Devices below for details.
  late final pulumi.Output<List<Map<String, dynamic>>> ebsBlockDevices;

  /// If true, the launched EC2 instance will be EBS-optimized.
  late final pulumi.Output<bool> ebsOptimized;

  /// Enables/disables detailed monitoring. This is enabled by default.
  late final pulumi.Output<bool?> enableMonitoring;

  /// Customize Ephemeral (also known as "Instance Store") volumes on the instance. See Block Devices below for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> ephemeralBlockDevices;

  /// The name attribute of the IAM instance profile to associate with launched instances.
  late final pulumi.Output<String?> iamInstanceProfile;

  /// The EC2 image ID to launch.
  late final pulumi.Output<String> imageId;

  /// The size of instance to launch.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> instanceType;

  /// The key name that should be used for the instance.
  late final pulumi.Output<String> keyName;

  /// The metadata options for the instance.
  late final pulumi.Output<LaunchConfigurationMetadataOptions> metadataOptions;

  /// The name of the launch configuration. If you leave this blank, this provider will auto-generate a unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// The tenancy of the instance. Valid values are `default` or `dedicated`, see [AWS's Create Launch Configuration](http://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_CreateLaunchConfiguration.html) for more details.
  late final pulumi.Output<String?> placementTenancy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Customize details about the root block device of the instance. See Block Devices below for details.
  late final pulumi.Output<LaunchConfigurationRootBlockDevice> rootBlockDevice;

  /// A list of associated security group IDS.
  late final pulumi.Output<List<String>?> securityGroups;

  /// The maximum price to use for reserving spot instances.
  late final pulumi.Output<String?> spotPrice;

  /// The user data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see `user_data_base64` instead.
  late final pulumi.Output<String?> userData;

  /// Can be used instead of `user_data` to pass base64-encoded binary data directly. Use this instead of `user_data` whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption.
  late final pulumi.Output<String?> userDataBase64;

  /// Creates a new [LaunchConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LaunchConfiguration]. {@macro pulumi_ec2_launch_configuration_launch_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LaunchConfiguration(
    String name, {
    LaunchConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/launchConfiguration:LaunchConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    associatePublicIpAddress = registerOutput<bool?>(
      'associatePublicIpAddress',
    );
    ebsBlockDevices = registerOutput<List<Map<String, dynamic>>>(
      'ebsBlockDevices',
    );
    ebsOptimized = registerOutput<bool>('ebsOptimized');
    enableMonitoring = registerOutput<bool?>('enableMonitoring');
    ephemeralBlockDevices = registerOutput<List<Map<String, dynamic>>?>(
      'ephemeralBlockDevices',
    );
    iamInstanceProfile = registerOutput<String?>('iamInstanceProfile');
    imageId = registerOutput<String>('imageId');
    instanceType = registerOutput<String>('instanceType');
    keyName = registerOutput<String>('keyName');
    metadataOptions = registerOutput<LaunchConfigurationMetadataOptions>(
      'metadataOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LaunchConfigurationMetadataOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    placementTenancy = registerOutput<String?>('placementTenancy');
    region = registerOutput<String>('region');
    rootBlockDevice = registerOutput<LaunchConfigurationRootBlockDevice>(
      'rootBlockDevice',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LaunchConfigurationRootBlockDevice.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    securityGroups = registerOutput<List<String>?>('securityGroups');
    spotPrice = registerOutput<String?>('spotPrice');
    userData = registerOutput<String?>('userData');
    userDataBase64 = registerOutput<String?>('userDataBase64');
  }

  /// Gets an existing [LaunchConfiguration] resource's state with the given [name] and [id].
  static LaunchConfiguration get(
    String name,
    pulumi.Input<String> id, {
    LaunchConfigurationState? state,
  }) {
    return LaunchConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LaunchConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/launchConfiguration:LaunchConfiguration',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    associatePublicIpAddress = registerOutput<bool?>(
      'associatePublicIpAddress',
    );
    ebsBlockDevices = registerOutput<List<Map<String, dynamic>>>(
      'ebsBlockDevices',
    );
    ebsOptimized = registerOutput<bool>('ebsOptimized');
    enableMonitoring = registerOutput<bool?>('enableMonitoring');
    ephemeralBlockDevices = registerOutput<List<Map<String, dynamic>>?>(
      'ephemeralBlockDevices',
    );
    iamInstanceProfile = registerOutput<String?>('iamInstanceProfile');
    imageId = registerOutput<String>('imageId');
    instanceType = registerOutput<String>('instanceType');
    keyName = registerOutput<String>('keyName');
    metadataOptions = registerOutput<LaunchConfigurationMetadataOptions>(
      'metadataOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LaunchConfigurationMetadataOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    placementTenancy = registerOutput<String?>('placementTenancy');
    region = registerOutput<String>('region');
    rootBlockDevice = registerOutput<LaunchConfigurationRootBlockDevice>(
      'rootBlockDevice',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LaunchConfigurationRootBlockDevice.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    securityGroups = registerOutput<List<String>?>('securityGroups');
    spotPrice = registerOutput<String?>('spotPrice');
    userData = registerOutput<String?>('userData');
    userDataBase64 = registerOutput<String?>('userDataBase64');
  }
}
