import 'package:pulumi/pulumi.dart';
import '../db_instance_log_delivery_configuration/db_instance_log_delivery_configuration.dart';
import '../db_instance_timeouts/db_instance_timeouts.dart';
import 'db_instance_args.dart';

/// Resource for managing an Amazon Timestream for InfluxDB database instance.
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
/// const example = new aws.timestreaminfluxdb.DbInstance("example", {
/// allocatedStorage: 20,
/// bucket: "example-bucket-name",
/// dbInstanceType: "db.influx.medium",
/// username: "admin",
/// password: "example-password",
/// port: 8086,
/// organization: "organization",
/// vpcSubnetIds: [exampleid],
/// vpcSecurityGroupIds: [exampleAwsSecurityGroup.id],
/// name: "example-db-instance",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.timestreaminfluxdb.DbInstance("example",
/// allocated_storage=20,
/// bucket="example-bucket-name",
/// db_instance_type="db.influx.medium",
/// username="admin",
/// password="example-password",
/// port=8086,
/// organization="organization",
/// vpc_subnet_ids=[exampleid],
/// vpc_security_group_ids=[example_aws_security_group["id"]],
/// name="example-db-instance")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.TimestreamInfluxDB.DbInstance("example", new()
/// {
/// AllocatedStorage = 20,
/// Bucket = "example-bucket-name",
/// DbInstanceType = "db.influx.medium",
/// Username = "admin",
/// Password = "example-password",
/// Port = 8086,
/// Organization = "organization",
/// VpcSubnetIds = new[]
/// {
/// exampleid,
/// },
/// VpcSecurityGroupIds = new[]
/// {
/// exampleAwsSecurityGroup.Id,
/// },
/// Name = "example-db-instance",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreaminfluxdb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := timestreaminfluxdb.NewDbInstance(ctx, "example", &timestreaminfluxdb.DbInstanceArgs{
/// AllocatedStorage: pulumi.Int(20),
/// Bucket:           pulumi.String("example-bucket-name"),
/// DbInstanceType:   pulumi.String("db.influx.medium"),
/// Username:         pulumi.String("admin"),
/// Password:         pulumi.String("example-password"),
/// Port:             pulumi.Int(8086),
/// Organization:     pulumi.String("organization"),
/// VpcSubnetIds: pulumi.StringArray{
/// exampleid,
/// },
/// VpcSecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// Name: pulumi.String("example-db-instance"),
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
/// import com.pulumi.aws.timestreaminfluxdb.DbInstance;
/// import com.pulumi.aws.timestreaminfluxdb.DbInstanceArgs;
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
/// var example = new DbInstance("example", DbInstanceArgs.builder()
/// .allocatedStorage(20)
/// .bucket("example-bucket-name")
/// .dbInstanceType("db.influx.medium")
/// .username("admin")
/// .password("example-password")
/// .port(8086)
/// .organization("organization")
/// .vpcSubnetIds(exampleid)
/// .vpcSecurityGroupIds(exampleAwsSecurityGroup.id())
/// .name("example-db-instance")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:timestreaminfluxdb:DbInstance
/// properties:
/// allocatedStorage: 20
/// bucket: example-bucket-name
/// dbInstanceType: db.influx.medium
/// username: admin
/// password: example-password
/// port: 8086
/// organization: organization
/// vpcSubnetIds:
/// - ${exampleid}
/// vpcSecurityGroupIds:
/// - ${exampleAwsSecurityGroup.id}
/// name: example-db-instance
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Usage with Prerequisite Resources
///
/// All Timestream for InfluxDB instances require a VPC, subnet, and security group. The following example shows how these prerequisite resources can be created and used with <span pulumi-lang-nodejs="`aws.timestreaminfluxdb.DbInstance`" pulumi-lang-dotnet="`aws.timestreaminfluxdb.DbInstance`" pulumi-lang-go="`timestreaminfluxdb.DbInstance`" pulumi-lang-python="`timestreaminfluxdb.DbInstance`" pulumi-lang-yaml="`aws.timestreaminfluxdb.DbInstance`" pulumi-lang-java="`aws.timestreaminfluxdb.DbInstance`">`aws.timestreaminfluxdb.DbInstance`</span>.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleSubnet = new aws.ec2.Subnet("example", {
/// vpcId: example.id,
/// cidrBlock: "10.0.1.0/24",
/// });
/// const exampleSecurityGroup = new aws.ec2.SecurityGroup("example", {
/// name: "example",
/// vpcId: example.id,
/// });
/// const exampleDbInstance = new aws.timestreaminfluxdb.DbInstance("example", {
/// allocatedStorage: 20,
/// bucket: "example-bucket-name",
/// dbInstanceType: "db.influx.medium",
/// username: "admin",
/// password: "example-password",
/// organization: "organization",
/// vpcSubnetIds: [exampleSubnet.id],
/// vpcSecurityGroupIds: [exampleSecurityGroup.id],
/// name: "example-db-instance",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_subnet = aws.ec2.Subnet("example",
/// vpc_id=example.id,
/// cidr_block="10.0.1.0/24")
/// example_security_group = aws.ec2.SecurityGroup("example",
/// name="example",
/// vpc_id=example.id)
/// example_db_instance = aws.timestreaminfluxdb.DbInstance("example",
/// allocated_storage=20,
/// bucket="example-bucket-name",
/// db_instance_type="db.influx.medium",
/// username="admin",
/// password="example-password",
/// organization="organization",
/// vpc_subnet_ids=[example_subnet.id],
/// vpc_security_group_ids=[example_security_group.id],
/// name="example-db-instance")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.Vpc("example", new()
/// {
/// CidrBlock = "10.0.0.0/16",
/// });
///
/// var exampleSubnet = new Aws.Ec2.Subnet("example", new()
/// {
/// VpcId = example.Id,
/// CidrBlock = "10.0.1.0/24",
/// });
///
/// var exampleSecurityGroup = new Aws.Ec2.SecurityGroup("example", new()
/// {
/// Name = "example",
/// VpcId = example.Id,
/// });
///
/// var exampleDbInstance = new Aws.TimestreamInfluxDB.DbInstance("example", new()
/// {
/// AllocatedStorage = 20,
/// Bucket = "example-bucket-name",
/// DbInstanceType = "db.influx.medium",
/// Username = "admin",
/// Password = "example-password",
/// Organization = "organization",
/// VpcSubnetIds = new[]
/// {
/// exampleSubnet.Id,
/// },
/// VpcSecurityGroupIds = new[]
/// {
/// exampleSecurityGroup.Id,
/// },
/// Name = "example-db-instance",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreaminfluxdb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.0.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleSubnet, err := ec2.NewSubnet(ctx, "example", &ec2.SubnetArgs{
/// VpcId:     example.ID(),
/// CidrBlock: pulumi.String("10.0.1.0/24"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleSecurityGroup, err := ec2.NewSecurityGroup(ctx, "example", &ec2.SecurityGroupArgs{
/// Name:  pulumi.String("example"),
/// VpcId: example.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = timestreaminfluxdb.NewDbInstance(ctx, "example", &timestreaminfluxdb.DbInstanceArgs{
/// AllocatedStorage: pulumi.Int(20),
/// Bucket:           pulumi.String("example-bucket-name"),
/// DbInstanceType:   pulumi.String("db.influx.medium"),
/// Username:         pulumi.String("admin"),
/// Password:         pulumi.String("example-password"),
/// Organization:     pulumi.String("organization"),
/// VpcSubnetIds: pulumi.StringArray{
/// exampleSubnet.ID(),
/// },
/// VpcSecurityGroupIds: pulumi.StringArray{
/// exampleSecurityGroup.ID(),
/// },
/// Name: pulumi.String("example-db-instance"),
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.timestreaminfluxdb.DbInstance;
/// import com.pulumi.aws.timestreaminfluxdb.DbInstanceArgs;
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
/// var example = new Vpc("example", VpcArgs.builder()
/// .cidrBlock("10.0.0.0/16")
/// .build());
///
/// var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
/// .vpcId(example.id())
/// .cidrBlock("10.0.1.0/24")
/// .build());
///
/// var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
/// .name("example")
/// .vpcId(example.id())
/// .build());
///
/// var exampleDbInstance = new DbInstance("exampleDbInstance", DbInstanceArgs.builder()
/// .allocatedStorage(20)
/// .bucket("example-bucket-name")
/// .dbInstanceType("db.influx.medium")
/// .username("admin")
/// .password("example-password")
/// .organization("organization")
/// .vpcSubnetIds(exampleSubnet.id())
/// .vpcSecurityGroupIds(exampleSecurityGroup.id())
/// .name("example-db-instance")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.0.0.0/16
/// exampleSubnet:
/// type: aws:ec2:Subnet
/// name: example
/// properties:
/// vpcId: ${example.id}
/// cidrBlock: 10.0.1.0/24
/// exampleSecurityGroup:
/// type: aws:ec2:SecurityGroup
/// name: example
/// properties:
/// name: example
/// vpcId: ${example.id}
/// exampleDbInstance:
/// type: aws:timestreaminfluxdb:DbInstance
/// name: example
/// properties:
/// allocatedStorage: 20
/// bucket: example-bucket-name
/// dbInstanceType: db.influx.medium
/// username: admin
/// password: example-password
/// organization: organization
/// vpcSubnetIds:
/// - ${exampleSubnet.id}
/// vpcSecurityGroupIds:
/// - ${exampleSecurityGroup.id}
/// name: example-db-instance
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Usage with S3 Log Delivery Enabled
///
/// You can use an S3 bucket to store logs generated by your Timestream for InfluxDB instance. The following example shows what resources and arguments are required to configure an S3 bucket for logging, including the IAM policy that needs to be set in order to allow Timestream for InfluxDB to place logs in your S3 bucket. The configuration of the required VPC, security group, and subnet have been left out of the example for brevity.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleBucket = new aws.s3.Bucket("example", {
/// bucket: "example-s3-bucket",
/// forceDestroy: true,
/// });
/// const example = aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// actions: ["s3:PutObject"],
/// principals: [{
/// type: "Service",
/// identifiers: ["timestream-influxdb.amazonaws.com"],
/// }],
/// resources: [pulumi.interpolate`${exampleBucket.arn}/*`],
/// }],
/// });
/// const exampleBucketPolicy = new aws.s3.BucketPolicy("example", {
/// bucket: exampleBucket.id,
/// policy: example.apply(example => example.json),
/// });
/// const exampleDbInstance = new aws.timestreaminfluxdb.DbInstance("example", {
/// allocatedStorage: 20,
/// bucket: "example-bucket-name",
/// dbInstanceType: "db.influx.medium",
/// username: "admin",
/// password: "example-password",
/// organization: "organization",
/// vpcSubnetIds: [exampleAwsSubnet.id],
/// vpcSecurityGroupIds: [exampleAwsSecurityGroup.id],
/// name: "example-db-instance",
/// logDeliveryConfiguration: {
/// s3Configuration: {
/// bucketName: exampleBucket.bucket,
/// enabled: true,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_bucket = aws.s3.Bucket("example",
/// bucket="example-s3-bucket",
/// force_destroy=True)
/// example = aws.iam.get_policy_document_output(statements=[{
/// "actions": ["s3:PutObject"],
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["timestream-influxdb.amazonaws.com"],
/// }],
/// "resources": [example_bucket.arn.apply(lambda arn: f"{arn}/*")],
/// }])
/// example_bucket_policy = aws.s3.BucketPolicy("example",
/// bucket=example_bucket.id,
/// policy=example.json)
/// example_db_instance = aws.timestreaminfluxdb.DbInstance("example",
/// allocated_storage=20,
/// bucket="example-bucket-name",
/// db_instance_type="db.influx.medium",
/// username="admin",
/// password="example-password",
/// organization="organization",
/// vpc_subnet_ids=[example_aws_subnet["id"]],
/// vpc_security_group_ids=[example_aws_security_group["id"]],
/// name="example-db-instance",
/// log_delivery_configuration={
/// "s3_configuration": {
/// "bucket_name": example_bucket.bucket,
/// "enabled": True,
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
/// var exampleBucket = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "example-s3-bucket",
/// ForceDestroy = true,
/// });
///
/// var example = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "s3:PutObject",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "timestream-influxdb.amazonaws.com",
/// },
/// },
/// },
/// Resources = new[]
/// {
/// $"{exampleBucket.Arn}/*",
/// },
/// },
/// },
/// });
///
/// var exampleBucketPolicy = new Aws.S3.BucketPolicy("example", new()
/// {
/// Bucket = exampleBucket.Id,
/// Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var exampleDbInstance = new Aws.TimestreamInfluxDB.DbInstance("example", new()
/// {
/// AllocatedStorage = 20,
/// Bucket = "example-bucket-name",
/// DbInstanceType = "db.influx.medium",
/// Username = "admin",
/// Password = "example-password",
/// Organization = "organization",
/// VpcSubnetIds = new[]
/// {
/// exampleAwsSubnet.Id,
/// },
/// VpcSecurityGroupIds = new[]
/// {
/// exampleAwsSecurityGroup.Id,
/// },
/// Name = "example-db-instance",
/// LogDeliveryConfiguration = new Aws.TimestreamInfluxDB.Inputs.DbInstanceLogDeliveryConfigurationArgs
/// {
/// S3Configuration = new Aws.TimestreamInfluxDB.Inputs.DbInstanceLogDeliveryConfigurationS3ConfigurationArgs
/// {
/// BucketName = exampleBucket.BucketName,
/// Enabled = true,
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
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreaminfluxdb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket:       pulumi.String("example-s3-bucket"),
/// ForceDestroy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Actions: pulumi.StringArray{
/// pulumi.String("s3:PutObject"),
/// },
/// Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// &iam.GetPolicyDocumentStatementPrincipalArgs{
/// Type: pulumi.String("Service"),
/// Identifiers: pulumi.StringArray{
/// pulumi.String("timestream-influxdb.amazonaws.com"),
/// },
/// },
/// },
/// Resources: pulumi.StringArray{
/// exampleBucket.Arn.ApplyT(func(arn string) (string, error) {
/// return fmt.Sprintf("%v/*", arn), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// },
/// }, nil)
/// _, err = s3.NewBucketPolicy(ctx, "example", &s3.BucketPolicyArgs{
/// Bucket: exampleBucket.ID(),
/// Policy: pulumi.String(example.ApplyT(func(example iam.GetPolicyDocumentResult) (*string, error) {
/// return &example.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = timestreaminfluxdb.NewDbInstance(ctx, "example", &timestreaminfluxdb.DbInstanceArgs{
/// AllocatedStorage: pulumi.Int(20),
/// Bucket:           pulumi.String("example-bucket-name"),
/// DbInstanceType:   pulumi.String("db.influx.medium"),
/// Username:         pulumi.String("admin"),
/// Password:         pulumi.String("example-password"),
/// Organization:     pulumi.String("organization"),
/// VpcSubnetIds: pulumi.StringArray{
/// exampleAwsSubnet.Id,
/// },
/// VpcSecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// Name: pulumi.String("example-db-instance"),
/// LogDeliveryConfiguration: &timestreaminfluxdb.DbInstanceLogDeliveryConfigurationArgs{
/// S3Configuration: &timestreaminfluxdb.DbInstanceLogDeliveryConfigurationS3ConfigurationArgs{
/// BucketName: exampleBucket.Bucket,
/// Enabled:    pulumi.Bool(true),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.timestreaminfluxdb.DbInstance;
/// import com.pulumi.aws.timestreaminfluxdb.DbInstanceArgs;
/// import com.pulumi.aws.timestreaminfluxdb.inputs.DbInstanceLogDeliveryConfigurationArgs;
/// import com.pulumi.aws.timestreaminfluxdb.inputs.DbInstanceLogDeliveryConfigurationS3ConfigurationArgs;
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
/// var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
/// .bucket("example-s3-bucket")
/// .forceDestroy(true)
/// .build());
///
/// final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .actions("s3:PutObject")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("timestream-influxdb.amazonaws.com")
/// .build())
/// .resources(exampleBucket.arn().applyValue(_arn -> String.format("%s/*", _arn)))
/// .build())
/// .build());
///
/// var exampleBucketPolicy = new BucketPolicy("exampleBucketPolicy", BucketPolicyArgs.builder()
/// .bucket(exampleBucket.id())
/// .policy(example.applyValue(_example -> _example.json()))
/// .build());
///
/// var exampleDbInstance = new DbInstance("exampleDbInstance", DbInstanceArgs.builder()
/// .allocatedStorage(20)
/// .bucket("example-bucket-name")
/// .dbInstanceType("db.influx.medium")
/// .username("admin")
/// .password("example-password")
/// .organization("organization")
/// .vpcSubnetIds(exampleAwsSubnet.id())
/// .vpcSecurityGroupIds(exampleAwsSecurityGroup.id())
/// .name("example-db-instance")
/// .logDeliveryConfiguration(DbInstanceLogDeliveryConfigurationArgs.builder()
/// .s3Configuration(DbInstanceLogDeliveryConfigurationS3ConfigurationArgs.builder()
/// .bucketName(exampleBucket.bucket())
/// .enabled(true)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleBucket:
/// type: aws:s3:Bucket
/// name: example
/// properties:
/// bucket: example-s3-bucket
/// forceDestroy: true
/// exampleBucketPolicy:
/// type: aws:s3:BucketPolicy
/// name: example
/// properties:
/// bucket: ${exampleBucket.id}
/// policy: ${example.json}
/// exampleDbInstance:
/// type: aws:timestreaminfluxdb:DbInstance
/// name: example
/// properties:
/// allocatedStorage: 20
/// bucket: example-bucket-name
/// dbInstanceType: db.influx.medium
/// username: admin
/// password: example-password
/// organization: organization
/// vpcSubnetIds:
/// - ${exampleAwsSubnet.id}
/// vpcSecurityGroupIds:
/// - ${exampleAwsSecurityGroup.id}
/// name: example-db-instance
/// logDeliveryConfiguration:
/// s3Configuration:
/// bucketName: ${exampleBucket.bucket}
/// enabled: true
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - s3:PutObject
/// principals:
/// - type: Service
/// identifiers:
/// - timestream-influxdb.amazonaws.com
/// resources:
/// - ${exampleBucket.arn}/*
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Usage with MultiAZ Deployment
///
/// To use multi-region availability, at least two subnets must be created in different availability zones and used with your Timestream for InfluxDB instance.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example1 = new aws.ec2.Subnet("example_1", {
/// vpcId: exampleAwsVpc.id,
/// cidrBlock: "10.0.1.0/24",
/// availabilityZone: "us-west-2a",
/// });
/// const example2 = new aws.ec2.Subnet("example_2", {
/// vpcId: exampleAwsVpc.id,
/// cidrBlock: "10.0.2.0/24",
/// availabilityZone: "us-west-2b",
/// });
/// const example = new aws.timestreaminfluxdb.DbInstance("example", {
/// allocatedStorage: 20,
/// bucket: "example-bucket-name",
/// dbInstanceType: "db.influx.medium",
/// deploymentType: "WITH_MULTIAZ_STANDBY",
/// username: "admin",
/// password: "example-password",
/// organization: "organization",
/// vpcSubnetIds: [
/// example1.id,
/// example2.id,
/// ],
/// vpcSecurityGroupIds: [exampleAwsSecurityGroup.id],
/// name: "example-db-instance",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example1 = aws.ec2.Subnet("example_1",
/// vpc_id=example_aws_vpc["id"],
/// cidr_block="10.0.1.0/24",
/// availability_zone="us-west-2a")
/// example2 = aws.ec2.Subnet("example_2",
/// vpc_id=example_aws_vpc["id"],
/// cidr_block="10.0.2.0/24",
/// availability_zone="us-west-2b")
/// example = aws.timestreaminfluxdb.DbInstance("example",
/// allocated_storage=20,
/// bucket="example-bucket-name",
/// db_instance_type="db.influx.medium",
/// deployment_type="WITH_MULTIAZ_STANDBY",
/// username="admin",
/// password="example-password",
/// organization="organization",
/// vpc_subnet_ids=[
/// example1.id,
/// example2.id,
/// ],
/// vpc_security_group_ids=[example_aws_security_group["id"]],
/// name="example-db-instance")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example1 = new Aws.Ec2.Subnet("example_1", new()
/// {
/// VpcId = exampleAwsVpc.Id,
/// CidrBlock = "10.0.1.0/24",
/// AvailabilityZone = "us-west-2a",
/// });
///
/// var example2 = new Aws.Ec2.Subnet("example_2", new()
/// {
/// VpcId = exampleAwsVpc.Id,
/// CidrBlock = "10.0.2.0/24",
/// AvailabilityZone = "us-west-2b",
/// });
///
/// var example = new Aws.TimestreamInfluxDB.DbInstance("example", new()
/// {
/// AllocatedStorage = 20,
/// Bucket = "example-bucket-name",
/// DbInstanceType = "db.influx.medium",
/// DeploymentType = "WITH_MULTIAZ_STANDBY",
/// Username = "admin",
/// Password = "example-password",
/// Organization = "organization",
/// VpcSubnetIds = new[]
/// {
/// example1.Id,
/// example2.Id,
/// },
/// VpcSecurityGroupIds = new[]
/// {
/// exampleAwsSecurityGroup.Id,
/// },
/// Name = "example-db-instance",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreaminfluxdb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example1, err := ec2.NewSubnet(ctx, "example_1", &ec2.SubnetArgs{
/// VpcId:            pulumi.Any(exampleAwsVpc.Id),
/// CidrBlock:        pulumi.String("10.0.1.0/24"),
/// AvailabilityZone: pulumi.String("us-west-2a"),
/// })
/// if err != nil {
/// return err
/// }
/// example2, err := ec2.NewSubnet(ctx, "example_2", &ec2.SubnetArgs{
/// VpcId:            pulumi.Any(exampleAwsVpc.Id),
/// CidrBlock:        pulumi.String("10.0.2.0/24"),
/// AvailabilityZone: pulumi.String("us-west-2b"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = timestreaminfluxdb.NewDbInstance(ctx, "example", &timestreaminfluxdb.DbInstanceArgs{
/// AllocatedStorage: pulumi.Int(20),
/// Bucket:           pulumi.String("example-bucket-name"),
/// DbInstanceType:   pulumi.String("db.influx.medium"),
/// DeploymentType:   pulumi.String("WITH_MULTIAZ_STANDBY"),
/// Username:         pulumi.String("admin"),
/// Password:         pulumi.String("example-password"),
/// Organization:     pulumi.String("organization"),
/// VpcSubnetIds: pulumi.StringArray{
/// example1.ID(),
/// example2.ID(),
/// },
/// VpcSecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// Name: pulumi.String("example-db-instance"),
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
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.timestreaminfluxdb.DbInstance;
/// import com.pulumi.aws.timestreaminfluxdb.DbInstanceArgs;
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
/// var example1 = new Subnet("example1", SubnetArgs.builder()
/// .vpcId(exampleAwsVpc.id())
/// .cidrBlock("10.0.1.0/24")
/// .availabilityZone("us-west-2a")
/// .build());
///
/// var example2 = new Subnet("example2", SubnetArgs.builder()
/// .vpcId(exampleAwsVpc.id())
/// .cidrBlock("10.0.2.0/24")
/// .availabilityZone("us-west-2b")
/// .build());
///
/// var example = new DbInstance("example", DbInstanceArgs.builder()
/// .allocatedStorage(20)
/// .bucket("example-bucket-name")
/// .dbInstanceType("db.influx.medium")
/// .deploymentType("WITH_MULTIAZ_STANDBY")
/// .username("admin")
/// .password("example-password")
/// .organization("organization")
/// .vpcSubnetIds(
/// example1.id(),
/// example2.id())
/// .vpcSecurityGroupIds(exampleAwsSecurityGroup.id())
/// .name("example-db-instance")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example1:
/// type: aws:ec2:Subnet
/// name: example_1
/// properties:
/// vpcId: ${exampleAwsVpc.id}
/// cidrBlock: 10.0.1.0/24
/// availabilityZone: us-west-2a
/// example2:
/// type: aws:ec2:Subnet
/// name: example_2
/// properties:
/// vpcId: ${exampleAwsVpc.id}
/// cidrBlock: 10.0.2.0/24
/// availabilityZone: us-west-2b
/// example:
/// type: aws:timestreaminfluxdb:DbInstance
/// properties:
/// allocatedStorage: 20
/// bucket: example-bucket-name
/// dbInstanceType: db.influx.medium
/// deploymentType: WITH_MULTIAZ_STANDBY
/// username: admin
/// password: example-password
/// organization: organization
/// vpcSubnetIds:
/// - ${example1.id}
/// - ${example2.id}
/// vpcSecurityGroupIds:
/// - ${exampleAwsSecurityGroup.id}
/// name: example-db-instance
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Timestream for InfluxDB Db Instance using its identifier. For example:
///
/// ```sh
/// $ pulumi import aws:timestreaminfluxdb/dbInstance:DbInstance example 12345abcde
/// ```
class DbInstance extends CustomResource {
  /// Amount of storage in GiB (gibibytes). The minimum value is <span pulumi-lang-nodejs="`20`" pulumi-lang-dotnet="`20`" pulumi-lang-go="`20`" pulumi-lang-python="`20`" pulumi-lang-yaml="`20`" pulumi-lang-java="`20`">`20`</span>, the maximum value is <span pulumi-lang-nodejs="`16384`" pulumi-lang-dotnet="`16384`" pulumi-lang-go="`16384`" pulumi-lang-python="`16384`" pulumi-lang-yaml="`16384`" pulumi-lang-java="`16384`">`16384`</span>. This argument is updatable. The argument <span pulumi-lang-nodejs="`dbStorageType`" pulumi-lang-dotnet="`DbStorageType`" pulumi-lang-go="`dbStorageType`" pulumi-lang-python="`db_storage_type`" pulumi-lang-yaml="`dbStorageType`" pulumi-lang-java="`dbStorageType`">`db_storage_type`</span> places restrictions on this argument's minimum value. The following is a list of <span pulumi-lang-nodejs="`dbStorageType`" pulumi-lang-dotnet="`DbStorageType`" pulumi-lang-go="`dbStorageType`" pulumi-lang-python="`db_storage_type`" pulumi-lang-yaml="`dbStorageType`" pulumi-lang-java="`dbStorageType`">`db_storage_type`</span> values and the corresponding minimum value for <span pulumi-lang-nodejs="`allocatedStorage`" pulumi-lang-dotnet="`AllocatedStorage`" pulumi-lang-go="`allocatedStorage`" pulumi-lang-python="`allocated_storage`" pulumi-lang-yaml="`allocatedStorage`" pulumi-lang-java="`allocatedStorage`">`allocated_storage`</span>: `"InfluxIOIncludedT1": <span pulumi-lang-nodejs="`20`" pulumi-lang-dotnet="`20`" pulumi-lang-go="`20`" pulumi-lang-python="`20`" pulumi-lang-yaml="`20`" pulumi-lang-java="`20`">`20`</span>, `"InfluxIOIncludedT2" and `"InfluxIOIncludedT3": <span pulumi-lang-nodejs="`400`" pulumi-lang-dotnet="`400`" pulumi-lang-go="`400`" pulumi-lang-python="`400`" pulumi-lang-yaml="`400`" pulumi-lang-java="`400`">`400`</span>.
  late final Output<int> allocatedStorage;

