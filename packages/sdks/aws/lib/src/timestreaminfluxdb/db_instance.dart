import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_args.dart';
import 'db_instance_log_delivery_configuration.dart';
import 'db_instance_maintenance_schedule.dart';
import 'db_instance_state.dart';
import 'db_instance_timeouts.dart';

/// Resource for managing an Amazon Timestream for InfluxDB database instance.
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
/// const example = new aws.timestreaminfluxdb.DbInstance("example", {
///     allocatedStorage: 20,
///     bucket: "example-bucket-name",
///     dbInstanceType: "db.influx.medium",
///     username: "admin",
///     password: "example-password",
///     port: 8086,
///     organization: "organization",
///     vpcSubnetIds: [exampleid],
///     vpcSecurityGroupIds: [exampleAwsSecurityGroup.id],
///     name: "example-db-instance",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.timestreaminfluxdb.DbInstance("example",
///     allocated_storage=20,
///     bucket="example-bucket-name",
///     db_instance_type="db.influx.medium",
///     username="admin",
///     password="example-password",
///     port=8086,
///     organization="organization",
///     vpc_subnet_ids=[exampleid],
///     vpc_security_group_ids=[example_aws_security_group["id"]],
///     name="example-db-instance")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.TimestreamInfluxDB.DbInstance("example", new()
///     {
///         AllocatedStorage = 20,
///         Bucket = "example-bucket-name",
///         DbInstanceType = "db.influx.medium",
///         Username = "admin",
///         Password = "example-password",
///         Port = 8086,
///         Organization = "organization",
///         VpcSubnetIds = new[]
///         {
///             exampleid,
///         },
///         VpcSecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         Name = "example-db-instance",
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
/// 		_, err := timestreaminfluxdb.NewDbInstance(ctx, "example", &timestreaminfluxdb.DbInstanceArgs{
/// 			AllocatedStorage: pulumi.Int(20),
/// 			Bucket:           pulumi.String("example-bucket-name"),
/// 			DbInstanceType:   pulumi.String("db.influx.medium"),
/// 			Username:         pulumi.String("admin"),
/// 			Password:         pulumi.String("example-password"),
/// 			Port:             pulumi.Int(8086),
/// 			Organization:     pulumi.String("organization"),
/// 			VpcSubnetIds: pulumi.StringArray{
/// 				exampleid,
/// 			},
/// 			VpcSecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 			Name: pulumi.String("example-db-instance"),
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
/// resource "aws_timestreaminfluxdb_dbinstance" "example" {
///   allocated_storage      = 20
///   bucket                 = "example-bucket-name"
///   db_instance_type       = "db.influx.medium"
///   username               = "admin"
///   password               = "example-password"
///   port                   = 8086
///   organization           = "organization"
///   vpc_subnet_ids         = [exampleid]
///   vpc_security_group_ids = [exampleAwsSecurityGroup.id]
///   name                   = "example-db-instance"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.timestreaminfluxdb.DbInstance;
/// import com.pulumi.aws.timestreaminfluxdb.DbInstanceArgs;
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
///         var example = new DbInstance("example", DbInstanceArgs.builder()
///             .allocatedStorage(20)
///             .bucket("example-bucket-name")
///             .dbInstanceType("db.influx.medium")
///             .username("admin")
///             .password("example-password")
///             .port(8086)
///             .organization("organization")
///             .vpcSubnetIds(exampleid)
///             .vpcSecurityGroupIds(exampleAwsSecurityGroup.id())
///             .name("example-db-instance")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:timestreaminfluxdb:DbInstance
///     properties:
///       allocatedStorage: 20
///       bucket: example-bucket-name
///       dbInstanceType: db.influx.medium
///       username: admin
///       password: example-password
///       port: 8086
///       organization: organization
///       vpcSubnetIds:
///         - ${exampleid}
///       vpcSecurityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
///       name: example-db-instance
/// ```
///
///
/// ### Usage with Prerequisite Resources
///
/// All Timestream for InfluxDB instances require a VPC, subnet, and security group. The following example shows how these prerequisite resources can be created and used with `aws.timestreaminfluxdb.DbInstance`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleSubnet = new aws.ec2.Subnet("example", {
///     vpcId: example.id,
///     cidrBlock: "10.0.1.0/24",
/// });
/// const exampleSecurityGroup = new aws.ec2.SecurityGroup("example", {
///     name: "example",
///     vpcId: example.id,
/// });
/// const exampleDbInstance = new aws.timestreaminfluxdb.DbInstance("example", {
///     allocatedStorage: 20,
///     bucket: "example-bucket-name",
///     dbInstanceType: "db.influx.medium",
///     username: "admin",
///     password: "example-password",
///     organization: "organization",
///     vpcSubnetIds: [exampleSubnet.id],
///     vpcSecurityGroupIds: [exampleSecurityGroup.id],
///     name: "example-db-instance",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_subnet = aws.ec2.Subnet("example",
///     vpc_id=example.id,
///     cidr_block="10.0.1.0/24")
/// example_security_group = aws.ec2.SecurityGroup("example",
///     name="example",
///     vpc_id=example.id)
/// example_db_instance = aws.timestreaminfluxdb.DbInstance("example",
///     allocated_storage=20,
///     bucket="example-bucket-name",
///     db_instance_type="db.influx.medium",
///     username="admin",
///     password="example-password",
///     organization="organization",
///     vpc_subnet_ids=[example_subnet.id],
///     vpc_security_group_ids=[example_security_group.id],
///     name="example-db-instance")
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
///     var exampleSubnet = new Aws.Ec2.Subnet("example", new()
///     {
///         VpcId = example.Id,
///         CidrBlock = "10.0.1.0/24",
///     });
///
///     var exampleSecurityGroup = new Aws.Ec2.SecurityGroup("example", new()
///     {
///         Name = "example",
///         VpcId = example.Id,
///     });
///
///     var exampleDbInstance = new Aws.TimestreamInfluxDB.DbInstance("example", new()
///     {
///         AllocatedStorage = 20,
///         Bucket = "example-bucket-name",
///         DbInstanceType = "db.influx.medium",
///         Username = "admin",
///         Password = "example-password",
///         Organization = "organization",
///         VpcSubnetIds = new[]
///         {
///             exampleSubnet.Id,
///         },
///         VpcSecurityGroupIds = new[]
///         {
///             exampleSecurityGroup.Id,
///         },
///         Name = "example-db-instance",
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
/// 		exampleSubnet, err := ec2.NewSubnet(ctx, "example", &ec2.SubnetArgs{
/// 			VpcId:     example.ID().ToIDOutput().ToStringOutput(),
/// 			CidrBlock: pulumi.String("10.0.1.0/24"),
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
/// 		_, err = timestreaminfluxdb.NewDbInstance(ctx, "example", &timestreaminfluxdb.DbInstanceArgs{
/// 			AllocatedStorage: pulumi.Int(20),
/// 			Bucket:           pulumi.String("example-bucket-name"),
/// 			DbInstanceType:   pulumi.String("db.influx.medium"),
/// 			Username:         pulumi.String("admin"),
/// 			Password:         pulumi.String("example-password"),
/// 			Organization:     pulumi.String("organization"),
/// 			VpcSubnetIds: pulumi.StringArray{
/// 				exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			VpcSecurityGroupIds: pulumi.StringArray{
/// 				exampleSecurityGroup.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			Name: pulumi.String("example-db-instance"),
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
/// resource "aws_ec2_subnet" "example" {
///   vpc_id     = aws_ec2_vpc.example.id
///   cidr_block = "10.0.1.0/24"
/// }
/// resource "aws_ec2_securitygroup" "example" {
///   name   = "example"
///   vpc_id = aws_ec2_vpc.example.id
/// }
/// resource "aws_timestreaminfluxdb_dbinstance" "example" {
///   allocated_storage      = 20
///   bucket                 = "example-bucket-name"
///   db_instance_type       = "db.influx.medium"
///   username               = "admin"
///   password               = "example-password"
///   organization           = "organization"
///   vpc_subnet_ids         = [aws_ec2_subnet.example.id]
///   vpc_security_group_ids = [aws_ec2_securitygroup.example.id]
///   name                   = "example-db-instance"
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
/// import com.pulumi.aws.timestreaminfluxdb.DbInstance;
/// import com.pulumi.aws.timestreaminfluxdb.DbInstanceArgs;
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
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .vpcId(example.id())
///             .cidrBlock("10.0.1.0/24")
///             .build());
///
///         var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
///             .name("example")
///             .vpcId(example.id())
///             .build());
///
///         var exampleDbInstance = new DbInstance("exampleDbInstance", DbInstanceArgs.builder()
///             .allocatedStorage(20)
///             .bucket("example-bucket-name")
///             .dbInstanceType("db.influx.medium")
///             .username("admin")
///             .password("example-password")
///             .organization("organization")
///             .vpcSubnetIds(exampleSubnet.id())
///             .vpcSecurityGroupIds(exampleSecurityGroup.id())
///             .name("example-db-instance")
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
///   exampleSubnet:
///     type: aws:ec2:Subnet
///     name: example
///     properties:
///       vpcId: ${example.id}
///       cidrBlock: 10.0.1.0/24
///   exampleSecurityGroup:
///     type: aws:ec2:SecurityGroup
///     name: example
///     properties:
///       name: example
///       vpcId: ${example.id}
///   exampleDbInstance:
///     type: aws:timestreaminfluxdb:DbInstance
///     name: example
///     properties:
///       allocatedStorage: 20
///       bucket: example-bucket-name
///       dbInstanceType: db.influx.medium
///       username: admin
///       password: example-password
///       organization: organization
///       vpcSubnetIds:
///         - ${exampleSubnet.id}
///       vpcSecurityGroupIds:
///         - ${exampleSecurityGroup.id}
///       name: example-db-instance
/// ```
///
///
/// ### Usage with S3 Log Delivery Enabled
///
/// You can use an S3 bucket to store logs generated by your Timestream for InfluxDB instance. The following example shows what resources and arguments are required to configure an S3 bucket for logging, including the IAM policy that needs to be set in order to allow Timestream for InfluxDB to place logs in your S3 bucket. The configuration of the required VPC, security group, and subnet have been left out of the example for brevity.
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
///         principals: [{
///             type: "Service",
///             identifiers: ["timestream-influxdb.amazonaws.com"],
///         }],
///         actions: ["s3:PutObject"],
///         resources: [pulumi.interpolate`${exampleBucket.arn}/*`],
///     }],
/// });
/// const exampleBucketPolicy = new aws.s3.BucketPolicy("example", {
///     bucket: exampleBucket.id,
///     policy: example.json,
/// });
/// const exampleDbInstance = new aws.timestreaminfluxdb.DbInstance("example", {
///     logDeliveryConfiguration: {
///         s3Configuration: {
///             bucketName: exampleBucket.bucket,
///             enabled: true,
///         },
///     },
///     allocatedStorage: 20,
///     bucket: "example-bucket-name",
///     dbInstanceType: "db.influx.medium",
///     username: "admin",
///     password: "example-password",
///     organization: "organization",
///     vpcSubnetIds: [exampleAwsSubnet.id],
///     vpcSecurityGroupIds: [exampleAwsSecurityGroup.id],
///     name: "example-db-instance",
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
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["timestream-influxdb.amazonaws.com"],
///     }],
///     "actions": ["s3:PutObject"],
///     "resources": [example_bucket.arn.apply(lambda arn: f"{arn}/*")],
/// }])
/// example_bucket_policy = aws.s3.BucketPolicy("example",
///     bucket=example_bucket.id,
///     policy=example.json)
/// example_db_instance = aws.timestreaminfluxdb.DbInstance("example",
///     log_delivery_configuration={
///         "s3_configuration": {
///             "bucket_name": example_bucket.bucket,
///             "enabled": True,
///         },
///     },
///     allocated_storage=20,
///     bucket="example-bucket-name",
///     db_instance_type="db.influx.medium",
///     username="admin",
///     password="example-password",
///     organization="organization",
///     vpc_subnet_ids=[example_aws_subnet["id"]],
///     vpc_security_group_ids=[example_aws_security_group["id"]],
///     name="example-db-instance")
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
///                 Actions = new[]
///                 {
///                     "s3:PutObject",
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
///     var exampleDbInstance = new Aws.TimestreamInfluxDB.DbInstance("example", new()
///     {
///         LogDeliveryConfiguration = new Aws.TimestreamInfluxDB.Inputs.DbInstanceLogDeliveryConfigurationArgs
///         {
///             S3Configuration = new Aws.TimestreamInfluxDB.Inputs.DbInstanceLogDeliveryConfigurationS3ConfigurationArgs
///             {
///                 BucketName = exampleBucket.BucketName,
///                 Enabled = true,
///             },
///         },
///         AllocatedStorage = 20,
///         Bucket = "example-bucket-name",
///         DbInstanceType = "db.influx.medium",
///         Username = "admin",
///         Password = "example-password",
///         Organization = "organization",
///         VpcSubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         VpcSecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         Name = "example-db-instance",
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
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("Service"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("timestream-influxdb.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:PutObject"),
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
/// 		_, err = timestreaminfluxdb.NewDbInstance(ctx, "example", &timestreaminfluxdb.DbInstanceArgs{
/// 			LogDeliveryConfiguration: &timestreaminfluxdb.DbInstanceLogDeliveryConfigurationArgs{
/// 				S3Configuration: &timestreaminfluxdb.DbInstanceLogDeliveryConfigurationS3ConfigurationArgs{
/// 					BucketName: exampleBucket.Bucket,
/// 					Enabled:    pulumi.Bool(true),
/// 				},
/// 			},
/// 			AllocatedStorage: pulumi.Int(20),
/// 			Bucket:           pulumi.String("example-bucket-name"),
/// 			DbInstanceType:   pulumi.String("db.influx.medium"),
/// 			Username:         pulumi.String("admin"),
/// 			Password:         pulumi.String("example-password"),
/// 			Organization:     pulumi.String("organization"),
/// 			VpcSubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			VpcSecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 			Name: pulumi.String("example-db-instance"),
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
///     principals {
///       type        = "Service"
///       identifiers = ["timestream-influxdb.amazonaws.com"]
///     }
///     actions   = ["s3:PutObject"]
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
/// resource "aws_timestreaminfluxdb_dbinstance" "example" {
///   log_delivery_configuration = {
///     s3_configuration = {
///       bucket_name = aws_s3_bucket.example.bucket
///       enabled     = true
///     }
///   }
///   allocated_storage      = 20
///   bucket                 = "example-bucket-name"
///   db_instance_type       = "db.influx.medium"
///   username               = "admin"
///   password               = "example-password"
///   organization           = "organization"
///   vpc_subnet_ids         = [exampleAwsSubnet.id]
///   vpc_security_group_ids = [exampleAwsSecurityGroup.id]
///   name                   = "example-db-instance"
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
/// import com.pulumi.aws.timestreaminfluxdb.DbInstance;
/// import com.pulumi.aws.timestreaminfluxdb.DbInstanceArgs;
/// import com.pulumi.aws.timestreaminfluxdb.inputs.DbInstanceLogDeliveryConfigurationArgs;
/// import com.pulumi.aws.timestreaminfluxdb.inputs.DbInstanceLogDeliveryConfigurationS3ConfigurationArgs;
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
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("timestream-influxdb.amazonaws.com")
///                     .build())
///                 .actions("s3:PutObject")
///                 .resources(exampleBucket.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                 .build())
///             .build());
///
///         var exampleBucketPolicy = new BucketPolicy("exampleBucketPolicy", BucketPolicyArgs.builder()
///             .bucket(exampleBucket.id())
///             .policy(example.applyValue(_example -> _example.json()))
///             .build());
///
///         var exampleDbInstance = new DbInstance("exampleDbInstance", DbInstanceArgs.builder()
///             .logDeliveryConfiguration(DbInstanceLogDeliveryConfigurationArgs.builder()
///                 .s3Configuration(DbInstanceLogDeliveryConfigurationS3ConfigurationArgs.builder()
///                     .bucketName(exampleBucket.bucket())
///                     .enabled(true)
///                     .build())
///                 .build())
///             .allocatedStorage(20)
///             .bucket("example-bucket-name")
///             .dbInstanceType("db.influx.medium")
///             .username("admin")
///             .password("example-password")
///             .organization("organization")
///             .vpcSubnetIds(exampleAwsSubnet.id())
///             .vpcSecurityGroupIds(exampleAwsSecurityGroup.id())
///             .name("example-db-instance")
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
///   exampleDbInstance:
///     type: aws:timestreaminfluxdb:DbInstance
///     name: example
///     properties:
///       logDeliveryConfiguration:
///         s3Configuration:
///           bucketName: ${exampleBucket.bucket}
///           enabled: true
///       allocatedStorage: 20
///       bucket: example-bucket-name
///       dbInstanceType: db.influx.medium
///       username: admin
///       password: example-password
///       organization: organization
///       vpcSubnetIds:
///         - ${exampleAwsSubnet.id}
///       vpcSecurityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
///       name: example-db-instance
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - timestream-influxdb.amazonaws.com
///             actions:
///               - s3:PutObject
///             resources:
///               - ${exampleBucket.arn}/*
/// ```
///
///
/// ### Usage with MultiAZ Deployment
///
/// To use multi-region availability, at least two subnets must be created in different availability zones and used with your Timestream for InfluxDB instance.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example1 = new aws.ec2.Subnet("example_1", {
///     vpcId: exampleAwsVpc.id,
///     cidrBlock: "10.0.1.0/24",
///     availabilityZone: "us-west-2a",
/// });
/// const example2 = new aws.ec2.Subnet("example_2", {
///     vpcId: exampleAwsVpc.id,
///     cidrBlock: "10.0.2.0/24",
///     availabilityZone: "us-west-2b",
/// });
/// const example = new aws.timestreaminfluxdb.DbInstance("example", {
///     allocatedStorage: 20,
///     bucket: "example-bucket-name",
///     dbInstanceType: "db.influx.medium",
///     deploymentType: "WITH_MULTIAZ_STANDBY",
///     username: "admin",
///     password: "example-password",
///     organization: "organization",
///     vpcSubnetIds: [
///         example1.id,
///         example2.id,
///     ],
///     vpcSecurityGroupIds: [exampleAwsSecurityGroup.id],
///     name: "example-db-instance",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example1 = aws.ec2.Subnet("example_1",
///     vpc_id=example_aws_vpc["id"],
///     cidr_block="10.0.1.0/24",
///     availability_zone="us-west-2a")
/// example2 = aws.ec2.Subnet("example_2",
///     vpc_id=example_aws_vpc["id"],
///     cidr_block="10.0.2.0/24",
///     availability_zone="us-west-2b")
/// example = aws.timestreaminfluxdb.DbInstance("example",
///     allocated_storage=20,
///     bucket="example-bucket-name",
///     db_instance_type="db.influx.medium",
///     deployment_type="WITH_MULTIAZ_STANDBY",
///     username="admin",
///     password="example-password",
///     organization="organization",
///     vpc_subnet_ids=[
///         example1.id,
///         example2.id,
///     ],
///     vpc_security_group_ids=[example_aws_security_group["id"]],
///     name="example-db-instance")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example1 = new Aws.Ec2.Subnet("example_1", new()
///     {
///         VpcId = exampleAwsVpc.Id,
///         CidrBlock = "10.0.1.0/24",
///         AvailabilityZone = "us-west-2a",
///     });
///
///     var example2 = new Aws.Ec2.Subnet("example_2", new()
///     {
///         VpcId = exampleAwsVpc.Id,
///         CidrBlock = "10.0.2.0/24",
///         AvailabilityZone = "us-west-2b",
///     });
///
///     var example = new Aws.TimestreamInfluxDB.DbInstance("example", new()
///     {
///         AllocatedStorage = 20,
///         Bucket = "example-bucket-name",
///         DbInstanceType = "db.influx.medium",
///         DeploymentType = "WITH_MULTIAZ_STANDBY",
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
///         Name = "example-db-instance",
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
/// 		example1, err := ec2.NewSubnet(ctx, "example_1", &ec2.SubnetArgs{
/// 			VpcId:            pulumi.Any(exampleAwsVpc.Id),
/// 			CidrBlock:        pulumi.String("10.0.1.0/24"),
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2, err := ec2.NewSubnet(ctx, "example_2", &ec2.SubnetArgs{
/// 			VpcId:            pulumi.Any(exampleAwsVpc.Id),
/// 			CidrBlock:        pulumi.String("10.0.2.0/24"),
/// 			AvailabilityZone: pulumi.String("us-west-2b"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = timestreaminfluxdb.NewDbInstance(ctx, "example", &timestreaminfluxdb.DbInstanceArgs{
/// 			AllocatedStorage: pulumi.Int(20),
/// 			Bucket:           pulumi.String("example-bucket-name"),
/// 			DbInstanceType:   pulumi.String("db.influx.medium"),
/// 			DeploymentType:   pulumi.String("WITH_MULTIAZ_STANDBY"),
/// 			Username:         pulumi.String("admin"),
/// 			Password:         pulumi.String("example-password"),
/// 			Organization:     pulumi.String("organization"),
/// 			VpcSubnetIds: pulumi.StringArray{
/// 				example1.ID().ToIDOutput().ToStringOutput(),
/// 				example2.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			VpcSecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 			Name: pulumi.String("example-db-instance"),
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
/// resource "aws_ec2_subnet" "example_1" {
///   vpc_id            = exampleAwsVpc.id
///   cidr_block        = "10.0.1.0/24"
///   availability_zone = "us-west-2a"
/// }
/// resource "aws_ec2_subnet" "example_2" {
///   vpc_id            = exampleAwsVpc.id
///   cidr_block        = "10.0.2.0/24"
///   availability_zone = "us-west-2b"
/// }
/// resource "aws_timestreaminfluxdb_dbinstance" "example" {
///   allocated_storage      = 20
///   bucket                 = "example-bucket-name"
///   db_instance_type       = "db.influx.medium"
///   deployment_type        = "WITH_MULTIAZ_STANDBY"
///   username               = "admin"
///   password               = "example-password"
///   organization           = "organization"
///   vpc_subnet_ids         = [aws_ec2_subnet.example_1.id, aws_ec2_subnet.example_2.id]
///   vpc_security_group_ids = [exampleAwsSecurityGroup.id]
///   name                   = "example-db-instance"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.timestreaminfluxdb.DbInstance;
/// import com.pulumi.aws.timestreaminfluxdb.DbInstanceArgs;
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
///         var example1 = new Subnet("example1", SubnetArgs.builder()
///             .vpcId(exampleAwsVpc.id())
///             .cidrBlock("10.0.1.0/24")
///             .availabilityZone("us-west-2a")
///             .build());
///
///         var example2 = new Subnet("example2", SubnetArgs.builder()
///             .vpcId(exampleAwsVpc.id())
///             .cidrBlock("10.0.2.0/24")
///             .availabilityZone("us-west-2b")
///             .build());
///
///         var example = new DbInstance("example", DbInstanceArgs.builder()
///             .allocatedStorage(20)
///             .bucket("example-bucket-name")
///             .dbInstanceType("db.influx.medium")
///             .deploymentType("WITH_MULTIAZ_STANDBY")
///             .username("admin")
///             .password("example-password")
///             .organization("organization")
///             .vpcSubnetIds(
///                 example1.id(),
///                 example2.id())
///             .vpcSecurityGroupIds(exampleAwsSecurityGroup.id())
///             .name("example-db-instance")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example1:
///     type: aws:ec2:Subnet
///     name: example_1
///     properties:
///       vpcId: ${exampleAwsVpc.id}
///       cidrBlock: 10.0.1.0/24
///       availabilityZone: us-west-2a
///   example2:
///     type: aws:ec2:Subnet
///     name: example_2
///     properties:
///       vpcId: ${exampleAwsVpc.id}
///       cidrBlock: 10.0.2.0/24
///       availabilityZone: us-west-2b
///   example:
///     type: aws:timestreaminfluxdb:DbInstance
///     properties:
///       allocatedStorage: 20
///       bucket: example-bucket-name
///       dbInstanceType: db.influx.medium
///       deploymentType: WITH_MULTIAZ_STANDBY
///       username: admin
///       password: example-password
///       organization: organization
///       vpcSubnetIds:
///         - ${example1.id}
///         - ${example2.id}
///       vpcSecurityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
///       name: example-db-instance
/// ```
///
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
/// Using `pulumi import`, import Timestream for InfluxDB instances using `id`. For example:
///
/// ```sh
/// $ pulumi import aws:timestreaminfluxdb/dbInstance:DbInstance example 0oo7rzble5
/// ```
class DbInstance extends pulumi.CustomResource {
  /// Amount of storage in GiB (gibibytes). The minimum value is `20`, the maximum value is `16384`. This argument is updatable. The argument `dbStorageType` places restrictions on this argument's minimum value. The following is a list of `dbStorageType` values and the corresponding minimum value for `allocatedStorage`: `"InfluxIOIncludedT1": `20`, `"InfluxIOIncludedT2" and `"InfluxIOIncludedT3": `400`.
  late final pulumi.Output<int> allocatedStorage;
  /// ARN of the Timestream for InfluxDB Instance.
  late final pulumi.Output<String> arn;
  /// Availability Zone in which the DB instance resides.
  late final pulumi.Output<String> availabilityZone;
  /// Name of the initial InfluxDB bucket. All InfluxDB data is stored in a bucket. A bucket combines the concept of a database and a retention period (the duration of time that each data point persists). A bucket belongs to an organization. Along with `organization`, `username`, and `password`, this argument will be stored in the secret referred to by the `influxAuthParametersSecretArn` attribute.
  late final pulumi.Output<String> bucket;
  /// Timestream for InfluxDB DB instance type to run InfluxDB on. Valid options are: `"db.influx.medium"`, `"db.influx.large"`, `"db.influx.xlarge"`, `"db.influx.2xlarge"`, `"db.influx.4xlarge"`, `"db.influx.8xlarge"`, `"db.influx.12xlarge"`, and `"db.influx.16xlarge"`. This argument is updatable.
  late final pulumi.Output<String> dbInstanceType;
  /// ID of the DB parameter group assigned to your DB instance. This argument is updatable. If added to an existing Timestream for InfluxDB instance or given a new value, will cause an in-place update to the instance. However, if an instance already has a value for `dbParameterGroupIdentifier`, removing `dbParameterGroupIdentifier` will cause the instance to be destroyed and recreated.
  late final pulumi.Output<String?> dbParameterGroupIdentifier;
  /// Timestream for InfluxDB DB storage type to read and write InfluxDB data. You can choose between 3 different types of provisioned Influx IOPS included storage according to your workloads requirements: Influx IO Included 3000 IOPS, Influx IO Included 12000 IOPS, Influx IO Included 16000 IOPS. Valid options are: `"InfluxIOIncludedT1"`, `"InfluxIOIncludedT2"`, and `"InfluxIOIncludedT3"`. If you use `"InfluxIOIncludedT2" or "InfluxIOIncludedT3", the minimum value for `allocatedStorage` is 400. This argument is updatable. For a single instance, after this argument has been updated once, it can only be updated again after 6 hours have passed.
  late final pulumi.Output<String> dbStorageType;
  /// Specifies whether the DB instance will be deployed as a standalone instance or with a Multi-AZ standby for high availability. Valid options are: `"SINGLE_AZ"`, `"WITH_MULTIAZ_STANDBY"`. This argument is updatable.
  late final pulumi.Output<String> deploymentType;
  /// Endpoint used to connect to InfluxDB. The default InfluxDB port is 8086.
  late final pulumi.Output<String> endpoint;
  /// ARN of the AWS Secrets Manager secret containing the initial InfluxDB authorization parameters. The secret value is a JSON formatted key-value pair holding InfluxDB authorization values: organization, bucket, username, and password.
  late final pulumi.Output<String> influxAuthParametersSecretArn;
  /// Configuration for sending InfluxDB engine logs to a specified S3 bucket. This argument is updatable.
  late final pulumi.Output<DbInstanceLogDeliveryConfiguration?> logDeliveryConfiguration;
  /// Maintenance schedule for the DB instance, including the preferred maintenance window and timezone. This argument is updatable.
  late final pulumi.Output<DbInstanceMaintenanceSchedule?> maintenanceSchedule;
  /// Name that uniquely identifies the DB instance when interacting with the Amazon Timestream for InfluxDB API and CLI commands. This name will also be a prefix included in the endpoint. DB instance names must be unique per customer and per region. The argument must start with a letter, cannot contain consecutive hyphens (`-`) and cannot end with a hyphen.
  late final pulumi.Output<String> name;
  /// Specifies whether the networkType of the Timestream for InfluxDB instance is IPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.
  late final pulumi.Output<String> networkType;
  /// Name of the initial organization for the initial admin user in InfluxDB. An InfluxDB organization is a workspace for a group of users. Along with `bucket`, `username`, and `password`, this argument will be stored in the secret referred to by the `influxAuthParametersSecretArn` attribute.
  late final pulumi.Output<String> organization;
  /// Password of the initial admin user created in InfluxDB. This password will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with `bucket`, `username`, and `organization`, this argument will be stored in the secret referred to by the `influxAuthParametersSecretArn` attribute.
  late final pulumi.Output<String> password;
  /// The port on which the instance accepts connections. Valid values: `1024`-`65535`. Cannot be `2375`-`2376`, `7788`-`7799`, `8090`, or `51678`-`51680`. This argument is updatable.
  late final pulumi.Output<int> port;
  /// Configures the DB instance with a public IP to facilitate access. Other resources, such as a VPC, a subnet, an internet gateway, and a route table with routes, are also required to enabled public access, in addition to this argument. See "Usage with Public Internet Access Enabled" for an example configuration with all required resources for public internet access.
  late final pulumi.Output<bool> publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Availability Zone in which the standby instance is located when deploying with a MultiAZ standby instance.
  late final pulumi.Output<String> secondaryAvailabilityZone;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<DbInstanceTimeouts?> timeouts;
  /// Username of the initial admin user created in InfluxDB. Must start with a letter and can't end with a hyphen or contain two consecutive hyphens. This username will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with `bucket`, `organization`, and `password`, this argument will be stored in the secret referred to by the `influxAuthParametersSecretArn` attribute.
  late final pulumi.Output<String> username;
  /// List of VPC security group IDs to associate with the DB instance.
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;
  /// List of VPC subnet IDs to associate with the DB instance. Provide at least two VPC subnet IDs in different availability zones when deploying with a Multi-AZ standby.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> vpcSubnetIds;

  /// Creates a new [DbInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DbInstance]. {@macro pulumi_timestreaminfluxdb_db_instance_db_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DbInstance(
    String name, {
    DbInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:timestreaminfluxdb/dbInstance:DbInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
          additionalSecretOutputs: const ['password'],
        ) {
    allocatedStorage = registerOutput<int>('allocatedStorage');
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    bucket = registerOutput<String>('bucket');
    dbInstanceType = registerOutput<String>('dbInstanceType');
    dbParameterGroupIdentifier = registerOutput<String?>('dbParameterGroupIdentifier');
    dbStorageType = registerOutput<String>('dbStorageType');
    deploymentType = registerOutput<String>('deploymentType');
    endpoint = registerOutput<String>('endpoint');
    influxAuthParametersSecretArn = registerOutput<String>('influxAuthParametersSecretArn');
    logDeliveryConfiguration = registerOutput<DbInstanceLogDeliveryConfiguration?>('logDeliveryConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DbInstanceLogDeliveryConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maintenanceSchedule = registerOutput<DbInstanceMaintenanceSchedule?>('maintenanceSchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DbInstanceMaintenanceSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkType = registerOutput<String>('networkType');
    organization = registerOutput<String>('organization');
    password = registerOutput<String>('password', isSecret: true);
    port = registerOutput<int>('port');
    publiclyAccessible = registerOutput<bool>('publiclyAccessible');
    region = registerOutput<String>('region');
    secondaryAvailabilityZone = registerOutput<String>('secondaryAvailabilityZone');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<DbInstanceTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DbInstanceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    username = registerOutput<String>('username');
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    vpcSubnetIds = registerOutput<List<String>>('vpcSubnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [DbInstance] resource's state with the given [name] and [id].
  static DbInstance get(
    String name,
    pulumi.Input<String> id, {
    DbInstanceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DbInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DbInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:timestreaminfluxdb/dbInstance:DbInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocatedStorage = registerOutput<int>('allocatedStorage');
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    bucket = registerOutput<String>('bucket');
    dbInstanceType = registerOutput<String>('dbInstanceType');
    dbParameterGroupIdentifier = registerOutput<String?>('dbParameterGroupIdentifier');
    dbStorageType = registerOutput<String>('dbStorageType');
    deploymentType = registerOutput<String>('deploymentType');
    endpoint = registerOutput<String>('endpoint');
    influxAuthParametersSecretArn = registerOutput<String>('influxAuthParametersSecretArn');
    logDeliveryConfiguration = registerOutput<DbInstanceLogDeliveryConfiguration?>('logDeliveryConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DbInstanceLogDeliveryConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maintenanceSchedule = registerOutput<DbInstanceMaintenanceSchedule?>('maintenanceSchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DbInstanceMaintenanceSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkType = registerOutput<String>('networkType');
    organization = registerOutput<String>('organization');
    password = registerOutput<String>('password', isSecret: true);
    port = registerOutput<int>('port');
    publiclyAccessible = registerOutput<bool>('publiclyAccessible');
    region = registerOutput<String>('region');
    secondaryAvailabilityZone = registerOutput<String>('secondaryAvailabilityZone');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<DbInstanceTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DbInstanceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    username = registerOutput<String>('username');
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    vpcSubnetIds = registerOutput<List<String>>('vpcSubnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [DbInstance] resource.
  DbInstance.reference(String urn)
    : super(
        'aws:timestreaminfluxdb/dbInstance:DbInstance',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['password'],
        isResourceReference: true,
      ) {
    allocatedStorage = registerOutput<int>('allocatedStorage');
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    bucket = registerOutput<String>('bucket');
    dbInstanceType = registerOutput<String>('dbInstanceType');
    dbParameterGroupIdentifier = registerOutput<String?>('dbParameterGroupIdentifier');
    dbStorageType = registerOutput<String>('dbStorageType');
    deploymentType = registerOutput<String>('deploymentType');
    endpoint = registerOutput<String>('endpoint');
    influxAuthParametersSecretArn = registerOutput<String>('influxAuthParametersSecretArn');
    logDeliveryConfiguration = registerOutput<DbInstanceLogDeliveryConfiguration?>('logDeliveryConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DbInstanceLogDeliveryConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maintenanceSchedule = registerOutput<DbInstanceMaintenanceSchedule?>('maintenanceSchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DbInstanceMaintenanceSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkType = registerOutput<String>('networkType');
    organization = registerOutput<String>('organization');
    password = registerOutput<String>('password', isSecret: true);
    port = registerOutput<int>('port');
    publiclyAccessible = registerOutput<bool>('publiclyAccessible');
    region = registerOutput<String>('region');
    secondaryAvailabilityZone = registerOutput<String>('secondaryAvailabilityZone');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<DbInstanceTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DbInstanceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    username = registerOutput<String>('username');
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    vpcSubnetIds = registerOutput<List<String>>('vpcSubnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
