import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_point_args.dart';
import 'access_point_public_access_block_configuration.dart';
import 'access_point_vpc_configuration.dart';

/// Provides a resource to manage an S3 Access Point.
///
/// > **NOTE on Access Points and Access Point Policies:** This provider provides both a standalone Access Point Policy resource and an Access Point resource with a resource policy defined in-line. You cannot use an Access Point with in-line resource policy in conjunction with an Access Point Policy resource. Doing so will cause a conflict of policies and will overwrite the access point's resource policy.
///
/// > Advanced usage: To use a custom API endpoint for this resource, use the `s3control` endpoint provider configuration), not the `s3` endpoint provider configuration.
///
/// > This resource can be used with s3 directory buckets. Please see [AWS Documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-directory-buckets.html) for more information.
///
/// ## Example Usage
///
/// ### AWS Partition General Purpose Bucket
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const exampleAccessPoint = new aws.s3.AccessPoint("example", {
///     bucket: example.id,
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_access_point = aws.s3.AccessPoint("example",
///     bucket=example.id,
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example",
///     });
///
///     var exampleAccessPoint = new Aws.S3.AccessPoint("example", new()
///     {
///         Bucket = example.Id,
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewAccessPoint(ctx, "example", &s3.AccessPointArgs{
/// 			Bucket: example.ID(),
/// 			Name:   pulumi.String("example"),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.AccessPoint;
/// import com.pulumi.aws.s3.AccessPointArgs;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("example")
///             .build());
///
///         var exampleAccessPoint = new AccessPoint("exampleAccessPoint", AccessPointArgs.builder()
///             .bucket(example.id())
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: example
///   exampleAccessPoint:
///     type: aws:s3:AccessPoint
///     name: example
///     properties:
///       bucket: ${example.id}
///       name: example
/// ```
///
///
/// ### S3 on Outposts Bucket
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3control.Bucket("example", {bucket: "example"});
/// const exampleVpc = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleAccessPoint = new aws.s3.AccessPoint("example", {
///     bucket: example.arn,
///     name: "example",
///     vpcConfiguration: {
///         vpcId: exampleVpc.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.Bucket("example", bucket="example")
/// example_vpc = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_access_point = aws.s3.AccessPoint("example",
///     bucket=example.arn,
///     name="example",
///     vpc_configuration={
///         "vpc_id": example_vpc.id,
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
///     var example = new Aws.S3Control.Bucket("example", new()
///     {
///         BucketName = "example",
///     });
///
///     var exampleVpc = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var exampleAccessPoint = new Aws.S3.AccessPoint("example", new()
///     {
///         Bucket = example.Arn,
///         Name = "example",
///         VpcConfiguration = new Aws.S3.Inputs.AccessPointVpcConfigurationArgs
///         {
///             VpcId = exampleVpc.Id,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := s3control.NewBucket(ctx, "example", &s3control.BucketArgs{
/// 			Bucket: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewAccessPoint(ctx, "example", &s3.AccessPointArgs{
/// 			Bucket: example.Arn,
/// 			Name:   pulumi.String("example"),
/// 			VpcConfiguration: &s3.AccessPointVpcConfigurationArgs{
/// 				VpcId: exampleVpc.ID(),
/// 			},
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
/// import com.pulumi.aws.s3control.Bucket;
/// import com.pulumi.aws.s3control.BucketArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.s3.AccessPoint;
/// import com.pulumi.aws.s3.AccessPointArgs;
/// import com.pulumi.aws.s3.inputs.AccessPointVpcConfigurationArgs;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("example")
///             .build());
///
///         var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var exampleAccessPoint = new AccessPoint("exampleAccessPoint", AccessPointArgs.builder()
///             .bucket(example.arn())
///             .name("example")
///             .vpcConfiguration(AccessPointVpcConfigurationArgs.builder()
///                 .vpcId(exampleVpc.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3control:Bucket
///     properties:
///       bucket: example
///   exampleAccessPoint:
///     type: aws:s3:AccessPoint
///     name: example
///     properties:
///       bucket: ${example.arn}
///       name: example
///       vpcConfiguration:
///         vpcId: ${exampleVpc.id}
///   exampleVpc:
///     type: aws:ec2:Vpc
///     name: example
///     properties:
///       cidrBlock: 10.0.0.0/16
/// ```
///
///
/// ### AWS Partition Directory Bucket
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const available = aws.getAvailabilityZones({
///     state: "available",
/// });
/// const example = new aws.s3.DirectoryBucket("example", {
///     bucket: "example--zoneId--x-s3",
///     location: {
///         name: available.then(available => available.zoneIds?.[0]),
///     },
/// });
/// const exampleAccessPoint = new aws.s3.AccessPoint("example", {
///     bucket: test.bucket,
///     name: "example--zoneId--xa-s3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones(state="available")
/// example = aws.s3.DirectoryBucket("example",
///     bucket="example--zoneId--x-s3",
///     location={
///         "name": available.zone_ids[0],
///     })
/// example_access_point = aws.s3.AccessPoint("example",
///     bucket=test["bucket"],
///     name="example--zoneId--xa-s3")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Aws.GetAvailabilityZones.Invoke(new()
///     {
///         State = "available",
///     });
///
///     var example = new Aws.S3.DirectoryBucket("example", new()
///     {
///         Bucket = "example--zoneId--x-s3",
///         Location = new Aws.S3.Inputs.DirectoryBucketLocationArgs
///         {
///             Name = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.ZoneIds[0]),
///         },
///     });
///
///     var exampleAccessPoint = new Aws.S3.AccessPoint("example", new()
///     {
///         Bucket = test.Bucket,
///         Name = "example--zoneId--xa-s3",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// 			State: pulumi.StringRef("available"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewDirectoryBucket(ctx, "example", &s3.DirectoryBucketArgs{
/// 			Bucket: pulumi.String("example--zoneId--x-s3"),
/// 			Location: &s3.DirectoryBucketLocationArgs{
/// 				Name: pulumi.String(available.ZoneIds[0]),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewAccessPoint(ctx, "example", &s3.AccessPointArgs{
/// 			Bucket: pulumi.Any(test.Bucket),
/// 			Name:   pulumi.String("example--zoneId--xa-s3"),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.s3.DirectoryBucket;
/// import com.pulumi.aws.s3.DirectoryBucketArgs;
/// import com.pulumi.aws.s3.inputs.DirectoryBucketLocationArgs;
/// import com.pulumi.aws.s3.AccessPoint;
/// import com.pulumi.aws.s3.AccessPointArgs;
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
///         final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .state("available")
///             .build());
///
///         var example = new DirectoryBucket("example", DirectoryBucketArgs.builder()
///             .bucket("example--zoneId--x-s3")
///             .location(DirectoryBucketLocationArgs.builder()
///                 .name(available.zoneIds()[0])
///                 .build())
///             .build());
///
///         var exampleAccessPoint = new AccessPoint("exampleAccessPoint", AccessPointArgs.builder()
///             .bucket(test.bucket())
///             .name("example--zoneId--xa-s3")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:DirectoryBucket
///     properties:
///       bucket: example--zoneId--x-s3
///       location:
///         name: ${available.zoneIds[0]}
///   exampleAccessPoint:
///     type: aws:s3:AccessPoint
///     name: example
///     properties:
///       bucket: ${test.bucket}
///       name: example--zoneId--xa-s3
/// variables:
///   available:
///     fn::invoke:
///       function: aws:getAvailabilityZones
///       arguments:
///         state: available
/// ```
///
///
/// ## Import
///
/// Import using the ARN for Access Points associated with an S3 on Outposts Bucket:
///
///
/// **Using `pulumi import` to import.** For example:
///
/// Import using the `account_id` and `name` separated by a colon (`:`) for Access Points associated with an AWS Partition S3 Bucket:
///
/// ```sh
/// $ pulumi import aws:s3/accessPoint:AccessPoint example 123456789012:example
/// ```
///
/// Import using the ARN for Access Points associated with an S3 on Outposts Bucket:
///
/// ```sh
/// $ pulumi import aws:s3/accessPoint:AccessPoint example arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-1234567890123456/accesspoint/example
/// ```
class AccessPoint extends pulumi.CustomResource {
  /// AWS account ID for the owner of the bucket for which you want to create an access point. Defaults to automatically determined account ID of the AWS provider.
  late final pulumi.Output<String> accountId;

  /// Alias of the S3 Access Point.
  late final pulumi.Output<String> alias;

  /// ARN of the S3 Access Point.
  late final pulumi.Output<String> arn;

  /// Name of an AWS Partition S3 General Purpose Bucket or the ARN of S3 on Outposts Bucket that you want to associate this access point with.
  late final pulumi.Output<String> bucket;

  /// AWS account ID associated with the S3 bucket associated with this access point.
  late final pulumi.Output<String> bucketAccountId;

  /// DNS domain name of the S3 Access Point in the format _`name`_-_`account_id`_.s3-accesspoint._region_.amazonaws.com.
  /// Note: S3 access points only support secure access by HTTPS. HTTP isn't supported.
  late final pulumi.Output<String> domainName;

  /// VPC endpoints for the S3 Access Point.
  late final pulumi.Output<Map<String, String>> endpoints;

  /// Indicates whether this access point currently has a policy that allows public access.
  late final pulumi.Output<bool> hasPublicAccessPolicy;

  /// Name you want to assign to this access point. See the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-access-points.html?icmpid=docs_amazons3_console#access-points-names) for naming conditions.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Indicates whether this access point allows access from the public Internet. Values are `VPC` (the access point doesn't allow access from the public Internet) and `Internet` (the access point allows access from the public Internet, subject to the access point and bucket access policies).
  late final pulumi.Output<String> networkOrigin;

  /// Valid JSON document that specifies the policy that you want to apply to this access point. Removing `policy` from your configuration or setting `policy` to null or an empty string (i.e., `policy = ""`) _will not_ delete the policy since it could have been set by `aws.s3control.AccessPointPolicy`. To remove the `policy`, set it to `"{}"` (an empty JSON document).
  late final pulumi.Output<String> policy;

  /// Configuration block to manage the `PublicAccessBlock` configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. Detailed below.
  late final pulumi.Output<AccessPointPublicAccessBlockConfiguration?>
      publicAccessBlockConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags to assign to the bucket. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Configuration block to restrict access to this access point to requests from the specified Virtual Private Cloud (VPC). Required for S3 on Outposts. Detailed below.
  late final pulumi.Output<AccessPointVpcConfiguration?> vpcConfiguration;

  /// Creates a new [AccessPoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPoint]. {@macro pulumi_s3_access_point_access_point_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPoint(
    String name, {
    AccessPointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/accessPoint:AccessPoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.alias = registerOutput<String>('alias');
    this.arn = registerOutput<String>('arn');
    this.bucket = registerOutput<String>('bucket');
    this.bucketAccountId = registerOutput<String>('bucketAccountId');
    this.domainName = registerOutput<String>('domainName');
    this.endpoints = registerOutput<Map<String, String>>('endpoints');
    this.hasPublicAccessPolicy = registerOutput<bool>('hasPublicAccessPolicy');
    this.name = registerOutput<String>('name');
    this.networkOrigin = registerOutput<String>('networkOrigin');
    this.policy = registerOutput<String>('policy');
    this.publicAccessBlockConfiguration =
        registerOutput<AccessPointPublicAccessBlockConfiguration?>(
            'publicAccessBlockConfiguration');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcConfiguration =
        registerOutput<AccessPointVpcConfiguration?>('vpcConfiguration');
  }
}