  /// ARN of the Timestream for InfluxDB Instance.
  late final Output<String> arn;

  /// Availability Zone in which the DB instance resides.
  late final Output<String> availabilityZone;

  /// Name of the initial InfluxDB bucket. All InfluxDB data is stored in a bucket. A bucket combines the concept of a database and a retention period (the duration of time that each data point persists). A bucket belongs to an organization. Along with <span pulumi-lang-nodejs="`organization`" pulumi-lang-dotnet="`Organization`" pulumi-lang-go="`organization`" pulumi-lang-python="`organization`" pulumi-lang-yaml="`organization`" pulumi-lang-java="`organization`">`organization`</span>, <span pulumi-lang-nodejs="`username`" pulumi-lang-dotnet="`Username`" pulumi-lang-go="`username`" pulumi-lang-python="`username`" pulumi-lang-yaml="`username`" pulumi-lang-java="`username`">`username`</span>, and <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span>, this argument will be stored in the secret referred to by the <span pulumi-lang-nodejs="`influxAuthParametersSecretArn`" pulumi-lang-dotnet="`InfluxAuthParametersSecretArn`" pulumi-lang-go="`influxAuthParametersSecretArn`" pulumi-lang-python="`influx_auth_parameters_secret_arn`" pulumi-lang-yaml="`influxAuthParametersSecretArn`" pulumi-lang-java="`influxAuthParametersSecretArn`">`influx_auth_parameters_secret_arn`</span> attribute.
  late final Output<String> bucket;

