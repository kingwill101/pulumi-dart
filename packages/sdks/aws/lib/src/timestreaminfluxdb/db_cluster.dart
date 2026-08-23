import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_cluster_args.dart';
import 'db_cluster_log_delivery_configuration.dart';
import 'db_cluster_maintenance_schedule.dart';
import 'db_cluster_state.dart';
import 'db_cluster_timeouts.dart';

/// Resource for managing an Amazon Timestream for InfluxDB read-replica cluster.
///
/// &gt; **NOTE:** This resource requires a subscription to [Timestream for InfluxDB Read Replicas (Add-On) on the AWS Marketplace](https://aws.amazon.com/marketplace/pp/prodview-lftzfxtb5xlv4?applicationId=AWS-Marketplace-Console&ref_=beagle&sr=0-2).
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
/// const example = new aws.timestreaminfluxdb.DbCluster("example", {
///     allocatedStorage: 20,
///     bucket: "example-bucket-name",
///     dbInstanceType: "db.influx.medium",
///     failoverMode: "AUTOMATIC",
///     username: "admin",
///     password: "example-password",
///     port: 8086,
///     organization: "organization",
///     vpcSubnetIds: [
///         example1.id,
///         example2.id,
///     ],
///     vpcSecurityGroupIds: [exampleAwsSecurityGroup.id],
///     name: "example-db-cluster",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.timestreaminfluxdb.DbCluster("example",
///     allocated_storage=20,
///     bucket="example-bucket-name",
///     db_instance_type="db.influx.medium",
///     failover_mode="AUTOMATIC",
///     username="admin",
///     password="example-password",
///     port=8086,
///     organization="organization",
///     vpc_subnet_ids=[
///         example1["id"],
///         example2["id"],
///     ],
///     vpc_security_group_ids=[example_aws_security_group["id"]],
///     name="example-db-cluster")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.TimestreamInfluxDB.DbCluster("example", new()
///     {
///         AllocatedStorage = 20,
///         Bucket = "example-bucket-name",
///         DbInstanceType = "db.influx.medium",
///         FailoverMode = "AUTOMATIC",
///         Username = "admin",
///         Password = "example-password",
///         Port = 8086,
///         Organization = "organization",
///         VpcSubnetIds = new[]
///         {
///             example1.Id,
///             example2.Id,
///         },
///         VpcSecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         Name = "example-db-cluster",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreaminfluxdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := timestreaminfluxdb.NewDbCluster(ctx, "example", &timestreaminfluxdb.DbClusterArgs{
/// 			AllocatedStorage: pulumi.Int(20),
/// 			Bucket:           pulumi.String("example-bucket-name"),
/// 			DbInstanceType:   pulumi.String("db.influx.medium"),
/// 			FailoverMode:     pulumi.String("AUTOMATIC"),
/// 			Username:         pulumi.String("admin"),
/// 			Password:         pulumi.String("example-password"),
/// 			Port:             pulumi.Int(8086),
/// 			Organization:     pulumi.String("organization"),
/// 			VpcSubnetIds: pulumi.StringArray{
/// 				example1.Id,
/// 				example2.Id,
/// 			},
/// 			VpcSecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 			Name: pulumi.String("example-db-cluster"),
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
/// resource "aws_timestreaminfluxdb_dbcluster" "example" {
///   allocated_storage      = 20
///   bucket                 = "example-bucket-name"
///   db_instance_type       = "db.influx.medium"
///   failover_mode          = "AUTOMATIC"
///   username               = "admin"
///   password               = "example-password"
///   port                   = 8086
///   organization           = "organization"
///   vpc_subnet_ids         = [example1.id, example2.id]
///   vpc_security_group_ids = [exampleAwsSecurityGroup.id]
///   name                   = "example-db-cluster"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.timestreaminfluxdb.DbCluster;
/// import com.pulumi.aws.timestreaminfluxdb.DbClusterArgs;
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
///         var example = new DbCluster("example", DbClusterArgs.builder()
///             .allocatedStorage(20)
///             .bucket("example-bucket-name")
///             .dbInstanceType("db.influx.medium")
///             .failoverMode("AUTOMATIC")
///             .username("admin")
///             .password("example-password")
///             .port(8086)
///             .organization("organization")
///             .vpcSubnetIds(
///                 example1.id(),
///                 example2.id())
///             .vpcSecurityGroupIds(exampleAwsSecurityGroup.id())
///             .name("example-db-cluster")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:timestreaminfluxdb:DbCluster
///     properties:
///       allocatedStorage: 20
///       bucket: example-bucket-name
///       dbInstanceType: db.influx.medium
///       failoverMode: AUTOMATIC
///       username: admin
///       password: example-password
///       port: 8086
///       organization: organization
///       vpcSubnetIds:
///         - ${example1.id}
///         - ${example2.id}
///       vpcSecurityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
///       name: example-db-cluster
/// ```
///
///
/// ### Usage with Prerequisite Resources
///
/// All Timestream for InfluxDB clusters require a VPC, at least two subnets, and a security group. The following example shows how these prerequisite resources can be created and used with `aws.timestreaminfluxdb.DbCluster`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const example1 = new aws.ec2.Subnet("example_1", {
///     vpcId: example.id,
///     cidrBlock: "10.0.1.0/24",
/// });
/// const example2 = new aws.ec2.Subnet("example_2", {
///     vpcId: example.id,
///     cidrBlock: "10.0.2.0/24",
/// });
/// const exampleSecurityGroup = new aws.ec2.SecurityGroup("example", {
///     name: "example",
///     vpcId: example.id,
/// });
/// const exampleDbCluster = new aws.timestreaminfluxdb.DbCluster("example", {
///     allocatedStorage: 20,
///     bucket: "example-bucket-name",
///     dbInstanceType: "db.influx.medium",
///     username: "admin",
///     password: "example-password",
///     organization: "organization",
///     vpcSubnetIds: [
///         example1.id,
///         example2.id,
///     ],
///     vpcSecurityGroupIds: [exampleSecurityGroup.id],
///     name: "example-db-cluster",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example1 = aws.ec2.Subnet("example_1",
///     vpc_id=example.id,
///     cidr_block="10.0.1.0/24")
/// example2 = aws.ec2.Subnet("example_2",
///     vpc_id=example.id,
///     cidr_block="10.0.2.0/24")
/// example_security_group = aws.ec2.SecurityGroup("example",
///     name="example",
///     vpc_id=example.id)
/// example_db_cluster = aws.timestreaminfluxdb.DbCluster("example",
///     allocated_storage=20,
///     bucket="example-bucket-name",
///     db_instance_type="db.influx.medium",
///     username="admin",
///     password="example-password",
///     organization="organization",
///     vpc_subnet_ids=[
///         example1.id,
///         example2.id,
///     ],
///     vpc_security_group_ids=[example_security_group.id],
///     name="example-db-cluster")
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
///     });
///
///     var example1 = new Aws.Ec2.Subnet("example_1", new()
///     {
///         VpcId = example.Id,
///         CidrBlock = "10.0.1.0/24",
///     });
///
///     var example2 = new Aws.Ec2.Subnet("example_2", new()
///     {
///         VpcId = example.Id,
///         CidrBlock = "10.0.2.0/24",
///     });
///
///     var exampleSecurityGroup = new Aws.Ec2.SecurityGroup("example", new()
///     {
///         Name = "example",
///         VpcId = example.Id,
///     });
///
///     var exampleDbCluster = new Aws.TimestreamInfluxDB.DbCluster("example", new()
///     {
///         AllocatedStorage = 20,
///         Bucket = "example-bucket-name",
///         DbInstanceType = "db.influx.medium",
///         Username = "admin",
///         Password = "example-password",
///         Organization = "organization",
///         VpcSubnetIds = new[]
///         {
///             example1.Id,
///             example2.Id,
///         },
///         VpcSecurityGroupIds = new[]
///         {
///             exampleSecurityGroup.Id,
///         },
///         Name = "example-db-cluster",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreaminfluxdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example1, err := ec2.NewSubnet(ctx, "example_1", &ec2.SubnetArgs{
/// 			VpcId:     example.ID().ToIDOutput().ToStringOutput(),
/// 			CidrBlock: pulumi.String("10.0.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2, err := ec2.NewSubnet(ctx, "example_2", &ec2.SubnetArgs{
/// 			VpcId:     example.ID().ToIDOutput().ToStringOutput(),
/// 			CidrBlock: pulumi.String("10.0.2.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSecurityGroup, err := ec2.NewSecurityGroup(ctx, "example", &ec2.SecurityGroupArgs{
/// 			Name:  pulumi.String("example"),
/// 			VpcId: example.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = timestreaminfluxdb.NewDbCluster(ctx, "example", &timestreaminfluxdb.DbClusterArgs{
/// 			AllocatedStorage: pulumi.Int(20),
/// 			Bucket:           pulumi.String("example-bucket-name"),
/// 			DbInstanceType:   pulumi.String("db.influx.medium"),
/// 			Username:         pulumi.String("admin"),
/// 			Password:         pulumi.String("example-password"),
/// 			Organization:     pulumi.String("organization"),
/// 			VpcSubnetIds: pulumi.StringArray{
/// 				example1.ID().ToIDOutput().ToStringOutput(),
/// 				example2.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			VpcSecurityGroupIds: pulumi.StringArray{
/// 				exampleSecurityGroup.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			Name: pulumi.String("example-db-cluster"),
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
/// }
/// resource "aws_ec2_subnet" "example_1" {
///   vpc_id     = aws_ec2_vpc.example.id
///   cidr_block = "10.0.1.0/24"
/// }
/// resource "aws_ec2_subnet" "example_2" {
///   vpc_id     = aws_ec2_vpc.example.id
///   cidr_block = "10.0.2.0/24"
/// }
/// resource "aws_ec2_securitygroup" "example" {
///   name   = "example"
///   vpc_id = aws_ec2_vpc.example.id
/// }
/// resource "aws_timestreaminfluxdb_dbcluster" "example" {
///   allocated_storage      = 20
///   bucket                 = "example-bucket-name"
///   db_instance_type       = "db.influx.medium"
///   username               = "admin"
///   password               = "example-password"
///   organization           = "organization"
///   vpc_subnet_ids         = [aws_ec2_subnet.example_1.id, aws_ec2_subnet.example_2.id]
///   vpc_security_group_ids = [aws_ec2_securitygroup.example.id]
///   name                   = "example-db-cluster"
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
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.timestreaminfluxdb.DbCluster;
/// import com.pulumi.aws.timestreaminfluxdb.DbClusterArgs;
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
///             .build());
///
///         var example1 = new Subnet("example1", SubnetArgs.builder()
///             .vpcId(example.id())
///             .cidrBlock("10.0.1.0/24")
///             .build());
///
///         var example2 = new Subnet("example2", SubnetArgs.builder()
///             .vpcId(example.id())
///             .cidrBlock("10.0.2.0/24")
///             .build());
///
///         var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
///             .name("example")
///             .vpcId(example.id())
///             .build());
///
///         var exampleDbCluster = new DbCluster("exampleDbCluster", DbClusterArgs.builder()
///             .allocatedStorage(20)
///             .bucket("example-bucket-name")
///             .dbInstanceType("db.influx.medium")
///             .username("admin")
///             .password("example-password")
///             .organization("organization")
///             .vpcSubnetIds(
///                 example1.id(),
///                 example2.id())
///             .vpcSecurityGroupIds(exampleSecurityGroup.id())
///             .name("example-db-cluster")
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
///   example1:
///     type: aws:ec2:Subnet
///     name: example_1
///     properties:
///       vpcId: ${example.id}
///       cidrBlock: 10.0.1.0/24
///   example2:
///     type: aws:ec2:Subnet
///     name: example_2
///     properties:
///       vpcId: ${example.id}
///       cidrBlock: 10.0.2.0/24
///   exampleSecurityGroup:
///     type: aws:ec2:SecurityGroup
///     name: example
///     properties:
///       name: example
///       vpcId: ${example.id}
///   exampleDbCluster:
///     type: aws:timestreaminfluxdb:DbCluster
///     name: example
///     properties:
///       allocatedStorage: 20
///       bucket: example-bucket-name
///       dbInstanceType: db.influx.medium
///       username: admin
///       password: example-password
///       organization: organization
///       vpcSubnetIds:
///         - ${example1.id}
///         - ${example2.id}
///       vpcSecurityGroupIds:
///         - ${exampleSecurityGroup.id}
///       name: example-db-cluster
/// ```
///
///
/// ### Usage with S3 Log Delivery Enabled
///
/// You can use an S3 bucket to store logs generated by your Timestream for InfluxDB cluster. The following example shows what resources and arguments are required to configure an S3 bucket for logging, including the IAM policy that needs to be set in order to allow Timestream for InfluxDB to place logs in your S3 bucket. The configuration of the required VPC, security group, and subnets have been left out of the example for brevity.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleBucket = new aws.s3.Bucket("example", {
///     bucket: "example-s3-bucket",
///     forceDestroy: true,
/// });
/// const example = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         actions: ["s3:PutObject"],
///         principals: [{
///             type: "Service",
///             identifiers: ["timestream-influxdb.amazonaws.com"],
///         }],
///         resources: [pulumi.interpolate`${exampleBucket.arn}/*`],
///     }],
/// });
/// const exampleBucketPolicy = new aws.s3.BucketPolicy("example", {
///     bucket: exampleBucket.id,
///     policy: example.json,
/// });
/// const exampleDbCluster = new aws.timestreaminfluxdb.DbCluster("example", {
///     allocatedStorage: 20,
///     bucket: "example-bucket-name",
///     dbInstanceType: "db.influx.medium",
///     username: "admin",
///     password: "example-password",
///     organization: "organization",
///     vpcSubnetIds: [
///         example1.id,
///         example2.id,
///     ],
///     vpcSecurityGroupIds: [exampleAwsSecurityGroup.id],
///     name: "example-db-cluster",
///     logDeliveryConfiguration: {
///         s3Configuration: {
///             bucketName: exampleBucket.bucket,
///             enabled: true,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_bucket = aws.s3.Bucket("example",
///     bucket="example-s3-bucket",
///     force_destroy=True)
/// example = aws.iam.get_policy_document_output(statements=[{
///     "actions": ["s3:PutObject"],
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["timestream-influxdb.amazonaws.com"],
///     }],
///     "resources": [example_bucket.arn.apply(lambda arn: f"{arn}/*")],
/// }])
/// example_bucket_policy = aws.s3.BucketPolicy("example",
///     bucket=example_bucket.id,
///     policy=example.json)
/// example_db_cluster = aws.timestreaminfluxdb.DbCluster("example",
///     allocated_storage=20,
///     bucket="example-bucket-name",
///     db_instance_type="db.influx.medium",
///     username="admin",
///     password="example-password",
///     organization="organization",
///     vpc_subnet_ids=[
///         example1["id"],
///         example2["id"],
///     ],
///     vpc_security_group_ids=[example_aws_security_group["id"]],
///     name="example-db-cluster",
///     log_delivery_configuration={
///         "s3_configuration": {
///             "bucket_name": example_bucket.bucket,
///             "enabled": True,
///         },
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
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example-s3-bucket",
///         ForceDestroy = true,
///     });
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "s3:PutObject",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "timestream-influxdb.amazonaws.com",
///                         },
///                     },
///                 },
///                 Resources = new[]
///                 {
///                     $"{exampleBucket.Arn}/*",
///                 },
///             },
///         },
///     });
///
///     var exampleBucketPolicy = new Aws.S3.BucketPolicy("example", new()
///     {
///         Bucket = exampleBucket.Id,
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleDbCluster = new Aws.TimestreamInfluxDB.DbCluster("example", new()
///     {
///         AllocatedStorage = 20,
///         Bucket = "example-bucket-name",
///         DbInstanceType = "db.influx.medium",
///         Username = "admin",
///         Password = "example-password",
///         Organization = "organization",
///         VpcSubnetIds = new[]
///         {
///             example1.Id,
///             example2.Id,
///         },
///         VpcSecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         Name = "example-db-cluster",
///         LogDeliveryConfiguration = new Aws.TimestreamInfluxDB.Inputs.DbClusterLogDeliveryConfigurationArgs
///         {
///             S3Configuration = new Aws.TimestreamInfluxDB.Inputs.DbClusterLogDeliveryConfigurationS3ConfigurationArgs
///             {
///                 BucketName = exampleBucket.BucketName,
///                 Enabled = true,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreaminfluxdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket:       pulumi.String("example-s3-bucket"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:PutObject"),
/// 					},
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("Service"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("timestream-influxdb.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleBucket.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = s3.NewBucketPolicy(ctx, "example", &s3.BucketPolicyArgs{
/// 			Bucket: exampleBucket.ID().ToIDOutput().ToStringOutput(),
/// 			Policy: example.Json(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = timestreaminfluxdb.NewDbCluster(ctx, "example", &timestreaminfluxdb.DbClusterArgs{
/// 			AllocatedStorage: pulumi.Int(20),
/// 			Bucket:           pulumi.String("example-bucket-name"),
/// 			DbInstanceType:   pulumi.String("db.influx.medium"),
/// 			Username:         pulumi.String("admin"),
/// 			Password:         pulumi.String("example-password"),
/// 			Organization:     pulumi.String("organization"),
/// 			VpcSubnetIds: pulumi.StringArray{
/// 				example1.Id,
/// 				example2.Id,
/// 			},
/// 			VpcSecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 			Name: pulumi.String("example-db-cluster"),
/// 			LogDeliveryConfiguration: &timestreaminfluxdb.DbClusterLogDeliveryConfigurationArgs{
/// 				S3Configuration: &timestreaminfluxdb.DbClusterLogDeliveryConfigurationS3ConfigurationArgs{
/// 					BucketName: exampleBucket.Bucket,
/// 					Enabled:    pulumi.Bool(true),
/// 				},
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
/// data "aws_iam_getpolicydocument" "example" {
///   statements {
///     actions = ["s3:PutObject"]
///     principals {
///       type        = "Service"
///       identifiers = ["timestream-influxdb.amazonaws.com"]
///     }
///     resources = ["${aws_s3_bucket.example.arn}/*"]
///   }
/// }
///
/// resource "aws_s3_bucket" "example" {
///   bucket        = "example-s3-bucket"
///   force_destroy = true
/// }
/// resource "aws_s3_bucketpolicy" "example" {
///   bucket = aws_s3_bucket.example.id
///   policy = data.aws_iam_getpolicydocument.example.json
/// }
/// resource "aws_timestreaminfluxdb_dbcluster" "example" {
///   allocated_storage      = 20
///   bucket                 = "example-bucket-name"
///   db_instance_type       = "db.influx.medium"
///   username               = "admin"
///   password               = "example-password"
///   organization           = "organization"
///   vpc_subnet_ids         = [example1.id, example2.id]
///   vpc_security_group_ids = [exampleAwsSecurityGroup.id]
///   name                   = "example-db-cluster"
///   log_delivery_configuration = {
///     s3_configuration = {
///       bucket_name = aws_s3_bucket.example.bucket
///       enabled     = true
///     }
///   }
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.timestreaminfluxdb.DbCluster;
/// import com.pulumi.aws.timestreaminfluxdb.DbClusterArgs;
/// import com.pulumi.aws.timestreaminfluxdb.inputs.DbClusterLogDeliveryConfigurationArgs;
/// import com.pulumi.aws.timestreaminfluxdb.inputs.DbClusterLogDeliveryConfigurationS3ConfigurationArgs;
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
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("example-s3-bucket")
///             .forceDestroy(true)
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("s3:PutObject")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("timestream-influxdb.amazonaws.com")
///                     .build())
///                 .resources(exampleBucket.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                 .build())
///             .build());
///
///         var exampleBucketPolicy = new BucketPolicy("exampleBucketPolicy", BucketPolicyArgs.builder()
///             .bucket(exampleBucket.id())
///             .policy(example.applyValue(_example -> _example.json()))
///             .build());
///
///         var exampleDbCluster = new DbCluster("exampleDbCluster", DbClusterArgs.builder()
///             .allocatedStorage(20)
///             .bucket("example-bucket-name")
///             .dbInstanceType("db.influx.medium")
///             .username("admin")
///             .password("example-password")
///             .organization("organization")
///             .vpcSubnetIds(
///                 example1.id(),
///                 example2.id())
///             .vpcSecurityGroupIds(exampleAwsSecurityGroup.id())
///             .name("example-db-cluster")
///             .logDeliveryConfiguration(DbClusterLogDeliveryConfigurationArgs.builder()
///                 .s3Configuration(DbClusterLogDeliveryConfigurationS3ConfigurationArgs.builder()
///                     .bucketName(exampleBucket.bucket())
///                     .enabled(true)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: example-s3-bucket
///       forceDestroy: true
///   exampleBucketPolicy:
///     type: aws:s3:BucketPolicy
///     name: example
///     properties:
///       bucket: ${exampleBucket.id}
///       policy: ${example.json}
///   exampleDbCluster:
///     type: aws:timestreaminfluxdb:DbCluster
///     name: example
///     properties:
///       allocatedStorage: 20
///       bucket: example-bucket-name
///       dbInstanceType: db.influx.medium
///       username: admin
///       password: example-password
///       organization: organization
///       vpcSubnetIds:
///         - ${example1.id}
///         - ${example2.id}
///       vpcSecurityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
///       name: example-db-cluster
///       logDeliveryConfiguration:
///         s3Configuration:
///           bucketName: ${exampleBucket.bucket}
///           enabled: true
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - s3:PutObject
///             principals:
///               - type: Service
///                 identifiers:
///                   - timestream-influxdb.amazonaws.com
///             resources:
///               - ${exampleBucket.arn}/*
/// ```
///
///
/// ### Usage with InfluxDB V3
///
/// For InfluxDB V3 clusters, you can create a cluster without providing `allocatedStorage`, `bucket`, `organization`, `username`, `password`, or `deploymentType` by specifying a `dbParameterGroupIdentifier` such as `"InfluxDBV3Core"`. You can also optionally configure a maintenance schedule.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.timestreaminfluxdb.DbCluster("example", {
///     name: "example-v3-cluster",
///     dbInstanceType: "db.influx.large",
///     dbParameterGroupIdentifier: "InfluxDBV3Core",
///     vpcSubnetIds: [
///         example1.id,
///         example2.id,
///     ],
///     vpcSecurityGroupIds: [exampleAwsSecurityGroup.id],
///     maintenanceSchedule: {
///         preferredMaintenanceWindow: "Sun:02:00-Sun:06:00",
///         timezone: "America/New_York",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.timestreaminfluxdb.DbCluster("example",
///     name="example-v3-cluster",
///     db_instance_type="db.influx.large",
///     db_parameter_group_identifier="InfluxDBV3Core",
///     vpc_subnet_ids=[
///         example1["id"],
///         example2["id"],
///     ],
///     vpc_security_group_ids=[example_aws_security_group["id"]],
///     maintenance_schedule={
///         "preferred_maintenance_window": "Sun:02:00-Sun:06:00",
///         "timezone": "America/New_York",
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
///     var example = new Aws.TimestreamInfluxDB.DbCluster("example", new()
///     {
///         Name = "example-v3-cluster",
///         DbInstanceType = "db.influx.large",
///         DbParameterGroupIdentifier = "InfluxDBV3Core",
///         VpcSubnetIds = new[]
///         {
///             example1.Id,
///             example2.Id,
///         },
///         VpcSecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         MaintenanceSchedule = new Aws.TimestreamInfluxDB.Inputs.DbClusterMaintenanceScheduleArgs
///         {
///             PreferredMaintenanceWindow = "Sun:02:00-Sun:06:00",
///             Timezone = "America/New_York",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreaminfluxdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := timestreaminfluxdb.NewDbCluster(ctx, "example", &timestreaminfluxdb.DbClusterArgs{
/// 			Name:                       pulumi.String("example-v3-cluster"),
/// 			DbInstanceType:             pulumi.String("db.influx.large"),
/// 			DbParameterGroupIdentifier: pulumi.String("InfluxDBV3Core"),
/// 			VpcSubnetIds: pulumi.StringArray{
/// 				example1.Id,
/// 				example2.Id,
/// 			},
/// 			VpcSecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 			MaintenanceSchedule: &timestreaminfluxdb.DbClusterMaintenanceScheduleArgs{
/// 				PreferredMaintenanceWindow: pulumi.String("Sun:02:00-Sun:06:00"),
/// 				Timezone:                   pulumi.String("America/New_York"),
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
/// resource "aws_timestreaminfluxdb_dbcluster" "example" {
///   name                          = "example-v3-cluster"
///   db_instance_type              = "db.influx.large"
///   db_parameter_group_identifier = "InfluxDBV3Core"
///   vpc_subnet_ids                = [example1.id, example2.id]
///   vpc_security_group_ids        = [exampleAwsSecurityGroup.id]
///   maintenance_schedule = {
///     preferred_maintenance_window = "Sun:02:00-Sun:06:00"
///     timezone                     = "America/New_York"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.timestreaminfluxdb.DbCluster;
/// import com.pulumi.aws.timestreaminfluxdb.DbClusterArgs;
/// import com.pulumi.aws.timestreaminfluxdb.inputs.DbClusterMaintenanceScheduleArgs;
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
///         var example = new DbCluster("example", DbClusterArgs.builder()
///             .name("example-v3-cluster")
///             .dbInstanceType("db.influx.large")
///             .dbParameterGroupIdentifier("InfluxDBV3Core")
///             .vpcSubnetIds(
///                 example1.id(),
///                 example2.id())
///             .vpcSecurityGroupIds(exampleAwsSecurityGroup.id())
///             .maintenanceSchedule(DbClusterMaintenanceScheduleArgs.builder()
///                 .preferredMaintenanceWindow("Sun:02:00-Sun:06:00")
///                 .timezone("America/New_York")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:timestreaminfluxdb:DbCluster
///     properties:
///       name: example-v3-cluster
///       dbInstanceType: db.influx.large
///       dbParameterGroupIdentifier: InfluxDBV3Core
///       vpcSubnetIds:
///         - ${example1.id}
///         - ${example2.id}
///       vpcSecurityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
///       maintenanceSchedule:
///         preferredMaintenanceWindow: Sun:02:00-Sun:06:00
///         timezone: America/New_York
/// ```
///
///
/// ### Cluster Type Requirements
///
/// #### InfluxDB V2 Clusters (default)
///
/// The following arguments are **required** for InfluxDB V2 clusters:
///
/// * `allocatedStorage`
/// * `bucket`
/// * `deploymentType`
/// * `organization`
/// * `password`
/// * `username`
///
/// The `deploymentType` argument defaults to `"MULTI_NODE_READ_REPLICAS"` for InfluxDB V2 clusters when not specified.
///
/// #### InfluxDB V3 Clusters (when using V3 parameter groups)
///
/// The following arguments are **forbidden** for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group):
///
/// * `allocatedStorage`
/// * `bucket`
/// * `deploymentType`
/// * `organization`
/// * `password`
/// * `username`
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) ID of the Timestream for InfluxDB cluster.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Timestream for InfluxDB clusters using `id`. For example:
///
/// ```sh
/// $ pulumi import aws:timestreaminfluxdb/dbCluster:DbCluster example hzfuy146ke
/// ```
class DbCluster extends pulumi.CustomResource {
  /// Amount of storage in GiB (gibibytes). The minimum value is `20`, the maximum value is `16384`. The argument `dbStorageType` places restrictions on this argument's minimum value. The following is a list of `dbStorageType` values and the corresponding minimum value for `allocatedStorage`: `"InfluxIOIncludedT1": `20`, `"InfluxIOIncludedT2" and `"InfluxIOIncludedT3": `400`. This field is forbidden for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group).
  late final pulumi.Output<int?> allocatedStorage;
  /// ARN of the Timestream for InfluxDB cluster.
  late final pulumi.Output<String> arn;
  /// Name of the initial InfluxDB bucket. All InfluxDB data is stored in a bucket. A bucket combines the concept of a database and a retention period (the duration of time that each data point persists). A bucket belongs to an organization. Along with `organization`, `username`, and `password`, this argument will be stored in the secret referred to by the `influxAuthParametersSecretArn` attribute. This field is forbidden for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group).
  late final pulumi.Output<String?> bucket;
  /// Timestream for InfluxDB DB instance type to run InfluxDB on. Valid options are: `"db.influx.medium"`, `"db.influx.large"`, `"db.influx.xlarge"`, `"db.influx.2xlarge"`, `"db.influx.4xlarge"`, `"db.influx.8xlarge"`, `"db.influx.12xlarge"`, and `"db.influx.16xlarge"`. This argument is updatable.
  late final pulumi.Output<String> dbInstanceType;
  /// ID of the DB parameter group assigned to your cluster. This argument is updatable. If added to an existing Timestream for InfluxDB cluster or given a new value, will cause an in-place update to the cluster. However, if a cluster already has a value for `dbParameterGroupIdentifier`, removing `dbParameterGroupIdentifier` will cause the cluster to be destroyed and recreated.
  late final pulumi.Output<String?> dbParameterGroupIdentifier;
  /// Timestream for InfluxDB DB storage type to read and write InfluxDB data. You can choose between 3 different types of provisioned Influx IOPS included storage according to your workloads requirements: Influx IO Included 3000 IOPS, Influx IO Included 12000 IOPS, Influx IO Included 16000 IOPS. Valid options are: `"InfluxIOIncludedT1"`, `"InfluxIOIncludedT2"`, and `"InfluxIOIncludedT3"`. If you use `"InfluxIOIncludedT2" or "InfluxIOIncludedT3", the minimum value for `allocatedStorage` is 400.
  late final pulumi.Output<String> dbStorageType;
  /// Specifies the type of cluster to create. Valid options are: `"MULTI_NODE_READ_REPLICAS"`. This field is forbidden for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group).
  late final pulumi.Output<String> deploymentType;
  /// Endpoint used to connect to InfluxDB. The default InfluxDB port is 8086.
  late final pulumi.Output<String> endpoint;
  /// Database engine type of the DB cluster.
  late final pulumi.Output<String> engineType;
  /// Specifies the behavior of failure recovery when the primary node of the cluster fails. Valid options are: `"AUTOMATIC"` and `"NO_FAILOVER"`.
  late final pulumi.Output<String> failoverMode;
  /// ARN of the AWS Secrets Manager secret containing the initial InfluxDB authorization parameters. For InfluxDB V2 clusters, the secret value is a JSON formatted key-value pair holding InfluxDB authorization values: organization, bucket, username, and password. For InfluxDB V3 clusters, the secret contains the InfluxDB admin token.
  late final pulumi.Output<String> influxAuthParametersSecretArn;
  /// Configuration for sending InfluxDB engine logs to a specified S3 bucket. This argument is updatable.
  late final pulumi.Output<DbClusterLogDeliveryConfiguration?> logDeliveryConfiguration;
  /// Maintenance schedule for the DB cluster, including the preferred maintenance window and timezone. This argument is updatable. This field is only supported for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group).
  late final pulumi.Output<DbClusterMaintenanceSchedule?> maintenanceSchedule;
  /// Name that uniquely identifies the DB cluster when interacting with the Amazon Timestream for InfluxDB API and CLI commands. This name will also be a prefix included in the endpoint. Cluster names must be unique per customer and per region. The argument must start with a letter, cannot contain consecutive hyphens (`-`) and cannot end with a hyphen.
  late final pulumi.Output<String> name;
  /// Specifies whether the network type of the Timestream for InfluxDB cluster is IPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.
  late final pulumi.Output<String> networkType;
  /// Name of the initial organization for the initial admin user in InfluxDB. An InfluxDB organization is a workspace for a group of users. Along with `bucket`, `username`, and `password`, this argument will be stored in the secret referred to by the `influxAuthParametersSecretArn` attribute. This field is forbidden for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group).
  late final pulumi.Output<String?> organization;
  /// Password of the initial admin user created in InfluxDB. This password will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with `bucket`, `username`, and `organization`, this argument will be stored in the secret referred to by the `influxAuthParametersSecretArn` attribute. This field is forbidden for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group) as the AWS API rejects it.
  late final pulumi.Output<String?> password;
  /// The port on which the cluster accepts connections. Valid values: `1024`-`65535`. Cannot be `2375`-`2376`, `7788`-`7799`, `8090`, or `51678`-`51680`. This argument is updatable.
  late final pulumi.Output<int> port;
  /// Configures the DB cluster with a public IP to facilitate access. Other resources, such as a VPC, a subnet, an internet gateway, and a route table with routes, are also required to enabled public access, in addition to this argument. See "Usage with Public Internet Access Enabled" for an example configuration with all required resources for public internet access.
  late final pulumi.Output<bool> publiclyAccessible;
  /// The endpoint used to connect to the Timestream for InfluxDB cluster for read-only operations.
  late final pulumi.Output<String> readerEndpoint;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<DbClusterTimeouts?> timeouts;
  /// Username of the initial admin user created in InfluxDB. Must start with a letter and can't end with a hyphen or contain two consecutive hyphens. This username will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with `bucket`, `organization`, and `password`, this argument will be stored in the secret referred to by the `influxAuthParametersSecretArn` attribute. This field is forbidden for InfluxDB V3 clusters (when using an InfluxDB V3 db parameter group).
  late final pulumi.Output<String?> username;
  /// List of VPC security group IDs to associate with the cluster.
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;
  /// List of VPC subnet IDs to associate with the cluster. Provide at least two VPC subnet IDs in different availability zones when deploying with a Multi-AZ standby.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> vpcSubnetIds;

  /// Creates a new [DbCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DbCluster]. {@macro pulumi_timestreaminfluxdb_db_cluster_db_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DbCluster(
    String name, {
    DbClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:timestreaminfluxdb/dbCluster:DbCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocatedStorage = registerOutput<int?>('allocatedStorage');
    arn = registerOutput<String>('arn');
    bucket = registerOutput<String?>('bucket');
    dbInstanceType = registerOutput<String>('dbInstanceType');
    dbParameterGroupIdentifier = registerOutput<String?>('dbParameterGroupIdentifier');
    dbStorageType = registerOutput<String>('dbStorageType');
    deploymentType = registerOutput<String>('deploymentType');
    endpoint = registerOutput<String>('endpoint');
    engineType = registerOutput<String>('engineType');
    failoverMode = registerOutput<String>('failoverMode');
    influxAuthParametersSecretArn = registerOutput<String>('influxAuthParametersSecretArn');
    logDeliveryConfiguration = registerOutput<DbClusterLogDeliveryConfiguration?>('logDeliveryConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DbClusterLogDeliveryConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maintenanceSchedule = registerOutput<DbClusterMaintenanceSchedule?>('maintenanceSchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DbClusterMaintenanceSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkType = registerOutput<String>('networkType');
    organization = registerOutput<String?>('organization');
    password = registerOutput<String?>('password');
    port = registerOutput<int>('port');
    publiclyAccessible = registerOutput<bool>('publiclyAccessible');
    readerEndpoint = registerOutput<String>('readerEndpoint');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<DbClusterTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DbClusterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    username = registerOutput<String?>('username');
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds');
    vpcSubnetIds = registerOutput<List<String>>('vpcSubnetIds');
  }

  /// Gets an existing [DbCluster] resource's state with the given [name] and [id].
  static DbCluster get(
    String name,
    pulumi.Input<String> id, {
    DbClusterState? state,
  }) {
    return DbCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DbCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:timestreaminfluxdb/dbCluster:DbCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocatedStorage = registerOutput<int?>('allocatedStorage');
    arn = registerOutput<String>('arn');
    bucket = registerOutput<String?>('bucket');
    dbInstanceType = registerOutput<String>('dbInstanceType');
    dbParameterGroupIdentifier = registerOutput<String?>('dbParameterGroupIdentifier');
    dbStorageType = registerOutput<String>('dbStorageType');
    deploymentType = registerOutput<String>('deploymentType');
    endpoint = registerOutput<String>('endpoint');
    engineType = registerOutput<String>('engineType');
    failoverMode = registerOutput<String>('failoverMode');
    influxAuthParametersSecretArn = registerOutput<String>('influxAuthParametersSecretArn');
    logDeliveryConfiguration = registerOutput<DbClusterLogDeliveryConfiguration?>('logDeliveryConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DbClusterLogDeliveryConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maintenanceSchedule = registerOutput<DbClusterMaintenanceSchedule?>('maintenanceSchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DbClusterMaintenanceSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkType = registerOutput<String>('networkType');
    organization = registerOutput<String?>('organization');
    password = registerOutput<String?>('password');
    port = registerOutput<int>('port');
    publiclyAccessible = registerOutput<bool>('publiclyAccessible');
    readerEndpoint = registerOutput<String>('readerEndpoint');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<DbClusterTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DbClusterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    username = registerOutput<String?>('username');
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds');
    vpcSubnetIds = registerOutput<List<String>>('vpcSubnetIds');
  }
}
