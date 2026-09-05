import 'package:pulumi/pulumi.dart' as pulumi;
import 'spot_fleet_request_args.dart';
import 'spot_fleet_request_launch_specification.dart';
import 'spot_fleet_request_launch_template_config.dart';
import 'spot_fleet_request_spot_maintenance_strategies.dart';
import 'spot_fleet_request_state.dart';

/// Provides an EC2 Spot Fleet Request resource. This allows a fleet of Spot
/// instances to be requested on the Spot market.
///
/// &gt; **NOTE [AWS strongly discourages](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-best-practices.html#which-spot-request-method-to-use) the use of the legacy APIs called by this resource.
/// We recommend using the EC2 Fleet or Auto Scaling Group resources instead.
///
/// ## Example Usage
///
/// ### Using launch specifications
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Request a Spot fleet
/// const cheapCompute = new aws.ec2.SpotFleetRequest("cheap_compute", {
///     launchSpecifications: [
///         {
///             instanceType: "m4.10xlarge",
///             ami: "ami-1234",
///             spotPrice: "2.793",
///             placementTenancy: "dedicated",
///             iamInstanceProfileArn: example.arn,
///         },
///         {
///             rootBlockDevices: [{
///                 volumeSize: 300,
///                 volumeType: "gp2",
///             }],
///             instanceType: "m4.4xlarge",
///             ami: "ami-5678",
///             keyName: "my-key",
///             spotPrice: "1.117",
///             iamInstanceProfileArn: example.arn,
///             availabilityZone: "us-west-1a",
///             subnetId: "subnet-1234",
///             weightedCapacity: "35",
///             tags: {
///                 Name: "spot-fleet-example",
///             },
///         },
///     ],
///     iamFleetRole: "arn:aws:iam::12345678:role/spot-fleet",
///     spotPrice: "0.03",
///     allocationStrategy: "diversified",
///     targetCapacity: 6,
///     validUntil: "2019-11-04T20:44:20Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Request a Spot fleet
/// cheap_compute = aws.ec2.SpotFleetRequest("cheap_compute",
///     launch_specifications=[
///         {
///             "instance_type": "m4.10xlarge",
///             "ami": "ami-1234",
///             "spot_price": "2.793",
///             "placement_tenancy": "dedicated",
///             "iam_instance_profile_arn": example["arn"],
///         },
///         {
///             "root_block_devices": [{
///                 "volume_size": 300,
///                 "volume_type": "gp2",
///             }],
///             "instance_type": "m4.4xlarge",
///             "ami": "ami-5678",
///             "key_name": "my-key",
///             "spot_price": "1.117",
///             "iam_instance_profile_arn": example["arn"],
///             "availability_zone": "us-west-1a",
///             "subnet_id": "subnet-1234",
///             "weighted_capacity": "35",
///             "tags": {
///                 "Name": "spot-fleet-example",
///             },
///         },
///     ],
///     iam_fleet_role="arn:aws:iam::12345678:role/spot-fleet",
///     spot_price="0.03",
///     allocation_strategy="diversified",
///     target_capacity=6,
///     valid_until="2019-11-04T20:44:20Z")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Request a Spot fleet
///     var cheapCompute = new Aws.Ec2.SpotFleetRequest("cheap_compute", new()
///     {
///         LaunchSpecifications = new[]
///         {
///             new Aws.Ec2.Inputs.SpotFleetRequestLaunchSpecificationArgs
///             {
///                 InstanceType = "m4.10xlarge",
///                 Ami = "ami-1234",
///                 SpotPrice = "2.793",
///                 PlacementTenancy = "dedicated",
///                 IamInstanceProfileArn = example.Arn,
///             },
///             new Aws.Ec2.Inputs.SpotFleetRequestLaunchSpecificationArgs
///             {
///                 RootBlockDevices = new[]
///                 {
///                     new Aws.Ec2.Inputs.SpotFleetRequestLaunchSpecificationRootBlockDeviceArgs
///                     {
///                         VolumeSize = 300,
///                         VolumeType = "gp2",
///                     },
///                 },
///                 InstanceType = "m4.4xlarge",
///                 Ami = "ami-5678",
///                 KeyName = "my-key",
///                 SpotPrice = "1.117",
///                 IamInstanceProfileArn = example.Arn,
///                 AvailabilityZone = "us-west-1a",
///                 SubnetId = "subnet-1234",
///                 WeightedCapacity = "35",
///                 Tags =
///                 {
///                     { "Name", "spot-fleet-example" },
///                 },
///             },
///         },
///         IamFleetRole = "arn:aws:iam::12345678:role/spot-fleet",
///         SpotPrice = "0.03",
///         AllocationStrategy = "diversified",
///         TargetCapacity = 6,
///         ValidUntil = "2019-11-04T20:44:20Z",
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
/// 		// Request a Spot fleet
/// 		_, err := ec2.NewSpotFleetRequest(ctx, "cheap_compute", &ec2.SpotFleetRequestArgs{
/// 			LaunchSpecifications: ec2.SpotFleetRequestLaunchSpecificationArray{
/// 				&ec2.SpotFleetRequestLaunchSpecificationArgs{
/// 					InstanceType:          pulumi.String("m4.10xlarge"),
/// 					Ami:                   pulumi.String("ami-1234"),
/// 					SpotPrice:             pulumi.String("2.793"),
/// 					PlacementTenancy:      pulumi.String("dedicated"),
/// 					IamInstanceProfileArn: pulumi.Any(example.Arn),
/// 				},
/// 				&ec2.SpotFleetRequestLaunchSpecificationArgs{
/// 					RootBlockDevices: ec2.SpotFleetRequestLaunchSpecificationRootBlockDeviceArray{
/// 						&ec2.SpotFleetRequestLaunchSpecificationRootBlockDeviceArgs{
/// 							VolumeSize: pulumi.Int(300),
/// 							VolumeType: pulumi.String("gp2"),
/// 						},
/// 					},
/// 					InstanceType:          pulumi.String("m4.4xlarge"),
/// 					Ami:                   pulumi.String("ami-5678"),
/// 					KeyName:               pulumi.String("my-key"),
/// 					SpotPrice:             pulumi.String("1.117"),
/// 					IamInstanceProfileArn: pulumi.Any(example.Arn),
/// 					AvailabilityZone:      pulumi.String("us-west-1a"),
/// 					SubnetId:              pulumi.String("subnet-1234"),
/// 					WeightedCapacity:      pulumi.String("35"),
/// 					Tags: pulumi.StringMap{
/// 						"Name": pulumi.String("spot-fleet-example"),
/// 					},
/// 				},
/// 			},
/// 			IamFleetRole:       pulumi.String("arn:aws:iam::12345678:role/spot-fleet"),
/// 			SpotPrice:          pulumi.String("0.03"),
/// 			AllocationStrategy: pulumi.String("diversified"),
/// 			TargetCapacity:     pulumi.Int(6),
/// 			ValidUntil:         pulumi.String("2019-11-04T20:44:20Z"),
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
/// # Request a Spot fleet
/// resource "aws_ec2_spotfleetrequest" "cheap_compute" {
///   launch_specifications {
///     instance_type            = "m4.10xlarge"
///     ami                      = "ami-1234"
///     spot_price               = "2.793"
///     placement_tenancy        = "dedicated"
///     iam_instance_profile_arn = example.arn
///   }
///   launch_specifications {
///     root_block_devices {
///       volume_size = "300"
///       volume_type = "gp2"
///     }
///     instance_type            = "m4.4xlarge"
///     ami                      = "ami-5678"
///     key_name                 = "my-key"
///     spot_price               = "1.117"
///     iam_instance_profile_arn = example.arn
///     availability_zone        = "us-west-1a"
///     subnet_id                = "subnet-1234"
///     weighted_capacity        = 35
///     tags = {
///       "Name" = "spot-fleet-example"
///     }
///   }
///   iam_fleet_role      = "arn:aws:iam::12345678:role/spot-fleet"
///   spot_price          = "0.03"
///   allocation_strategy = "diversified"
///   target_capacity     = 6
///   valid_until         = "2019-11-04T20:44:20Z"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.SpotFleetRequest;
/// import com.pulumi.aws.ec2.SpotFleetRequestArgs;
/// import com.pulumi.aws.ec2.inputs.SpotFleetRequestLaunchSpecificationArgs;
/// import com.pulumi.aws.ec2.inputs.SpotFleetRequestLaunchSpecificationRootBlockDeviceArgs;
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
///         // Request a Spot fleet
///         var cheapCompute = new SpotFleetRequest("cheapCompute", SpotFleetRequestArgs.builder()
///             .launchSpecifications(
///                 SpotFleetRequestLaunchSpecificationArgs.builder()
///                     .instanceType("m4.10xlarge")
///                     .ami("ami-1234")
///                     .spotPrice("2.793")
///                     .placementTenancy("dedicated")
///                     .iamInstanceProfileArn(example.arn())
///                     .build(),
///                 SpotFleetRequestLaunchSpecificationArgs.builder()
///                     .rootBlockDevices(SpotFleetRequestLaunchSpecificationRootBlockDeviceArgs.builder()
///                         .volumeSize(300)
///                         .volumeType("gp2")
///                         .build())
///                     .instanceType("m4.4xlarge")
///                     .ami("ami-5678")
///                     .keyName("my-key")
///                     .spotPrice("1.117")
///                     .iamInstanceProfileArn(example.arn())
///                     .availabilityZone("us-west-1a")
///                     .subnetId("subnet-1234")
///                     .weightedCapacity("35")
///                     .tags(Map.of("Name", "spot-fleet-example"))
///                     .build())
///             .iamFleetRole("arn:aws:iam::12345678:role/spot-fleet")
///             .spotPrice("0.03")
///             .allocationStrategy("diversified")
///             .targetCapacity(6)
///             .validUntil("2019-11-04T20:44:20Z")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Request a Spot fleet
///   cheapCompute:
///     type: aws:ec2:SpotFleetRequest
///     name: cheap_compute
///     properties:
///       launchSpecifications:
///         - instanceType: m4.10xlarge
///           ami: ami-1234
///           spotPrice: '2.793'
///           placementTenancy: dedicated
///           iamInstanceProfileArn: ${example.arn}
///         - rootBlockDevices:
///             - volumeSize: '300'
///               volumeType: gp2
///           instanceType: m4.4xlarge
///           ami: ami-5678
///           keyName: my-key
///           spotPrice: '1.117'
///           iamInstanceProfileArn: ${example.arn}
///           availabilityZone: us-west-1a
///           subnetId: subnet-1234
///           weightedCapacity: 35
///           tags:
///             Name: spot-fleet-example
///       iamFleetRole: arn:aws:iam::12345678:role/spot-fleet
///       spotPrice: '0.03'
///       allocationStrategy: diversified
///       targetCapacity: 6
///       validUntil: 2019-11-04T20:44:20Z
/// ```
///
///
/// ### Using launch templates
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.ec2.LaunchTemplate("foo", {
///     name: "launch-template",
///     imageId: "ami-516b9131",
///     instanceType: "m1.small",
///     keyName: "some-key",
/// });
/// const fooSpotFleetRequest = new aws.ec2.SpotFleetRequest("foo", {
///     launchTemplateConfigs: [{
///         launchTemplateSpecification: {
///             id: foo.id,
///             version: foo.latestVersion.apply(x =>String(x)),
///         },
///     }],
///     iamFleetRole: "arn:aws:iam::12345678:role/spot-fleet",
///     spotPrice: "0.005",
///     targetCapacity: 2,
///     validUntil: "2019-11-04T20:44:20Z",
/// }, {
///     dependsOn: [test_attach],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.LaunchTemplate("foo",
///     name="launch-template",
///     image_id="ami-516b9131",
///     instance_type="m1.small",
///     key_name="some-key")
/// foo_spot_fleet_request = aws.ec2.SpotFleetRequest("foo",
///     launch_template_configs=[{
///         "launch_template_specification": {
///             "id": foo.id,
///             "version": foo.latest_version.apply(lambda x: str(x)),
///         },
///     }],
///     iam_fleet_role="arn:aws:iam::12345678:role/spot-fleet",
///     spot_price="0.005",
///     target_capacity=2,
///     valid_until="2019-11-04T20:44:20Z",
///     opts = pulumi.ResourceOptions(depends_on=[test_attach]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Aws.Ec2.LaunchTemplate("foo", new()
///     {
///         Name = "launch-template",
///         ImageId = "ami-516b9131",
///         InstanceType = "m1.small",
///         KeyName = "some-key",
///     });
///
///     var fooSpotFleetRequest = new Aws.Ec2.SpotFleetRequest("foo", new()
///     {
///         LaunchTemplateConfigs = new[]
///         {
///             new Aws.Ec2.Inputs.SpotFleetRequestLaunchTemplateConfigArgs
///             {
///                 LaunchTemplateSpecification = new Aws.Ec2.Inputs.SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecificationArgs
///                 {
///                     Id = foo.Id,
///                     Version = foo.LatestVersion,
///                 },
///             },
///         },
///         IamFleetRole = "arn:aws:iam::12345678:role/spot-fleet",
///         SpotPrice = "0.005",
///         TargetCapacity = 2,
///         ValidUntil = "2019-11-04T20:44:20Z",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             test_attach,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := ec2.NewLaunchTemplate(ctx, "foo", &ec2.LaunchTemplateArgs{
/// 			Name:         pulumi.String("launch-template"),
/// 			ImageId:      pulumi.String("ami-516b9131"),
/// 			InstanceType: pulumi.String("m1.small"),
/// 			KeyName:      pulumi.String("some-key"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewSpotFleetRequest(ctx, "foo", &ec2.SpotFleetRequestArgs{
/// 			LaunchTemplateConfigs: ec2.SpotFleetRequestLaunchTemplateConfigArray{
/// 				&ec2.SpotFleetRequestLaunchTemplateConfigArgs{
/// 					LaunchTemplateSpecification: &ec2.SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecificationArgs{
/// 						Id:      foo.ID().ToIDOutput().ToStringOutput(),
/// 						Version: foo.LatestVersion,
/// 					},
/// 				},
/// 			},
/// 			IamFleetRole:   pulumi.String("arn:aws:iam::12345678:role/spot-fleet"),
/// 			SpotPrice:      pulumi.String("0.005"),
/// 			TargetCapacity: pulumi.Int(2),
/// 			ValidUntil:     pulumi.String("2019-11-04T20:44:20Z"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			test_attach,
/// 		}))
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
/// resource "aws_ec2_launchtemplate" "foo" {
///   name          = "launch-template"
///   image_id      = "ami-516b9131"
///   instance_type = "m1.small"
///   key_name      = "some-key"
/// }
/// resource "aws_ec2_spotfleetrequest" "foo" {
///   depends_on = [test-attach]
///   launch_template_configs {
///     launch_template_specification = {
///       id      = aws_ec2_launchtemplate.foo.id
///       version = aws_ec2_launchtemplate.foo.latest_version
///     }
///   }
///   iam_fleet_role  = "arn:aws:iam::12345678:role/spot-fleet"
///   spot_price      = "0.005"
///   target_capacity = 2
///   valid_until     = "2019-11-04T20:44:20Z"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.LaunchTemplate;
/// import com.pulumi.aws.ec2.LaunchTemplateArgs;
/// import com.pulumi.aws.ec2.SpotFleetRequest;
/// import com.pulumi.aws.ec2.SpotFleetRequestArgs;
/// import com.pulumi.aws.ec2.inputs.SpotFleetRequestLaunchTemplateConfigArgs;
/// import com.pulumi.aws.ec2.inputs.SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecificationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var foo = new LaunchTemplate("foo", LaunchTemplateArgs.builder()
///             .name("launch-template")
///             .imageId("ami-516b9131")
///             .instanceType("m1.small")
///             .keyName("some-key")
///             .build());
///
///         var fooSpotFleetRequest = new SpotFleetRequest("fooSpotFleetRequest", SpotFleetRequestArgs.builder()
///             .launchTemplateConfigs(SpotFleetRequestLaunchTemplateConfigArgs.builder()
///                 .launchTemplateSpecification(SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecificationArgs.builder()
///                     .id(foo.id())
///                     .version(foo.latestVersion())
///                     .build())
///                 .build())
///             .iamFleetRole("arn:aws:iam::12345678:role/spot-fleet")
///             .spotPrice("0.005")
///             .targetCapacity(2)
///             .validUntil("2019-11-04T20:44:20Z")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(test_attach)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:ec2:LaunchTemplate
///     properties:
///       name: launch-template
///       imageId: ami-516b9131
///       instanceType: m1.small
///       keyName: some-key
///   fooSpotFleetRequest:
///     type: aws:ec2:SpotFleetRequest
///     name: foo
///     properties:
///       launchTemplateConfigs:
///         - launchTemplateSpecification:
///             id: ${foo.id}
///             version: ${foo.latestVersion}
///       iamFleetRole: arn:aws:iam::12345678:role/spot-fleet
///       spotPrice: '0.005'
///       targetCapacity: 2
///       validUntil: 2019-11-04T20:44:20Z
///     options:
///       dependsOn:
///         - ${["test-attach"]}
/// ```
///
///
/// &gt; **NOTE:** This provider does not support the functionality where multiple `subnetId` or `availabilityZone` parameters can be specified in the same
/// launch configuration block. If you want to specify multiple values, then separate launch configuration blocks should be used or launch template overrides should be configured, one per subnet:
///
/// ### Using multiple launch specifications
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.ec2.SpotFleetRequest("foo", {
///     launchSpecifications: [
///         {
///             instanceType: "m1.small",
///             ami: "ami-d06a90b0",
///             keyName: "my-key",
///             availabilityZone: "us-west-2a",
///         },
///         {
///             instanceType: "m5.large",
///             ami: "ami-d06a90b0",
///             keyName: "my-key",
///             availabilityZone: "us-west-2a",
///         },
///     ],
///     iamFleetRole: "arn:aws:iam::12345678:role/spot-fleet",
///     spotPrice: "0.005",
///     targetCapacity: 2,
///     validUntil: "2019-11-04T20:44:20Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.SpotFleetRequest("foo",
///     launch_specifications=[
///         {
///             "instance_type": "m1.small",
///             "ami": "ami-d06a90b0",
///             "key_name": "my-key",
///             "availability_zone": "us-west-2a",
///         },
///         {
///             "instance_type": "m5.large",
///             "ami": "ami-d06a90b0",
///             "key_name": "my-key",
///             "availability_zone": "us-west-2a",
///         },
///     ],
///     iam_fleet_role="arn:aws:iam::12345678:role/spot-fleet",
///     spot_price="0.005",
///     target_capacity=2,
///     valid_until="2019-11-04T20:44:20Z")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Aws.Ec2.SpotFleetRequest("foo", new()
///     {
///         LaunchSpecifications = new[]
///         {
///             new Aws.Ec2.Inputs.SpotFleetRequestLaunchSpecificationArgs
///             {
///                 InstanceType = "m1.small",
///                 Ami = "ami-d06a90b0",
///                 KeyName = "my-key",
///                 AvailabilityZone = "us-west-2a",
///             },
///             new Aws.Ec2.Inputs.SpotFleetRequestLaunchSpecificationArgs
///             {
///                 InstanceType = "m5.large",
///                 Ami = "ami-d06a90b0",
///                 KeyName = "my-key",
///                 AvailabilityZone = "us-west-2a",
///             },
///         },
///         IamFleetRole = "arn:aws:iam::12345678:role/spot-fleet",
///         SpotPrice = "0.005",
///         TargetCapacity = 2,
///         ValidUntil = "2019-11-04T20:44:20Z",
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
/// 		_, err := ec2.NewSpotFleetRequest(ctx, "foo", &ec2.SpotFleetRequestArgs{
/// 			LaunchSpecifications: ec2.SpotFleetRequestLaunchSpecificationArray{
/// 				&ec2.SpotFleetRequestLaunchSpecificationArgs{
/// 					InstanceType:     pulumi.String("m1.small"),
/// 					Ami:              pulumi.String("ami-d06a90b0"),
/// 					KeyName:          pulumi.String("my-key"),
/// 					AvailabilityZone: pulumi.String("us-west-2a"),
/// 				},
/// 				&ec2.SpotFleetRequestLaunchSpecificationArgs{
/// 					InstanceType:     pulumi.String("m5.large"),
/// 					Ami:              pulumi.String("ami-d06a90b0"),
/// 					KeyName:          pulumi.String("my-key"),
/// 					AvailabilityZone: pulumi.String("us-west-2a"),
/// 				},
/// 			},
/// 			IamFleetRole:   pulumi.String("arn:aws:iam::12345678:role/spot-fleet"),
/// 			SpotPrice:      pulumi.String("0.005"),
/// 			TargetCapacity: pulumi.Int(2),
/// 			ValidUntil:     pulumi.String("2019-11-04T20:44:20Z"),
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
/// resource "aws_ec2_spotfleetrequest" "foo" {
///   launch_specifications {
///     instance_type     = "m1.small"
///     ami               = "ami-d06a90b0"
///     key_name          = "my-key"
///     availability_zone = "us-west-2a"
///   }
///   launch_specifications {
///     instance_type     = "m5.large"
///     ami               = "ami-d06a90b0"
///     key_name          = "my-key"
///     availability_zone = "us-west-2a"
///   }
///   iam_fleet_role  = "arn:aws:iam::12345678:role/spot-fleet"
///   spot_price      = "0.005"
///   target_capacity = 2
///   valid_until     = "2019-11-04T20:44:20Z"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.SpotFleetRequest;
/// import com.pulumi.aws.ec2.SpotFleetRequestArgs;
/// import com.pulumi.aws.ec2.inputs.SpotFleetRequestLaunchSpecificationArgs;
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
///         var foo = new SpotFleetRequest("foo", SpotFleetRequestArgs.builder()
///             .launchSpecifications(
///                 SpotFleetRequestLaunchSpecificationArgs.builder()
///                     .instanceType("m1.small")
///                     .ami("ami-d06a90b0")
///                     .keyName("my-key")
///                     .availabilityZone("us-west-2a")
///                     .build(),
///                 SpotFleetRequestLaunchSpecificationArgs.builder()
///                     .instanceType("m5.large")
///                     .ami("ami-d06a90b0")
///                     .keyName("my-key")
///                     .availabilityZone("us-west-2a")
///                     .build())
///             .iamFleetRole("arn:aws:iam::12345678:role/spot-fleet")
///             .spotPrice("0.005")
///             .targetCapacity(2)
///             .validUntil("2019-11-04T20:44:20Z")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:ec2:SpotFleetRequest
///     properties:
///       launchSpecifications:
///         - instanceType: m1.small
///           ami: ami-d06a90b0
///           keyName: my-key
///           availabilityZone: us-west-2a
///         - instanceType: m5.large
///           ami: ami-d06a90b0
///           keyName: my-key
///           availabilityZone: us-west-2a
///       iamFleetRole: arn:aws:iam::12345678:role/spot-fleet
///       spotPrice: '0.005'
///       targetCapacity: 2
///       validUntil: 2019-11-04T20:44:20Z
/// ```
///
///
/// &gt; In this example, we use a `dynamic` block to define zero or more `launchSpecification` blocks, producing one for each element in the list of subnet ids.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const subnets = config.requireObject<any>("subnets");
/// const example = new aws.ec2.SpotFleetRequest("example", {
///     launchSpecifications: .map(s => ({
///         subnetId: s[1],
///     })).map(entry => ({
///         rootBlockDevices: [{
///             volumeSize: 8,
///             volumeType: "gp2",
///             deleteOnTermination: true,
///         }],
///         ami: "ami-1234",
///         instanceType: "m4.4xlarge",
///         subnetId: entry.subnetId,
///         vpcSecurityGroupIds: "sg-123456",
///         tags: {
///             Name: "Spot Node",
///             tag_builder: "builder",
///         },
///     })),
///     iamFleetRole: "arn:aws:iam::12345678:role/spot-fleet",
///     targetCapacity: 3,
///     validUntil: "2019-11-04T20:44:20Z",
///     allocationStrategy: "lowestPrice",
///     fleetType: "request",
///     waitForFulfillment: true,
///     terminateInstancesWithExpiration: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// subnets = config.require_object("subnets")
/// example = aws.ec2.SpotFleetRequest("example",
///     launch_specifications=[{
///         "root_block_devices": [{
///             "volume_size": 8,
///             "volume_type": "gp2",
///             "delete_on_termination": True,
///         }],
///         "ami": "ami-1234",
///         "instance_type": "m4.4xlarge",
///         "subnet_id": entry["subnetId"],
///         "vpc_security_group_ids": "sg-123456",
///         "tags": {
///             "Name": "Spot Node",
///             "tag_builder": "builder",
///         },
///     } for entry in [{
///         "subnetId": s[1],
///     } for s in subnets]],
///     iam_fleet_role="arn:aws:iam::12345678:role/spot-fleet",
///     target_capacity=3,
///     valid_until="2019-11-04T20:44:20Z",
///     allocation_strategy="lowestPrice",
///     fleet_type="request",
///     wait_for_fulfillment=True,
///     terminate_instances_with_expiration=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var subnets = config.RequireObject<dynamic>("subnets");
///     var example = new Aws.Ec2.SpotFleetRequest("example", new()
///     {
///         LaunchSpecifications = .Select(s =>
///         {
///             return
///             {
///                 { "subnetId", s[1] },
///             };
///         }).ToList().Select(entry =>
///         {
///             return new Aws.Ec2.Inputs.SpotFleetRequestLaunchSpecificationArgs
///             {
///                 RootBlockDevices = new[]
///                 {
///                     new Aws.Ec2.Inputs.SpotFleetRequestLaunchSpecificationRootBlockDeviceArgs
///                     {
///                         VolumeSize = 8,
///                         VolumeType = "gp2",
///                         DeleteOnTermination = true,
///                     },
///                 },
///                 Ami = "ami-1234",
///                 InstanceType = "m4.4xlarge",
///                 SubnetId = entry.SubnetId,
///                 VpcSecurityGroupIds = "sg-123456",
///                 Tags =
///                 {
///                     { "Name", "Spot Node" },
///                     { "tag_builder", "builder" },
///                 },
///             };
///         }).ToList(),
///         IamFleetRole = "arn:aws:iam::12345678:role/spot-fleet",
///         TargetCapacity = 3,
///         ValidUntil = "2019-11-04T20:44:20Z",
///         AllocationStrategy = "lowestPrice",
///         FleetType = "request",
///         WaitForFulfillment = true,
///         TerminateInstancesWithExpiration = true,
///     });
///
/// });
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
/// resource "aws_ec2_spotfleetrequest" "example" {
///   dynamic "launch_specifications" {
///     for_each = [for s in var.subnets : {
///       "subnetId" = s[1]
///     } ]
///     content {
///       root_block_devices {
///         volume_size           = "8"
///         volume_type           = "gp2"
///         delete_on_termination = "true"
///       }
///       ami                    = "ami-1234"
///       instance_type          = "m4.4xlarge"
///       subnet_id              = launch_specifications.value.subnetId
///       vpc_security_group_ids = "sg-123456"
///       tags = {
///         "Name"        = "Spot Node"
///         "tag_builder" = "builder"
///       }
///     }
///   }
///   iam_fleet_role                      = "arn:aws:iam::12345678:role/spot-fleet"
///   target_capacity                     = 3
///   valid_until                         = "2019-11-04T20:44:20Z"
///   allocation_strategy                 = "lowestPrice"
///   fleet_type                          = "request"
///   wait_for_fulfillment                = "true"
///   terminate_instances_with_expiration = "true"
/// }
/// variable "subnets" {
/// }
/// ```
///
///
/// ### Using multiple launch configurations
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getSubnets({
///     filters: [{
///         name: "vpc-id",
///         values: [vpcId],
///     }],
/// });
/// const foo = new aws.ec2.LaunchTemplate("foo", {
///     name: "launch-template",
///     imageId: "ami-516b9131",
///     instanceType: "m1.small",
///     keyName: "some-key",
/// });
/// const fooSpotFleetRequest = new aws.ec2.SpotFleetRequest("foo", {
///     launchTemplateConfigs: [{
///         launchTemplateSpecification: {
///             id: foo.id,
///             version: foo.latestVersion.apply(x =>String(x)),
///         },
///         overrides: [
///             {
///                 subnetId: example.then(example => example.ids?.[0]),
///             },
///             {
///                 subnetId: example.then(example => example.ids?.[1]),
///             },
///             {
///                 subnetId: example.then(example => example.ids?.[2]),
///             },
///         ],
///     }],
///     iamFleetRole: "arn:aws:iam::12345678:role/spot-fleet",
///     spotPrice: "0.005",
///     targetCapacity: 2,
///     validUntil: "2019-11-04T20:44:20Z",
/// }, {
///     dependsOn: [test_attach],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_subnets(filters=[{
///     "name": "vpc-id",
///     "values": [vpc_id],
/// }])
/// foo = aws.ec2.LaunchTemplate("foo",
///     name="launch-template",
///     image_id="ami-516b9131",
///     instance_type="m1.small",
///     key_name="some-key")
/// foo_spot_fleet_request = aws.ec2.SpotFleetRequest("foo",
///     launch_template_configs=[{
///         "launch_template_specification": {
///             "id": foo.id,
///             "version": foo.latest_version.apply(lambda x: str(x)),
///         },
///         "overrides": [
///             {
///                 "subnet_id": example.ids[0],
///             },
///             {
///                 "subnet_id": example.ids[1],
///             },
///             {
///                 "subnet_id": example.ids[2],
///             },
///         ],
///     }],
///     iam_fleet_role="arn:aws:iam::12345678:role/spot-fleet",
///     spot_price="0.005",
///     target_capacity=2,
///     valid_until="2019-11-04T20:44:20Z",
///     opts = pulumi.ResourceOptions(depends_on=[test_attach]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetSubnets.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetSubnetsFilterInputArgs
///             {
///                 Name = "vpc-id",
///                 Values = new[]
///                 {
///                     vpcId,
///                 },
///             },
///         },
///     });
///
///     var foo = new Aws.Ec2.LaunchTemplate("foo", new()
///     {
///         Name = "launch-template",
///         ImageId = "ami-516b9131",
///         InstanceType = "m1.small",
///         KeyName = "some-key",
///     });
///
///     var fooSpotFleetRequest = new Aws.Ec2.SpotFleetRequest("foo", new()
///     {
///         LaunchTemplateConfigs = new[]
///         {
///             new Aws.Ec2.Inputs.SpotFleetRequestLaunchTemplateConfigArgs
///             {
///                 LaunchTemplateSpecification = new Aws.Ec2.Inputs.SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecificationArgs
///                 {
///                     Id = foo.Id,
///                     Version = foo.LatestVersion,
///                 },
///                 Overrides = new[]
///                 {
///                     new Aws.Ec2.Inputs.SpotFleetRequestLaunchTemplateConfigOverrideArgs
///                     {
///                         SubnetId = example.Apply(getSubnetsResult => getSubnetsResult.Ids[0]),
///                     },
///                     new Aws.Ec2.Inputs.SpotFleetRequestLaunchTemplateConfigOverrideArgs
///                     {
///                         SubnetId = example.Apply(getSubnetsResult => getSubnetsResult.Ids[1]),
///                     },
///                     new Aws.Ec2.Inputs.SpotFleetRequestLaunchTemplateConfigOverrideArgs
///                     {
///                         SubnetId = example.Apply(getSubnetsResult => getSubnetsResult.Ids[2]),
///                     },
///                 },
///             },
///         },
///         IamFleetRole = "arn:aws:iam::12345678:role/spot-fleet",
///         SpotPrice = "0.005",
///         TargetCapacity = 2,
///         ValidUntil = "2019-11-04T20:44:20Z",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             test_attach,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.GetSubnets(ctx, &ec2.GetSubnetsArgs{
/// 			Filters: []ec2.GetSubnetsFilter{
/// 				{
/// 					Name: "vpc-id",
/// 					Values: pulumi.StringArray{
/// 						vpcId,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foo, err := ec2.NewLaunchTemplate(ctx, "foo", &ec2.LaunchTemplateArgs{
/// 			Name:         pulumi.String("launch-template"),
/// 			ImageId:      pulumi.String("ami-516b9131"),
/// 			InstanceType: pulumi.String("m1.small"),
/// 			KeyName:      pulumi.String("some-key"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewSpotFleetRequest(ctx, "foo", &ec2.SpotFleetRequestArgs{
/// 			LaunchTemplateConfigs: ec2.SpotFleetRequestLaunchTemplateConfigArray{
/// 				&ec2.SpotFleetRequestLaunchTemplateConfigArgs{
/// 					LaunchTemplateSpecification: &ec2.SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecificationArgs{
/// 						Id:      foo.ID().ToIDOutput().ToStringOutput(),
/// 						Version: foo.LatestVersion,
/// 					},
/// 					Overrides: ec2.SpotFleetRequestLaunchTemplateConfigOverrideArray{
/// 						&ec2.SpotFleetRequestLaunchTemplateConfigOverrideArgs{
/// 							SubnetId: pulumi.String(example.Ids[0]),
/// 						},
/// 						&ec2.SpotFleetRequestLaunchTemplateConfigOverrideArgs{
/// 							SubnetId: pulumi.String(example.Ids[1]),
/// 						},
/// 						&ec2.SpotFleetRequestLaunchTemplateConfigOverrideArgs{
/// 							SubnetId: pulumi.String(example.Ids[2]),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			IamFleetRole:   pulumi.String("arn:aws:iam::12345678:role/spot-fleet"),
/// 			SpotPrice:      pulumi.String("0.005"),
/// 			TargetCapacity: pulumi.Int(2),
/// 			ValidUntil:     pulumi.String("2019-11-04T20:44:20Z"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			test_attach,
/// 		}))
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
/// data "aws_ec2_getsubnets" "example" {
///   filters {
///     name   = "vpc-id"
///     values = [vpcId]
///   }
/// }
///
/// resource "aws_ec2_launchtemplate" "foo" {
///   name          = "launch-template"
///   image_id      = "ami-516b9131"
///   instance_type = "m1.small"
///   key_name      = "some-key"
/// }
/// resource "aws_ec2_spotfleetrequest" "foo" {
///   depends_on = [test-attach]
///   launch_template_configs {
///     launch_template_specification = {
///       id      = aws_ec2_launchtemplate.foo.id
///       version = aws_ec2_launchtemplate.foo.latest_version
///     }
///     overrides {
///       subnet_id = data.aws_ec2_getsubnets.example.ids[0]
///     }
///     overrides {
///       subnet_id = data.aws_ec2_getsubnets.example.ids[1]
///     }
///     overrides {
///       subnet_id = data.aws_ec2_getsubnets.example.ids[2]
///     }
///   }
///   iam_fleet_role  = "arn:aws:iam::12345678:role/spot-fleet"
///   spot_price      = "0.005"
///   target_capacity = 2
///   valid_until     = "2019-11-04T20:44:20Z"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetSubnetsArgs;
/// import com.pulumi.aws.ec2.inputs.GetSubnetsFilterArgs;
/// import com.pulumi.aws.ec2.LaunchTemplate;
/// import com.pulumi.aws.ec2.LaunchTemplateArgs;
/// import com.pulumi.aws.ec2.SpotFleetRequest;
/// import com.pulumi.aws.ec2.SpotFleetRequestArgs;
/// import com.pulumi.aws.ec2.inputs.SpotFleetRequestLaunchTemplateConfigArgs;
/// import com.pulumi.aws.ec2.inputs.SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecificationArgs;
/// import com.pulumi.aws.ec2.inputs.SpotFleetRequestLaunchTemplateConfigOverrideArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var example = Ec2Functions.getSubnets(GetSubnetsArgs.builder()
///             .filters(GetSubnetsFilterArgs.builder()
///                 .name("vpc-id")
///                 .values(vpcId)
///                 .build())
///             .build());
///
///         var foo = new LaunchTemplate("foo", LaunchTemplateArgs.builder()
///             .name("launch-template")
///             .imageId("ami-516b9131")
///             .instanceType("m1.small")
///             .keyName("some-key")
///             .build());
///
///         var fooSpotFleetRequest = new SpotFleetRequest("fooSpotFleetRequest", SpotFleetRequestArgs.builder()
///             .launchTemplateConfigs(SpotFleetRequestLaunchTemplateConfigArgs.builder()
///                 .launchTemplateSpecification(SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecificationArgs.builder()
///                     .id(foo.id())
///                     .version(foo.latestVersion())
///                     .build())
///                 .overrides(
///                     SpotFleetRequestLaunchTemplateConfigOverrideArgs.builder()
///                         .subnetId(example.ids()[0])
///                         .build(),
///                     SpotFleetRequestLaunchTemplateConfigOverrideArgs.builder()
///                         .subnetId(example.ids()[1])
///                         .build(),
///                     SpotFleetRequestLaunchTemplateConfigOverrideArgs.builder()
///                         .subnetId(example.ids()[2])
///                         .build())
///                 .build())
///             .iamFleetRole("arn:aws:iam::12345678:role/spot-fleet")
///             .spotPrice("0.005")
///             .targetCapacity(2)
///             .validUntil("2019-11-04T20:44:20Z")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(test_attach)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:ec2:LaunchTemplate
///     properties:
///       name: launch-template
///       imageId: ami-516b9131
///       instanceType: m1.small
///       keyName: some-key
///   fooSpotFleetRequest:
///     type: aws:ec2:SpotFleetRequest
///     name: foo
///     properties:
///       launchTemplateConfigs:
///         - launchTemplateSpecification:
///             id: ${foo.id}
///             version: ${foo.latestVersion}
///           overrides:
///             - subnetId: ${example.ids[0]}
///             - subnetId: ${example.ids[1]}
///             - subnetId: ${example.ids[2]}
///       iamFleetRole: arn:aws:iam::12345678:role/spot-fleet
///       spotPrice: '0.005'
///       targetCapacity: 2
///       validUntil: 2019-11-04T20:44:20Z
///     options:
///       dependsOn:
///         - ${["test-attach"]}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getSubnets
///       arguments:
///         filters:
///           - name: vpc-id
///             values:
///               - ${vpcId}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Spot Fleet Requests using `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/spotFleetRequest:SpotFleetRequest fleet sfr-005e9ec8-5546-4c31-b317-31a62325411e
/// ```
class SpotFleetRequest extends pulumi.CustomResource {
  /// Indicates how to allocate the target capacity across
  /// the Spot pools specified by the Spot fleet request. Valid values: `lowestPrice`, `diversified`, `capacityOptimized`, `capacityOptimizedPrioritized`, and `priceCapacityOptimized`. The default is
  /// `lowestPrice`.
  late final pulumi.Output<String?> allocationStrategy;
  late final pulumi.Output<String> clientToken;
  /// Reserved.
  late final pulumi.Output<String?> context;
  /// Indicates whether running Spot
  /// instances should be terminated if the target capacity of the Spot fleet
  /// request is decreased below the current size of the Spot fleet.
  late final pulumi.Output<String?> excessCapacityTerminationPolicy;
  /// The type of fleet request. Indicates whether the Spot Fleet only requests the target
  /// capacity or also attempts to maintain it. Default is `maintain`.
  late final pulumi.Output<String?> fleetType;
  /// Grants the Spot fleet permission to terminate
  /// Spot instances on your behalf when you cancel its Spot fleet request using
  /// CancelSpotFleetRequests or when the Spot fleet request expires, if you set
  /// terminateInstancesWithExpiration.
  late final pulumi.Output<String> iamFleetRole;
  /// Indicates whether a Spot
  /// instance stops or terminates when it is interrupted. Default is
  /// `terminate`.
  late final pulumi.Output<String?> instanceInterruptionBehaviour;
  /// The number of Spot pools across which to allocate your target Spot capacity.
  /// Valid only when `allocationStrategy` is set to `lowestPrice`. Spot Fleet selects
  /// the cheapest Spot pools and evenly allocates your target Spot capacity across
  /// the number of Spot pools that you specify.
  late final pulumi.Output<int?> instancePoolsToUseCount;
  /// Used to define the launch configuration of the
  /// spot-fleet request. Can be specified multiple times to define different bids
  /// across different markets and instance types. Conflicts with `launchTemplateConfig`. At least one of `launchSpecification` or `launchTemplateConfig` is required.
  ///
  /// **Note**: This takes in similar but not
  /// identical inputs as `aws.ec2.Instance`.  There are limitations on
  /// what you can specify. See the list of officially supported inputs in the
  /// [reference documentation](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SpotFleetLaunchSpecification.html). Any normal `aws.ec2.Instance` parameter that corresponds to those inputs may be used and it have
  /// a additional parameter `iamInstanceProfileArn` takes `aws.iam.InstanceProfile` attribute `arn` as input.
  late final pulumi.Output<List<SpotFleetRequestLaunchSpecification>?> launchSpecifications;
  /// Launch template configuration block. See Launch Template Configs below for more details. Conflicts with `launchSpecification`. At least one of `launchSpecification` or `launchTemplateConfig` is required.
  late final pulumi.Output<List<SpotFleetRequestLaunchTemplateConfig>?> launchTemplateConfigs;
  /// A list of elastic load balancer names to add to the Spot fleet.
  late final pulumi.Output<List<String>> loadBalancers;
  /// The order of the launch template overrides to use in fulfilling On-Demand capacity. the possible values are: `lowestPrice` and `prioritized`. the default is `lowestPrice`.
  late final pulumi.Output<String?> onDemandAllocationStrategy;
  /// The maximum amount per hour for On-Demand Instances that you're willing to pay. When the maximum amount you're willing to pay is reached, the fleet stops launching instances even if it hasn’t met the target capacity.
  late final pulumi.Output<String?> onDemandMaxTotalPrice;
  /// The number of On-Demand units to request. If the request type is `maintain`, you can specify a target capacity of 0 and add capacity later.
  late final pulumi.Output<int?> onDemandTargetCapacity;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Indicates whether Spot fleet should replace unhealthy instances. Default `false`.
  late final pulumi.Output<bool?> replaceUnhealthyInstances;
  /// Nested argument containing maintenance strategies for managing your Spot Instances that are at an elevated risk of being interrupted. Defined below.
  late final pulumi.Output<SpotFleetRequestSpotMaintenanceStrategies?> spotMaintenanceStrategies;
  /// The maximum bid price per unit hour.
  late final pulumi.Output<String?> spotPrice;
  /// The state of the Spot fleet request.
  late final pulumi.Output<String> spotRequestState;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The number of units to request. You can choose to set the
  /// target capacity in terms of instances or a performance characteristic that is
  /// important to your application workload, such as vCPUs, memory, or I/O.
  late final pulumi.Output<int> targetCapacity;
  /// The unit for the target capacity. This can only be done with `instanceRequirements` defined
  late final pulumi.Output<String?> targetCapacityUnitType;
  /// A list of `aws.alb.TargetGroup` ARNs, for use with Application Load Balancing.
  late final pulumi.Output<List<String>> targetGroupArns;
  /// Indicates whether running Spot
  /// instances should be terminated when the resource is deleted (and the Spot fleet request cancelled).
  /// If no value is specified, the value of the `terminateInstancesWithExpiration` argument is used.
  late final pulumi.Output<String?> terminateInstancesOnDelete;
  /// Indicates whether running Spot
  /// instances should be terminated when the Spot fleet request expires.
  late final pulumi.Output<bool?> terminateInstancesWithExpiration;
  /// The start date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  late final pulumi.Output<String?> validFrom;
  /// The end date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new Spot instance requests are placed or enabled to fulfill the request.
  late final pulumi.Output<String?> validUntil;
  /// If set, this provider will
  /// wait for the Spot Request to be fulfilled, and will throw an error if the
  /// timeout of 10m is reached.
  late final pulumi.Output<bool?> waitForFulfillment;

  /// Creates a new [SpotFleetRequest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpotFleetRequest]. {@macro pulumi_ec2_spot_fleet_request_spot_fleet_request_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpotFleetRequest(
    String name, {
    SpotFleetRequestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/spotFleetRequest:SpotFleetRequest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    allocationStrategy = registerOutput<String?>('allocationStrategy');
    clientToken = registerOutput<String>('clientToken');
    context = registerOutput<String?>('context');
    excessCapacityTerminationPolicy = registerOutput<String?>('excessCapacityTerminationPolicy');
    fleetType = registerOutput<String?>('fleetType');
    iamFleetRole = registerOutput<String>('iamFleetRole');
    instanceInterruptionBehaviour = registerOutput<String?>('instanceInterruptionBehaviour');
    instancePoolsToUseCount = registerOutput<int?>('instancePoolsToUseCount');
    launchSpecifications = registerOutput<List<SpotFleetRequestLaunchSpecification>?>('launchSpecifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SpotFleetRequestLaunchSpecification>(guardedValue, (value) => SpotFleetRequestLaunchSpecification.fromMap((value as Map).cast<String, dynamic>())); });
    launchTemplateConfigs = registerOutput<List<SpotFleetRequestLaunchTemplateConfig>?>('launchTemplateConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SpotFleetRequestLaunchTemplateConfig>(guardedValue, (value) => SpotFleetRequestLaunchTemplateConfig.fromMap((value as Map).cast<String, dynamic>())); });
    loadBalancers = registerOutput<List<String>>('loadBalancers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    onDemandAllocationStrategy = registerOutput<String?>('onDemandAllocationStrategy');
    onDemandMaxTotalPrice = registerOutput<String?>('onDemandMaxTotalPrice');
    onDemandTargetCapacity = registerOutput<int?>('onDemandTargetCapacity');
    region = registerOutput<String>('region');
    replaceUnhealthyInstances = registerOutput<bool?>('replaceUnhealthyInstances');
    spotMaintenanceStrategies = registerOutput<SpotFleetRequestSpotMaintenanceStrategies?>('spotMaintenanceStrategies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpotFleetRequestSpotMaintenanceStrategies.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spotPrice = registerOutput<String?>('spotPrice');
    spotRequestState = registerOutput<String>('spotRequestState');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetCapacity = registerOutput<int>('targetCapacity');
    targetCapacityUnitType = registerOutput<String?>('targetCapacityUnitType');
    targetGroupArns = registerOutput<List<String>>('targetGroupArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    terminateInstancesOnDelete = registerOutput<String?>('terminateInstancesOnDelete');
    terminateInstancesWithExpiration = registerOutput<bool?>('terminateInstancesWithExpiration');
    validFrom = registerOutput<String?>('validFrom');
    validUntil = registerOutput<String?>('validUntil');
    waitForFulfillment = registerOutput<bool?>('waitForFulfillment');
  }

  /// Gets an existing [SpotFleetRequest] resource's state with the given [name] and [id].
  static SpotFleetRequest get(
    String name,
    pulumi.Input<String> id, {
    SpotFleetRequestState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SpotFleetRequest._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SpotFleetRequest._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/spotFleetRequest:SpotFleetRequest',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocationStrategy = registerOutput<String?>('allocationStrategy');
    clientToken = registerOutput<String>('clientToken');
    context = registerOutput<String?>('context');
    excessCapacityTerminationPolicy = registerOutput<String?>('excessCapacityTerminationPolicy');
    fleetType = registerOutput<String?>('fleetType');
    iamFleetRole = registerOutput<String>('iamFleetRole');
    instanceInterruptionBehaviour = registerOutput<String?>('instanceInterruptionBehaviour');
    instancePoolsToUseCount = registerOutput<int?>('instancePoolsToUseCount');
    launchSpecifications = registerOutput<List<SpotFleetRequestLaunchSpecification>?>('launchSpecifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SpotFleetRequestLaunchSpecification>(guardedValue, (value) => SpotFleetRequestLaunchSpecification.fromMap((value as Map).cast<String, dynamic>())); });
    launchTemplateConfigs = registerOutput<List<SpotFleetRequestLaunchTemplateConfig>?>('launchTemplateConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SpotFleetRequestLaunchTemplateConfig>(guardedValue, (value) => SpotFleetRequestLaunchTemplateConfig.fromMap((value as Map).cast<String, dynamic>())); });
    loadBalancers = registerOutput<List<String>>('loadBalancers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    onDemandAllocationStrategy = registerOutput<String?>('onDemandAllocationStrategy');
    onDemandMaxTotalPrice = registerOutput<String?>('onDemandMaxTotalPrice');
    onDemandTargetCapacity = registerOutput<int?>('onDemandTargetCapacity');
    region = registerOutput<String>('region');
    replaceUnhealthyInstances = registerOutput<bool?>('replaceUnhealthyInstances');
    spotMaintenanceStrategies = registerOutput<SpotFleetRequestSpotMaintenanceStrategies?>('spotMaintenanceStrategies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpotFleetRequestSpotMaintenanceStrategies.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spotPrice = registerOutput<String?>('spotPrice');
    spotRequestState = registerOutput<String>('spotRequestState');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetCapacity = registerOutput<int>('targetCapacity');
    targetCapacityUnitType = registerOutput<String?>('targetCapacityUnitType');
    targetGroupArns = registerOutput<List<String>>('targetGroupArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    terminateInstancesOnDelete = registerOutput<String?>('terminateInstancesOnDelete');
    terminateInstancesWithExpiration = registerOutput<bool?>('terminateInstancesWithExpiration');
    validFrom = registerOutput<String?>('validFrom');
    validUntil = registerOutput<String?>('validUntil');
    waitForFulfillment = registerOutput<bool?>('waitForFulfillment');
  }

  /// Creates a typed reference to an existing [SpotFleetRequest] resource.
  SpotFleetRequest.reference(String urn)
    : super(
        'aws:ec2/spotFleetRequest:SpotFleetRequest',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allocationStrategy = registerOutput<String?>('allocationStrategy');
    clientToken = registerOutput<String>('clientToken');
    context = registerOutput<String?>('context');
    excessCapacityTerminationPolicy = registerOutput<String?>('excessCapacityTerminationPolicy');
    fleetType = registerOutput<String?>('fleetType');
    iamFleetRole = registerOutput<String>('iamFleetRole');
    instanceInterruptionBehaviour = registerOutput<String?>('instanceInterruptionBehaviour');
    instancePoolsToUseCount = registerOutput<int?>('instancePoolsToUseCount');
    launchSpecifications = registerOutput<List<SpotFleetRequestLaunchSpecification>?>('launchSpecifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SpotFleetRequestLaunchSpecification>(guardedValue, (value) => SpotFleetRequestLaunchSpecification.fromMap((value as Map).cast<String, dynamic>())); });
    launchTemplateConfigs = registerOutput<List<SpotFleetRequestLaunchTemplateConfig>?>('launchTemplateConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SpotFleetRequestLaunchTemplateConfig>(guardedValue, (value) => SpotFleetRequestLaunchTemplateConfig.fromMap((value as Map).cast<String, dynamic>())); });
    loadBalancers = registerOutput<List<String>>('loadBalancers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    onDemandAllocationStrategy = registerOutput<String?>('onDemandAllocationStrategy');
    onDemandMaxTotalPrice = registerOutput<String?>('onDemandMaxTotalPrice');
    onDemandTargetCapacity = registerOutput<int?>('onDemandTargetCapacity');
    region = registerOutput<String>('region');
    replaceUnhealthyInstances = registerOutput<bool?>('replaceUnhealthyInstances');
    spotMaintenanceStrategies = registerOutput<SpotFleetRequestSpotMaintenanceStrategies?>('spotMaintenanceStrategies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpotFleetRequestSpotMaintenanceStrategies.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spotPrice = registerOutput<String?>('spotPrice');
    spotRequestState = registerOutput<String>('spotRequestState');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetCapacity = registerOutput<int>('targetCapacity');
    targetCapacityUnitType = registerOutput<String?>('targetCapacityUnitType');
    targetGroupArns = registerOutput<List<String>>('targetGroupArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    terminateInstancesOnDelete = registerOutput<String?>('terminateInstancesOnDelete');
    terminateInstancesWithExpiration = registerOutput<bool?>('terminateInstancesWithExpiration');
    validFrom = registerOutput<String?>('validFrom');
    validUntil = registerOutput<String?>('validUntil');
    waitForFulfillment = registerOutput<bool?>('waitForFulfillment');
  }
}