  /// Timestream for InfluxDB DB instance type to run InfluxDB on. Valid options are: `"db.influx.medium"`, `"db.influx.large"`, `"db.influx.xlarge"`, `"db.influx.2xlarge"`, `"db.influx.4xlarge"`, `"db.influx.8xlarge"`, `"db.influx.12xlarge"`, and `"db.influx.16xlarge"`. This argument is updatable.
  late final Output<String> dbInstanceType;

  /// ID of the DB parameter group assigned to your DB instance. This argument is updatable. If added to an existing Timestream for InfluxDB instance or given a new value, will cause an in-place update to the instance. However, if an instance already has a value for <span pulumi-lang-nodejs="`dbParameterGroupIdentifier`" pulumi-lang-dotnet="`DbParameterGroupIdentifier`" pulumi-lang-go="`dbParameterGroupIdentifier`" pulumi-lang-python="`db_parameter_group_identifier`" pulumi-lang-yaml="`dbParameterGroupIdentifier`" pulumi-lang-java="`dbParameterGroupIdentifier`">`db_parameter_group_identifier`</span>, removing <span pulumi-lang-nodejs="`dbParameterGroupIdentifier`" pulumi-lang-dotnet="`DbParameterGroupIdentifier`" pulumi-lang-go="`dbParameterGroupIdentifier`" pulumi-lang-python="`db_parameter_group_identifier`" pulumi-lang-yaml="`dbParameterGroupIdentifier`" pulumi-lang-java="`dbParameterGroupIdentifier`">`db_parameter_group_identifier`</span> will cause the instance to be destroyed and recreated.
  late final Output<String?> dbParameterGroupIdentifier;

  /// Timestream for InfluxDB DB storage type to read and write InfluxDB data. You can choose between 3 different types of provisioned Influx IOPS included storage according to your workloads requirements: Influx IO Included 3000 IOPS, Influx IO Included 12000 IOPS, Influx IO Included 16000 IOPS. Valid options are: `"InfluxIOIncludedT1"`, `"InfluxIOIncludedT2"`, and `"InfluxIOIncludedT3"`. If you use `"InfluxIOIncludedT2" or "InfluxIOIncludedT3", the minimum value for <span pulumi-lang-nodejs="`allocatedStorage`" pulumi-lang-dotnet="`AllocatedStorage`" pulumi-lang-go="`allocatedStorage`" pulumi-lang-python="`allocated_storage`" pulumi-lang-yaml="`allocatedStorage`" pulumi-lang-java="`allocatedStorage`">`allocated_storage`</span> is 400. This argument is updatable. For a single instance, after this argument has been updated once, it can only be updated again after 6 hours have passed.
  late final Output<String> dbStorageType;

  /// Specifies whether the DB instance will be deployed as a standalone instance or with a Multi-AZ standby for high availability. Valid options are: `"SINGLE_AZ"`, `"WITH_MULTIAZ_STANDBY"`. This argument is updatable.
  late final Output<String> deploymentType;

  /// Endpoint used to connect to InfluxDB. The default InfluxDB port is 8086.
  late final Output<String> endpoint;

  /// ARN of the AWS Secrets Manager secret containing the initial InfluxDB authorization parameters. The secret value is a JSON formatted key-value pair holding InfluxDB authorization values: organization, bucket, username, and password.
  late final Output<String> influxAuthParametersSecretArn;

  /// Configuration for sending InfluxDB engine logs to a specified S3 bucket. This argument is updatable.
  late final Output<DbInstanceLogDeliveryConfiguration?>
      logDeliveryConfiguration;

  /// Name that uniquely identifies the DB instance when interacting with the Amazon Timestream for InfluxDB API and CLI commands. This name will also be a prefix included in the endpoint. DB instance names must be unique per customer and per region. The argument must start with a letter, cannot contain consecutive hyphens (`-`) and cannot end with a hyphen.
  late final Output<String> name;

  /// Specifies whether the networkType of the Timestream for InfluxDB instance is IPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.
  late final Output<String> networkType;

  /// Name of the initial organization for the initial admin user in InfluxDB. An InfluxDB organization is a workspace for a group of users. Along with <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>, <span pulumi-lang-nodejs="`username`" pulumi-lang-dotnet="`Username`" pulumi-lang-go="`username`" pulumi-lang-python="`username`" pulumi-lang-yaml="`username`" pulumi-lang-java="`username`">`username`</span>, and <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span>, this argument will be stored in the secret referred to by the <span pulumi-lang-nodejs="`influxAuthParametersSecretArn`" pulumi-lang-dotnet="`InfluxAuthParametersSecretArn`" pulumi-lang-go="`influxAuthParametersSecretArn`" pulumi-lang-python="`influx_auth_parameters_secret_arn`" pulumi-lang-yaml="`influxAuthParametersSecretArn`" pulumi-lang-java="`influxAuthParametersSecretArn`">`influx_auth_parameters_secret_arn`</span> attribute.
  late final Output<String> organization;

  /// Password of the initial admin user created in InfluxDB. This password will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>, <span pulumi-lang-nodejs="`username`" pulumi-lang-dotnet="`Username`" pulumi-lang-go="`username`" pulumi-lang-python="`username`" pulumi-lang-yaml="`username`" pulumi-lang-java="`username`">`username`</span>, and <span pulumi-lang-nodejs="`organization`" pulumi-lang-dotnet="`Organization`" pulumi-lang-go="`organization`" pulumi-lang-python="`organization`" pulumi-lang-yaml="`organization`" pulumi-lang-java="`organization`">`organization`</span>, this argument will be stored in the secret referred to by the <span pulumi-lang-nodejs="`influxAuthParametersSecretArn`" pulumi-lang-dotnet="`InfluxAuthParametersSecretArn`" pulumi-lang-go="`influxAuthParametersSecretArn`" pulumi-lang-python="`influx_auth_parameters_secret_arn`" pulumi-lang-yaml="`influxAuthParametersSecretArn`" pulumi-lang-java="`influxAuthParametersSecretArn`">`influx_auth_parameters_secret_arn`</span> attribute.
  late final Output<String> password;

  /// The port on which the instance accepts connections. Valid values: <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span>-<span pulumi-lang-nodejs="`65535`" pulumi-lang-dotnet="`65535`" pulumi-lang-go="`65535`" pulumi-lang-python="`65535`" pulumi-lang-yaml="`65535`" pulumi-lang-java="`65535`">`65535`</span>. Cannot be <span pulumi-lang-nodejs="`2375`" pulumi-lang-dotnet="`2375`" pulumi-lang-go="`2375`" pulumi-lang-python="`2375`" pulumi-lang-yaml="`2375`" pulumi-lang-java="`2375`">`2375`</span>-<span pulumi-lang-nodejs="`2376`" pulumi-lang-dotnet="`2376`" pulumi-lang-go="`2376`" pulumi-lang-python="`2376`" pulumi-lang-yaml="`2376`" pulumi-lang-java="`2376`">`2376`</span>, <span pulumi-lang-nodejs="`7788`" pulumi-lang-dotnet="`7788`" pulumi-lang-go="`7788`" pulumi-lang-python="`7788`" pulumi-lang-yaml="`7788`" pulumi-lang-java="`7788`">`7788`</span>-<span pulumi-lang-nodejs="`7799`" pulumi-lang-dotnet="`7799`" pulumi-lang-go="`7799`" pulumi-lang-python="`7799`" pulumi-lang-yaml="`7799`" pulumi-lang-java="`7799`">`7799`</span>, <span pulumi-lang-nodejs="`8090`" pulumi-lang-dotnet="`8090`" pulumi-lang-go="`8090`" pulumi-lang-python="`8090`" pulumi-lang-yaml="`8090`" pulumi-lang-java="`8090`">`8090`</span>, or <span pulumi-lang-nodejs="`51678`" pulumi-lang-dotnet="`51678`" pulumi-lang-go="`51678`" pulumi-lang-python="`51678`" pulumi-lang-yaml="`51678`" pulumi-lang-java="`51678`">`51678`</span>-<span pulumi-lang-nodejs="`51680`" pulumi-lang-dotnet="`51680`" pulumi-lang-go="`51680`" pulumi-lang-python="`51680`" pulumi-lang-yaml="`51680`" pulumi-lang-java="`51680`">`51680`</span>. This argument is updatable.
  late final Output<int> port;

  /// Configures the DB instance with a public IP to facilitate access. Other resources, such as a VPC, a subnet, an internet gateway, and a route table with routes, are also required to enabled public access, in addition to this argument. See "Usage with Public Internet Access Enabled" for an example configuration with all required resources for public internet access.
  late final Output<bool> publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Availability Zone in which the standby instance is located when deploying with a MultiAZ standby instance.
  late final Output<String> secondaryAvailabilityZone;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<DbInstanceTimeouts?> timeouts;

  /// Username of the initial admin user created in InfluxDB. Must start with a letter and can't end with a hyphen or contain two consecutive hyphens. This username will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. Along with <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>, <span pulumi-lang-nodejs="`organization`" pulumi-lang-dotnet="`Organization`" pulumi-lang-go="`organization`" pulumi-lang-python="`organization`" pulumi-lang-yaml="`organization`" pulumi-lang-java="`organization`">`organization`</span>, and <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span>, this argument will be stored in the secret referred to by the <span pulumi-lang-nodejs="`influxAuthParametersSecretArn`" pulumi-lang-dotnet="`InfluxAuthParametersSecretArn`" pulumi-lang-go="`influxAuthParametersSecretArn`" pulumi-lang-python="`influx_auth_parameters_secret_arn`" pulumi-lang-yaml="`influxAuthParametersSecretArn`" pulumi-lang-java="`influxAuthParametersSecretArn`">`influx_auth_parameters_secret_arn`</span> attribute.
  late final Output<String> username;

  /// List of VPC security group IDs to associate with the DB instance.
  late final Output<List<String>> vpcSecurityGroupIds;

  /// List of VPC subnet IDs to associate with the DB instance. Provide at least two VPC subnet IDs in different availability zones when deploying with a Multi-AZ standby.
  ///
  /// The following arguments are optional:
  late final Output<List<String>> vpcSubnetIds;

  DbInstance(
    String name, {
    DbInstanceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:timestreaminfluxdb/dbInstance:DbInstance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allocatedStorage = Output.createUnknown<int>();
    this.arn = Output.createUnknown<String>();
    this.availabilityZone = Output.createUnknown<String>();
    this.bucket = Output.createUnknown<String>();
    this.dbInstanceType = Output.createUnknown<String>();
    this.dbParameterGroupIdentifier = Output.createUnknown<String?>();
    this.dbStorageType = Output.createUnknown<String>();
    this.deploymentType = Output.createUnknown<String>();
    this.endpoint = Output.createUnknown<String>();
    this.influxAuthParametersSecretArn = Output.createUnknown<String>();
    this.logDeliveryConfiguration =
        Output.createUnknown<DbInstanceLogDeliveryConfiguration?>();
    this.name = Output.createUnknown<String>();
    this.networkType = Output.createUnknown<String>();
    this.organization = Output.createUnknown<String>();
    this.password = Output.createUnknown<String>();
    this.port = Output.createUnknown<int>();
    this.publiclyAccessible = Output.createUnknown<bool>();
    this.region = Output.createUnknown<String>();
    this.secondaryAvailabilityZone = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<DbInstanceTimeouts?>();
    this.username = Output.createUnknown<String>();
    this.vpcSecurityGroupIds = Output.createUnknown<List<String>>();
    this.vpcSubnetIds = Output.createUnknown<List<String>>();
  }
}
