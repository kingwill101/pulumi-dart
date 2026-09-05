import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_broker_node_group_info.dart';
import 'cluster_client_authentication.dart';
import 'cluster_configuration_info.dart';
import 'cluster_encryption_info.dart';
import 'cluster_logging_info.dart';
import 'cluster_open_monitoring.dart';
import 'cluster_rebalancing.dart';
import 'cluster_state.dart';

/// Manages an Amazon MSK cluster.
///
/// &gt; **Note:** This resource manages _provisioned_ clusters. To manage a _serverless_ Amazon MSK cluster, use the `aws.msk.ServerlessCluster` resource.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const vpc = new aws.ec2.Vpc("vpc", {cidrBlock: "192.168.0.0/22"});
/// const azs = aws.getAvailabilityZones({
///     state: "available",
/// });
/// const subnetAz1 = new aws.ec2.Subnet("subnet_az1", {
///     availabilityZone: azs.then(azs => azs.names?.[0]),
///     cidrBlock: "192.168.0.0/24",
///     vpcId: vpc.id,
/// });
/// const subnetAz2 = new aws.ec2.Subnet("subnet_az2", {
///     availabilityZone: azs.then(azs => azs.names?.[1]),
///     cidrBlock: "192.168.1.0/24",
///     vpcId: vpc.id,
/// });
/// const subnetAz3 = new aws.ec2.Subnet("subnet_az3", {
///     availabilityZone: azs.then(azs => azs.names?.[2]),
///     cidrBlock: "192.168.2.0/24",
///     vpcId: vpc.id,
/// });
/// const sg = new aws.ec2.SecurityGroup("sg", {vpcId: vpc.id});
/// const kms = new aws.kms.Key("kms", {description: "example"});
/// const test = new aws.cloudwatch.LogGroup("test", {name: "msk_broker_logs"});
/// const bucket = new aws.s3.Bucket("bucket", {bucket: "msk-broker-logs-bucket"});
/// const bucketAcl = new aws.s3.BucketAcl("bucket_acl", {
///     bucket: bucket.id,
///     acl: "private",
/// });
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["firehose.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const firehoseRole = new aws.iam.Role("firehose_role", {
///     name: "firehose_test_role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const testStream = new aws.kinesis.FirehoseDeliveryStream("test_stream", {
///     extendedS3Configuration: {
///         roleArn: firehoseRole.arn,
///         bucketArn: bucket.arn,
///     },
///     name: "kinesis-firehose-msk-broker-logs-stream",
///     destination: "extended_s3",
///     tags: {
///         LogDeliveryEnabled: "placeholder",
///     },
/// }, {
///     ignoreChanges: ["tags[\"LogDeliveryEnabled\"]"],
/// });
/// const example = new aws.msk.Cluster("example", {
///     brokerNodeGroupInfo: {
///         storageInfo: {
///             ebsStorageInfo: {
///                 volumeSize: 1000,
///             },
///         },
///         instanceType: "kafka.m5.large",
///         clientSubnets: [
///             subnetAz1.id,
///             subnetAz2.id,
///             subnetAz3.id,
///         ],
///         securityGroups: [sg.id],
///     },
///     encryptionInfo: {
///         encryptionAtRestKmsKeyArn: kms.arn,
///     },
///     openMonitoring: {
///         prometheus: {
///             jmxExporter: {
///                 enabledInBroker: true,
///             },
///             nodeExporter: {
///                 enabledInBroker: true,
///             },
///         },
///     },
///     loggingInfo: {
///         brokerLogs: {
///             cloudwatchLogs: {
///                 enabled: true,
///                 logGroup: test.name,
///             },
///             firehose: {
///                 enabled: true,
///                 deliveryStream: testStream.name,
///             },
///             s3: {
///                 enabled: true,
///                 bucket: bucket.id,
///                 prefix: "logs/msk-",
///             },
///         },
///     },
///     clusterName: "example",
///     kafkaVersion: "3.8.x",
///     numberOfBrokerNodes: 3,
///     tags: {
///         foo: "bar",
///     },
/// });
/// export const zookeeperConnectString = example.zookeeperConnectString;
/// export const bootstrapBrokersTls = example.bootstrapBrokersTls;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// vpc = aws.ec2.Vpc("vpc", cidr_block="192.168.0.0/22")
/// azs = aws.get_availability_zones(state="available")
/// subnet_az1 = aws.ec2.Subnet("subnet_az1",
///     availability_zone=azs.names[0],
///     cidr_block="192.168.0.0/24",
///     vpc_id=vpc.id)
/// subnet_az2 = aws.ec2.Subnet("subnet_az2",
///     availability_zone=azs.names[1],
///     cidr_block="192.168.1.0/24",
///     vpc_id=vpc.id)
/// subnet_az3 = aws.ec2.Subnet("subnet_az3",
///     availability_zone=azs.names[2],
///     cidr_block="192.168.2.0/24",
///     vpc_id=vpc.id)
/// sg = aws.ec2.SecurityGroup("sg", vpc_id=vpc.id)
/// kms = aws.kms.Key("kms", description="example")
/// test = aws.cloudwatch.LogGroup("test", name="msk_broker_logs")
/// bucket = aws.s3.Bucket("bucket", bucket="msk-broker-logs-bucket")
/// bucket_acl = aws.s3.BucketAcl("bucket_acl",
///     bucket=bucket.id,
///     acl="private")
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["firehose.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// firehose_role = aws.iam.Role("firehose_role",
///     name="firehose_test_role",
///     assume_role_policy=assume_role.json)
/// test_stream = aws.kinesis.FirehoseDeliveryStream("test_stream",
///     extended_s3_configuration={
///         "role_arn": firehose_role.arn,
///         "bucket_arn": bucket.arn,
///     },
///     name="kinesis-firehose-msk-broker-logs-stream",
///     destination="extended_s3",
///     tags={
///         "LogDeliveryEnabled": "placeholder",
///     },
///     opts = pulumi.ResourceOptions(ignore_changes=["tags[\"LogDeliveryEnabled\"]"]))
/// example = aws.msk.Cluster("example",
///     broker_node_group_info={
///         "storage_info": {
///             "ebs_storage_info": {
///                 "volume_size": 1000,
///             },
///         },
///         "instance_type": "kafka.m5.large",
///         "client_subnets": [
///             subnet_az1.id,
///             subnet_az2.id,
///             subnet_az3.id,
///         ],
///         "security_groups": [sg.id],
///     },
///     encryption_info={
///         "encryption_at_rest_kms_key_arn": kms.arn,
///     },
///     open_monitoring={
///         "prometheus": {
///             "jmx_exporter": {
///                 "enabled_in_broker": True,
///             },
///             "node_exporter": {
///                 "enabled_in_broker": True,
///             },
///         },
///     },
///     logging_info={
///         "broker_logs": {
///             "cloudwatch_logs": {
///                 "enabled": True,
///                 "log_group": test.name,
///             },
///             "firehose": {
///                 "enabled": True,
///                 "delivery_stream": test_stream.name,
///             },
///             "s3": {
///                 "enabled": True,
///                 "bucket": bucket.id,
///                 "prefix": "logs/msk-",
///             },
///         },
///     },
///     cluster_name="example",
///     kafka_version="3.8.x",
///     number_of_broker_nodes=3,
///     tags={
///         "foo": "bar",
///     })
/// pulumi.export("zookeeperConnectString", example.zookeeper_connect_string)
/// pulumi.export("bootstrapBrokersTls", example.bootstrap_brokers_tls)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpc = new Aws.Ec2.Vpc("vpc", new()
///     {
///         CidrBlock = "192.168.0.0/22",
///     });
///
///     var azs = Aws.GetAvailabilityZones.Invoke(new()
///     {
///         State = "available",
///     });
///
///     var subnetAz1 = new Aws.Ec2.Subnet("subnet_az1", new()
///     {
///         AvailabilityZone = azs.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[0]),
///         CidrBlock = "192.168.0.0/24",
///         VpcId = vpc.Id,
///     });
///
///     var subnetAz2 = new Aws.Ec2.Subnet("subnet_az2", new()
///     {
///         AvailabilityZone = azs.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[1]),
///         CidrBlock = "192.168.1.0/24",
///         VpcId = vpc.Id,
///     });
///
///     var subnetAz3 = new Aws.Ec2.Subnet("subnet_az3", new()
///     {
///         AvailabilityZone = azs.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[2]),
///         CidrBlock = "192.168.2.0/24",
///         VpcId = vpc.Id,
///     });
///
///     var sg = new Aws.Ec2.SecurityGroup("sg", new()
///     {
///         VpcId = vpc.Id,
///     });
///
///     var kms = new Aws.Kms.Key("kms", new()
///     {
///         Description = "example",
///     });
///
///     var test = new Aws.CloudWatch.LogGroup("test", new()
///     {
///         Name = "msk_broker_logs",
///     });
///
///     var bucket = new Aws.S3.Bucket("bucket", new()
///     {
///         BucketName = "msk-broker-logs-bucket",
///     });
///
///     var bucketAcl = new Aws.S3.BucketAcl("bucket_acl", new()
///     {
///         Bucket = bucket.Id,
///         Acl = "private",
///     });
///
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///                             "firehose.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var firehoseRole = new Aws.Iam.Role("firehose_role", new()
///     {
///         Name = "firehose_test_role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var testStream = new Aws.Kinesis.FirehoseDeliveryStream("test_stream", new()
///     {
///         ExtendedS3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs
///         {
///             RoleArn = firehoseRole.Arn,
///             BucketArn = bucket.Arn,
///         },
///         Name = "kinesis-firehose-msk-broker-logs-stream",
///         Destination = "extended_s3",
///         Tags =
///         {
///             { "LogDeliveryEnabled", "placeholder" },
///         },
///     }, new CustomResourceOptions
///     {
///         IgnoreChanges =
///         {
///             "tags[\"LogDeliveryEnabled\"]",
///         },
///     });
///
///     var example = new Aws.Msk.Cluster("example", new()
///     {
///         BrokerNodeGroupInfo = new Aws.Msk.Inputs.ClusterBrokerNodeGroupInfoArgs
///         {
///             StorageInfo = new Aws.Msk.Inputs.ClusterBrokerNodeGroupInfoStorageInfoArgs
///             {
///                 EbsStorageInfo = new Aws.Msk.Inputs.ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoArgs
///                 {
///                     VolumeSize = 1000,
///                 },
///             },
///             InstanceType = "kafka.m5.large",
///             ClientSubnets = new[]
///             {
///                 subnetAz1.Id,
///                 subnetAz2.Id,
///                 subnetAz3.Id,
///             },
///             SecurityGroups = new[]
///             {
///                 sg.Id,
///             },
///         },
///         EncryptionInfo = new Aws.Msk.Inputs.ClusterEncryptionInfoArgs
///         {
///             EncryptionAtRestKmsKeyArn = kms.Arn,
///         },
///         OpenMonitoring = new Aws.Msk.Inputs.ClusterOpenMonitoringArgs
///         {
///             Prometheus = new Aws.Msk.Inputs.ClusterOpenMonitoringPrometheusArgs
///             {
///                 JmxExporter = new Aws.Msk.Inputs.ClusterOpenMonitoringPrometheusJmxExporterArgs
///                 {
///                     EnabledInBroker = true,
///                 },
///                 NodeExporter = new Aws.Msk.Inputs.ClusterOpenMonitoringPrometheusNodeExporterArgs
///                 {
///                     EnabledInBroker = true,
///                 },
///             },
///         },
///         LoggingInfo = new Aws.Msk.Inputs.ClusterLoggingInfoArgs
///         {
///             BrokerLogs = new Aws.Msk.Inputs.ClusterLoggingInfoBrokerLogsArgs
///             {
///                 CloudwatchLogs = new Aws.Msk.Inputs.ClusterLoggingInfoBrokerLogsCloudwatchLogsArgs
///                 {
///                     Enabled = true,
///                     LogGroup = test.Name,
///                 },
///                 Firehose = new Aws.Msk.Inputs.ClusterLoggingInfoBrokerLogsFirehoseArgs
///                 {
///                     Enabled = true,
///                     DeliveryStream = testStream.Name,
///                 },
///                 S3 = new Aws.Msk.Inputs.ClusterLoggingInfoBrokerLogsS3Args
///                 {
///                     Enabled = true,
///                     Bucket = bucket.Id,
///                     Prefix = "logs/msk-",
///                 },
///             },
///         },
///         ClusterName = "example",
///         KafkaVersion = "3.8.x",
///         NumberOfBrokerNodes = 3,
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["zookeeperConnectString"] = example.ZookeeperConnectString,
///         ["bootstrapBrokersTls"] = example.BootstrapBrokersTls,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/msk"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		vpc, err := ec2.NewVpc(ctx, "vpc", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("192.168.0.0/22"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		azs, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// 			State: pulumi.StringRef("available"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetAz1, err := ec2.NewSubnet(ctx, "subnet_az1", &ec2.SubnetArgs{
/// 			AvailabilityZone: pulumi.String(azs.Names[0]),
/// 			CidrBlock:        pulumi.String("192.168.0.0/24"),
/// 			VpcId:            vpc.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetAz2, err := ec2.NewSubnet(ctx, "subnet_az2", &ec2.SubnetArgs{
/// 			AvailabilityZone: pulumi.String(azs.Names[1]),
/// 			CidrBlock:        pulumi.String("192.168.1.0/24"),
/// 			VpcId:            vpc.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetAz3, err := ec2.NewSubnet(ctx, "subnet_az3", &ec2.SubnetArgs{
/// 			AvailabilityZone: pulumi.String(azs.Names[2]),
/// 			CidrBlock:        pulumi.String("192.168.2.0/24"),
/// 			VpcId:            vpc.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sg, err := ec2.NewSecurityGroup(ctx, "sg", &ec2.SecurityGroupArgs{
/// 			VpcId: vpc.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		kms2, err := kms.NewKey(ctx, "kms", &kms.KeyArgs{
/// 			Description: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := cloudwatch.NewLogGroup(ctx, "test", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("msk_broker_logs"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := s3.NewBucket(ctx, "bucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("msk-broker-logs-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "bucket_acl", &s3.BucketAclArgs{
/// 			Bucket: bucket.ID().ToIDOutput().ToStringOutput(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"firehose.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		firehoseRole, err := iam.NewRole(ctx, "firehose_role", &iam.RoleArgs{
/// 			Name:             pulumi.String("firehose_test_role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testStream, err := kinesis.NewFirehoseDeliveryStream(ctx, "test_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// 			ExtendedS3Configuration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationArgs{
/// 				RoleArn:   firehoseRole.Arn,
/// 				BucketArn: bucket.Arn,
/// 			},
/// 			Name:        pulumi.String("kinesis-firehose-msk-broker-logs-stream"),
/// 			Destination: pulumi.String("extended_s3"),
/// 			Tags: pulumi.StringMap{
/// 				"LogDeliveryEnabled": pulumi.String("placeholder"),
/// 			},
/// 		}, pulumi.IgnoreChanges([]string{
/// 			"tags[\"LogDeliveryEnabled\"]",
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := msk.NewCluster(ctx, "example", &msk.ClusterArgs{
/// 			BrokerNodeGroupInfo: &msk.ClusterBrokerNodeGroupInfoArgs{
/// 				StorageInfo: &msk.ClusterBrokerNodeGroupInfoStorageInfoArgs{
/// 					EbsStorageInfo: &msk.ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoArgs{
/// 						VolumeSize: pulumi.Int(1000),
/// 					},
/// 				},
/// 				InstanceType: pulumi.String("kafka.m5.large"),
/// 				ClientSubnets: pulumi.StringArray{
/// 					subnetAz1.ID().ToIDOutput().ToStringOutput(),
/// 					subnetAz2.ID().ToIDOutput().ToStringOutput(),
/// 					subnetAz3.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 				SecurityGroups: pulumi.StringArray{
/// 					sg.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			EncryptionInfo: &msk.ClusterEncryptionInfoArgs{
/// 				EncryptionAtRestKmsKeyArn: kms2.Arn,
/// 			},
/// 			OpenMonitoring: &msk.ClusterOpenMonitoringArgs{
/// 				Prometheus: &msk.ClusterOpenMonitoringPrometheusArgs{
/// 					JmxExporter: &msk.ClusterOpenMonitoringPrometheusJmxExporterArgs{
/// 						EnabledInBroker: pulumi.Bool(true),
/// 					},
/// 					NodeExporter: &msk.ClusterOpenMonitoringPrometheusNodeExporterArgs{
/// 						EnabledInBroker: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			LoggingInfo: &msk.ClusterLoggingInfoArgs{
/// 				BrokerLogs: &msk.ClusterLoggingInfoBrokerLogsArgs{
/// 					CloudwatchLogs: &msk.ClusterLoggingInfoBrokerLogsCloudwatchLogsArgs{
/// 						Enabled:  pulumi.Bool(true),
/// 						LogGroup: test.Name,
/// 					},
/// 					Firehose: &msk.ClusterLoggingInfoBrokerLogsFirehoseArgs{
/// 						Enabled:        pulumi.Bool(true),
/// 						DeliveryStream: testStream.Name,
/// 					},
/// 					S3: &msk.ClusterLoggingInfoBrokerLogsS3Args{
/// 						Enabled: pulumi.Bool(true),
/// 						Bucket:  bucket.ID().ToIDOutput().ToStringOutput(),
/// 						Prefix:  pulumi.String("logs/msk-"),
/// 					},
/// 				},
/// 			},
/// 			ClusterName:         pulumi.String("example"),
/// 			KafkaVersion:        pulumi.String("3.8.x"),
/// 			NumberOfBrokerNodes: pulumi.Int(3),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("zookeeperConnectString", example.ZookeeperConnectString)
/// 		ctx.Export("bootstrapBrokersTls", example.BootstrapBrokersTls)
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
/// data "aws_getavailabilityzones" "azs" {
///   state = "available"
/// }
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["firehose.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
///
/// resource "aws_ec2_vpc" "vpc" {
///   cidr_block = "192.168.0.0/22"
/// }
/// resource "aws_ec2_subnet" "subnet_az1" {
///   availability_zone = data.aws_getavailabilityzones.azs.names[0]
///   cidr_block        = "192.168.0.0/24"
///   vpc_id            = aws_ec2_vpc.vpc.id
/// }
/// resource "aws_ec2_subnet" "subnet_az2" {
///   availability_zone = data.aws_getavailabilityzones.azs.names[1]
///   cidr_block        = "192.168.1.0/24"
///   vpc_id            = aws_ec2_vpc.vpc.id
/// }
/// resource "aws_ec2_subnet" "subnet_az3" {
///   availability_zone = data.aws_getavailabilityzones.azs.names[2]
///   cidr_block        = "192.168.2.0/24"
///   vpc_id            = aws_ec2_vpc.vpc.id
/// }
/// resource "aws_ec2_securitygroup" "sg" {
///   vpc_id = aws_ec2_vpc.vpc.id
/// }
/// resource "aws_kms_key" "kms" {
///   description = "example"
/// }
/// resource "aws_cloudwatch_loggroup" "test" {
///   name = "msk_broker_logs"
/// }
/// resource "aws_s3_bucket" "bucket" {
///   bucket = "msk-broker-logs-bucket"
/// }
/// resource "aws_s3_bucketacl" "bucket_acl" {
///   bucket = aws_s3_bucket.bucket.id
///   acl    = "private"
/// }
/// resource "aws_iam_role" "firehose_role" {
///   name               = "firehose_test_role"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_kinesis_firehosedeliverystream" "test_stream" {
///   lifecycle {
///     ignore_changes = [tags["LogDeliveryEnabled"]]
///   }
///   extended_s3_configuration = {
///     role_arn   = aws_iam_role.firehose_role.arn
///     bucket_arn = aws_s3_bucket.bucket.arn
///   }
///   name        = "kinesis-firehose-msk-broker-logs-stream"
///   destination = "extended_s3"
///   tags = {
///     "LogDeliveryEnabled" = "placeholder"
///   }
/// }
/// resource "aws_msk_cluster" "example" {
///   broker_node_group_info = {
///     storage_info = {
///       ebs_storage_info = {
///         volume_size = 1000
///       }
///     }
///     instance_type   = "kafka.m5.large"
///     client_subnets  = [aws_ec2_subnet.subnet_az1.id, aws_ec2_subnet.subnet_az2.id, aws_ec2_subnet.subnet_az3.id]
///     security_groups = [aws_ec2_securitygroup.sg.id]
///   }
///   encryption_info = {
///     encryption_at_rest_kms_key_arn = aws_kms_key.kms.arn
///   }
///   open_monitoring = {
///     prometheus = {
///       jmx_exporter = {
///         enabled_in_broker = true
///       }
///       node_exporter = {
///         enabled_in_broker = true
///       }
///     }
///   }
///   logging_info = {
///     broker_logs = {
///       cloudwatch_logs = {
///         enabled   = true
///         log_group = aws_cloudwatch_loggroup.test.name
///       }
///       firehose = {
///         enabled         = true
///         delivery_stream = aws_kinesis_firehosedeliverystream.test_stream.name
///       }
///       s3 = {
///         enabled = true
///         bucket  = aws_s3_bucket.bucket.id
///         prefix  = "logs/msk-"
///       }
///     }
///   }
///   cluster_name           = "example"
///   kafka_version          = "3.8.x"
///   number_of_broker_nodes = 3
///   tags = {
///     "foo" = "bar"
///   }
/// }
/// output "zookeeperConnectString" {
///   value = aws_msk_cluster.example.zookeeper_connect_string
/// }
/// output "bootstrapBrokersTls" {
///   value = aws_msk_cluster.example.bootstrap_brokers_tls
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs;
/// import com.pulumi.aws.msk.Cluster;
/// import com.pulumi.aws.msk.ClusterArgs;
/// import com.pulumi.aws.msk.inputs.ClusterBrokerNodeGroupInfoArgs;
/// import com.pulumi.aws.msk.inputs.ClusterBrokerNodeGroupInfoStorageInfoArgs;
/// import com.pulumi.aws.msk.inputs.ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoArgs;
/// import com.pulumi.aws.msk.inputs.ClusterEncryptionInfoArgs;
/// import com.pulumi.aws.msk.inputs.ClusterOpenMonitoringArgs;
/// import com.pulumi.aws.msk.inputs.ClusterOpenMonitoringPrometheusArgs;
/// import com.pulumi.aws.msk.inputs.ClusterOpenMonitoringPrometheusJmxExporterArgs;
/// import com.pulumi.aws.msk.inputs.ClusterOpenMonitoringPrometheusNodeExporterArgs;
/// import com.pulumi.aws.msk.inputs.ClusterLoggingInfoArgs;
/// import com.pulumi.aws.msk.inputs.ClusterLoggingInfoBrokerLogsArgs;
/// import com.pulumi.aws.msk.inputs.ClusterLoggingInfoBrokerLogsCloudwatchLogsArgs;
/// import com.pulumi.aws.msk.inputs.ClusterLoggingInfoBrokerLogsFirehoseArgs;
/// import com.pulumi.aws.msk.inputs.ClusterLoggingInfoBrokerLogsS3Args;
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
///         var vpc = new Vpc("vpc", VpcArgs.builder()
///             .cidrBlock("192.168.0.0/22")
///             .build());
///
///         final var azs = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .state("available")
///             .build());
///
///         var subnetAz1 = new Subnet("subnetAz1", SubnetArgs.builder()
///             .availabilityZone(azs.names()[0])
///             .cidrBlock("192.168.0.0/24")
///             .vpcId(vpc.id())
///             .build());
///
///         var subnetAz2 = new Subnet("subnetAz2", SubnetArgs.builder()
///             .availabilityZone(azs.names()[1])
///             .cidrBlock("192.168.1.0/24")
///             .vpcId(vpc.id())
///             .build());
///
///         var subnetAz3 = new Subnet("subnetAz3", SubnetArgs.builder()
///             .availabilityZone(azs.names()[2])
///             .cidrBlock("192.168.2.0/24")
///             .vpcId(vpc.id())
///             .build());
///
///         var sg = new SecurityGroup("sg", SecurityGroupArgs.builder()
///             .vpcId(vpc.id())
///             .build());
///
///         var kms = new Key("kms", KeyArgs.builder()
///             .description("example")
///             .build());
///
///         var test = new LogGroup("test", LogGroupArgs.builder()
///             .name("msk_broker_logs")
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .bucket("msk-broker-logs-bucket")
///             .build());
///
///         var bucketAcl = new BucketAcl("bucketAcl", BucketAclArgs.builder()
///             .bucket(bucket.id())
///             .acl("private")
///             .build());
///
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("firehose.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var firehoseRole = new Role("firehoseRole", RoleArgs.builder()
///             .name("firehose_test_role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var testStream = new FirehoseDeliveryStream("testStream", FirehoseDeliveryStreamArgs.builder()
///             .extendedS3Configuration(FirehoseDeliveryStreamExtendedS3ConfigurationArgs.builder()
///                 .roleArn(firehoseRole.arn())
///                 .bucketArn(bucket.arn())
///                 .build())
///             .name("kinesis-firehose-msk-broker-logs-stream")
///             .destination("extended_s3")
///             .tags(Map.of("LogDeliveryEnabled", "placeholder"))
///             .build(), CustomResourceOptions.builder()
///                 .ignoreChanges("tags[\"LogDeliveryEnabled\"]")
///                 .build());
///
///         var example = new Cluster("example", ClusterArgs.builder()
///             .brokerNodeGroupInfo(ClusterBrokerNodeGroupInfoArgs.builder()
///                 .storageInfo(ClusterBrokerNodeGroupInfoStorageInfoArgs.builder()
///                     .ebsStorageInfo(ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoArgs.builder()
///                         .volumeSize(1000)
///                         .build())
///                     .build())
///                 .instanceType("kafka.m5.large")
///                 .clientSubnets(
///                     subnetAz1.id(),
///                     subnetAz2.id(),
///                     subnetAz3.id())
///                 .securityGroups(sg.id())
///                 .build())
///             .encryptionInfo(ClusterEncryptionInfoArgs.builder()
///                 .encryptionAtRestKmsKeyArn(kms.arn())
///                 .build())
///             .openMonitoring(ClusterOpenMonitoringArgs.builder()
///                 .prometheus(ClusterOpenMonitoringPrometheusArgs.builder()
///                     .jmxExporter(ClusterOpenMonitoringPrometheusJmxExporterArgs.builder()
///                         .enabledInBroker(true)
///                         .build())
///                     .nodeExporter(ClusterOpenMonitoringPrometheusNodeExporterArgs.builder()
///                         .enabledInBroker(true)
///                         .build())
///                     .build())
///                 .build())
///             .loggingInfo(ClusterLoggingInfoArgs.builder()
///                 .brokerLogs(ClusterLoggingInfoBrokerLogsArgs.builder()
///                     .cloudwatchLogs(ClusterLoggingInfoBrokerLogsCloudwatchLogsArgs.builder()
///                         .enabled(true)
///                         .logGroup(test.name())
///                         .build())
///                     .firehose(ClusterLoggingInfoBrokerLogsFirehoseArgs.builder()
///                         .enabled(true)
///                         .deliveryStream(testStream.name())
///                         .build())
///                     .s3(ClusterLoggingInfoBrokerLogsS3Args.builder()
///                         .enabled(true)
///                         .bucket(bucket.id())
///                         .prefix("logs/msk-")
///                         .build())
///                     .build())
///                 .build())
///             .clusterName("example")
///             .kafkaVersion("3.8.x")
///             .numberOfBrokerNodes(3)
///             .tags(Map.of("foo", "bar"))
///             .build());
///
///         ctx.export("zookeeperConnectString", example.zookeeperConnectString());
///         ctx.export("bootstrapBrokersTls", example.bootstrapBrokersTls());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpc:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 192.168.0.0/22
///   subnetAz1:
///     type: aws:ec2:Subnet
///     name: subnet_az1
///     properties:
///       availabilityZone: ${azs.names[0]}
///       cidrBlock: 192.168.0.0/24
///       vpcId: ${vpc.id}
///   subnetAz2:
///     type: aws:ec2:Subnet
///     name: subnet_az2
///     properties:
///       availabilityZone: ${azs.names[1]}
///       cidrBlock: 192.168.1.0/24
///       vpcId: ${vpc.id}
///   subnetAz3:
///     type: aws:ec2:Subnet
///     name: subnet_az3
///     properties:
///       availabilityZone: ${azs.names[2]}
///       cidrBlock: 192.168.2.0/24
///       vpcId: ${vpc.id}
///   sg:
///     type: aws:ec2:SecurityGroup
///     properties:
///       vpcId: ${vpc.id}
///   kms:
///     type: aws:kms:Key
///     properties:
///       description: example
///   test:
///     type: aws:cloudwatch:LogGroup
///     properties:
///       name: msk_broker_logs
///   bucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: msk-broker-logs-bucket
///   bucketAcl:
///     type: aws:s3:BucketAcl
///     name: bucket_acl
///     properties:
///       bucket: ${bucket.id}
///       acl: private
///   firehoseRole:
///     type: aws:iam:Role
///     name: firehose_role
///     properties:
///       name: firehose_test_role
///       assumeRolePolicy: ${assumeRole.json}
///   testStream:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: test_stream
///     properties:
///       extendedS3Configuration:
///         roleArn: ${firehoseRole.arn}
///         bucketArn: ${bucket.arn}
///       name: kinesis-firehose-msk-broker-logs-stream
///       destination: extended_s3
///       tags:
///         LogDeliveryEnabled: placeholder
///     options:
///       ignoreChanges:
///         - tags.LogDeliveryEnabled
///   example:
///     type: aws:msk:Cluster
///     properties:
///       brokerNodeGroupInfo:
///         storageInfo:
///           ebsStorageInfo:
///             volumeSize: 1000
///         instanceType: kafka.m5.large
///         clientSubnets:
///           - ${subnetAz1.id}
///           - ${subnetAz2.id}
///           - ${subnetAz3.id}
///         securityGroups:
///           - ${sg.id}
///       encryptionInfo:
///         encryptionAtRestKmsKeyArn: ${kms.arn}
///       openMonitoring:
///         prometheus:
///           jmxExporter:
///             enabledInBroker: true
///           nodeExporter:
///             enabledInBroker: true
///       loggingInfo:
///         brokerLogs:
///           cloudwatchLogs:
///             enabled: true
///             logGroup: ${test.name}
///           firehose:
///             enabled: true
///             deliveryStream: ${testStream.name}
///           s3:
///             enabled: true
///             bucket: ${bucket.id}
///             prefix: logs/msk-
///       clusterName: example
///       kafkaVersion: 3.8.x
///       numberOfBrokerNodes: 3
///       tags:
///         foo: bar
/// variables:
///   azs:
///     fn::invoke:
///       function: aws:getAvailabilityZones
///       arguments:
///         state: available
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - firehose.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
/// outputs:
///   zookeeperConnectString: ${example.zookeeperConnectString}
///   bootstrapBrokersTls: ${example.bootstrapBrokersTls}
/// ```
///
///
/// ### With volumeThroughput argument
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.msk.Cluster("example", {
///     brokerNodeGroupInfo: {
///         storageInfo: {
///             ebsStorageInfo: {
///                 provisionedThroughput: {
///                     enabled: true,
///                     volumeThroughput: 250,
///                 },
///                 volumeSize: 1000,
///             },
///         },
///         instanceType: "kafka.m5.4xlarge",
///         clientSubnets: [
///             subnetAz1.id,
///             subnetAz2.id,
///             subnetAz3.id,
///         ],
///         securityGroups: [sg.id],
///     },
///     clusterName: "example",
///     kafkaVersion: "3.8.x",
///     numberOfBrokerNodes: 3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.msk.Cluster("example",
///     broker_node_group_info={
///         "storage_info": {
///             "ebs_storage_info": {
///                 "provisioned_throughput": {
///                     "enabled": True,
///                     "volume_throughput": 250,
///                 },
///                 "volume_size": 1000,
///             },
///         },
///         "instance_type": "kafka.m5.4xlarge",
///         "client_subnets": [
///             subnet_az1["id"],
///             subnet_az2["id"],
///             subnet_az3["id"],
///         ],
///         "security_groups": [sg["id"]],
///     },
///     cluster_name="example",
///     kafka_version="3.8.x",
///     number_of_broker_nodes=3)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Msk.Cluster("example", new()
///     {
///         BrokerNodeGroupInfo = new Aws.Msk.Inputs.ClusterBrokerNodeGroupInfoArgs
///         {
///             StorageInfo = new Aws.Msk.Inputs.ClusterBrokerNodeGroupInfoStorageInfoArgs
///             {
///                 EbsStorageInfo = new Aws.Msk.Inputs.ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoArgs
///                 {
///                     ProvisionedThroughput = new Aws.Msk.Inputs.ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughputArgs
///                     {
///                         Enabled = true,
///                         VolumeThroughput = 250,
///                     },
///                     VolumeSize = 1000,
///                 },
///             },
///             InstanceType = "kafka.m5.4xlarge",
///             ClientSubnets = new[]
///             {
///                 subnetAz1.Id,
///                 subnetAz2.Id,
///                 subnetAz3.Id,
///             },
///             SecurityGroups = new[]
///             {
///                 sg.Id,
///             },
///         },
///         ClusterName = "example",
///         KafkaVersion = "3.8.x",
///         NumberOfBrokerNodes = 3,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/msk"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := msk.NewCluster(ctx, "example", &msk.ClusterArgs{
/// 			BrokerNodeGroupInfo: &msk.ClusterBrokerNodeGroupInfoArgs{
/// 				StorageInfo: &msk.ClusterBrokerNodeGroupInfoStorageInfoArgs{
/// 					EbsStorageInfo: &msk.ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoArgs{
/// 						ProvisionedThroughput: &msk.ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughputArgs{
/// 							Enabled:          pulumi.Bool(true),
/// 							VolumeThroughput: pulumi.Int(250),
/// 						},
/// 						VolumeSize: pulumi.Int(1000),
/// 					},
/// 				},
/// 				InstanceType: pulumi.String("kafka.m5.4xlarge"),
/// 				ClientSubnets: pulumi.StringArray{
/// 					subnetAz1.Id,
/// 					subnetAz2.Id,
/// 					subnetAz3.Id,
/// 				},
/// 				SecurityGroups: pulumi.StringArray{
/// 					sg.Id,
/// 				},
/// 			},
/// 			ClusterName:         pulumi.String("example"),
/// 			KafkaVersion:        pulumi.String("3.8.x"),
/// 			NumberOfBrokerNodes: pulumi.Int(3),
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
/// resource "aws_msk_cluster" "example" {
///   broker_node_group_info = {
///     storage_info = {
///       ebs_storage_info = {
///         provisioned_throughput = {
///           enabled           = true
///           volume_throughput = 250
///         }
///         volume_size = 1000
///       }
///     }
///     instance_type   = "kafka.m5.4xlarge"
///     client_subnets  = [subnetAz1.id, subnetAz2.id, subnetAz3.id]
///     security_groups = [sg.id]
///   }
///   cluster_name           = "example"
///   kafka_version          = "3.8.x"
///   number_of_broker_nodes = 3
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.msk.Cluster;
/// import com.pulumi.aws.msk.ClusterArgs;
/// import com.pulumi.aws.msk.inputs.ClusterBrokerNodeGroupInfoArgs;
/// import com.pulumi.aws.msk.inputs.ClusterBrokerNodeGroupInfoStorageInfoArgs;
/// import com.pulumi.aws.msk.inputs.ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoArgs;
/// import com.pulumi.aws.msk.inputs.ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughputArgs;
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
///         var example = new Cluster("example", ClusterArgs.builder()
///             .brokerNodeGroupInfo(ClusterBrokerNodeGroupInfoArgs.builder()
///                 .storageInfo(ClusterBrokerNodeGroupInfoStorageInfoArgs.builder()
///                     .ebsStorageInfo(ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoArgs.builder()
///                         .provisionedThroughput(ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughputArgs.builder()
///                             .enabled(true)
///                             .volumeThroughput(250)
///                             .build())
///                         .volumeSize(1000)
///                         .build())
///                     .build())
///                 .instanceType("kafka.m5.4xlarge")
///                 .clientSubnets(
///                     subnetAz1.id(),
///                     subnetAz2.id(),
///                     subnetAz3.id())
///                 .securityGroups(sg.id())
///                 .build())
///             .clusterName("example")
///             .kafkaVersion("3.8.x")
///             .numberOfBrokerNodes(3)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:msk:Cluster
///     properties:
///       brokerNodeGroupInfo:
///         storageInfo:
///           ebsStorageInfo:
///             provisionedThroughput:
///               enabled: true
///               volumeThroughput: 250
///             volumeSize: 1000
///         instanceType: kafka.m5.4xlarge
///         clientSubnets:
///           - ${subnetAz1.id}
///           - ${subnetAz2.id}
///           - ${subnetAz3.id}
///         securityGroups:
///           - ${sg.id}
///       clusterName: example
///       kafkaVersion: 3.8.x
///       numberOfBrokerNodes: 3
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the MSK cluster.
///
///
/// Using `pulumi import`, import MSK cluster using the cluster ARN. For example:
///
/// ```sh
/// $ pulumi import aws:msk/cluster:Cluster example arn:aws:kafka:us-west-2:123456789012:cluster/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3
/// ```
class Cluster extends pulumi.CustomResource {
  /// ARN of the MSK cluster.
  late final pulumi.Output<String> arn;
  /// Comma separated list of one or more hostname:port pairs of kafka brokers suitable to bootstrap connectivity to the kafka cluster. Contains a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `PLAINTEXT` or `TLS_PLAINTEXT`. The resource sorts values alphabetically. AWS may not always return all endpoints so this value is not guaranteed to be stable across applies.
  late final pulumi.Output<String> bootstrapBrokers;
  /// One or more IPv6 DNS names (or IP addresses) and plaintext port pairs. For example, `2001:db8:1234:1a00:*:80,2001:db8:1234:1a02:*:80,2001:db8:1234:1a04:*:80`. This attribute will have a value if the cluster is configured with `broker_node_group_info.0.connectivity_info.0.network_type` set to `DUAL` and `encryption_info.0.encryption_in_transit.0.client_broker` is set to `PLAINTEXT` or `TLS_PLAINTEXT`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersIpv6;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersPublicSaslIam;
  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersPublicSaslScram;
  /// One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersPublicTls;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersSaslIam;
  /// One or more IPv6 DNS names (or IP addresses) and SASL IAM port pairs. This attribute will have a value if the cluster is configured with `broker_node_group_info.0.connectivity_info.0.network_type` set to `DUAL` and `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersSaslIamIpv6;
  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersSaslScram;
  /// One or more IPv6 DNS names (or IP addresses) and SASL SCRAM port pairs. This attribute will have a value if the cluster is configured with `broker_node_group_info.0.connectivity_info.0.network_type` set to `DUAL` and `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersSaslScramIpv6;
  /// One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersTls;
  /// One or more IPv6 DNS names (or IP addresses) and TLS port pairs. This attribute will have a value if the cluster is configured with `broker_node_group_info.0.connectivity_info.0.network_type` set to `DUAL` and `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersTlsIpv6;
  /// A string containing one or more DNS names (or IP addresses) and SASL IAM port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersVpcConnectivitySaslIam;
  /// A string containing one or more DNS names (or IP addresses) and SASL SCRAM port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersVpcConnectivitySaslScram;
  /// A string containing one or more DNS names (or IP addresses) and TLS port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersVpcConnectivityTls;
  /// Configuration block for the broker nodes of the Kafka cluster. See brokerNodeGroupInfo Argument Reference below.
  late final pulumi.Output<ClusterBrokerNodeGroupInfo> brokerNodeGroupInfo;
  /// Configuration block for specifying a client authentication. See clientAuthentication Argument Reference below.
  late final pulumi.Output<ClusterClientAuthentication?> clientAuthentication;
  /// Name of the MSK cluster.
  late final pulumi.Output<String> clusterName;
  /// UUID of the MSK cluster, for use in IAM policies.
  late final pulumi.Output<String> clusterUuid;
  /// Configuration block for specifying an MSK Configuration to attach to Kafka brokers. See configurationInfo Argument Reference below.
  late final pulumi.Output<ClusterConfigurationInfo?> configurationInfo;
  /// Current version of the MSK Cluster used for updates, e.g., `K13V1IB3VIYZZH`
  late final pulumi.Output<String> currentVersion;
  /// Status indicating whether Amazon MSK requires customer action for the cluster. Valid values are `NONE`, `ACTION_RECOMMENDED`, and `CRITICAL_ACTION_REQUIRED`.
  late final pulumi.Output<String> customerActionStatus;
  /// Configuration block for specifying encryption. See encryptionInfo Argument Reference below.
  late final pulumi.Output<ClusterEncryptionInfo?> encryptionInfo;
  /// Specify the desired enhanced MSK CloudWatch monitoring level. See [Monitoring Amazon MSK with Amazon CloudWatch](https://docs.aws.amazon.com/msk/latest/developerguide/monitoring.html)
  late final pulumi.Output<String?> enhancedMonitoring;
  /// Specify the desired Kafka software version.
  late final pulumi.Output<String> kafkaVersion;
  /// Configuration block for streaming broker logs to Cloudwatch/S3/Kinesis Firehose. See loggingInfo Argument Reference below.
  late final pulumi.Output<ClusterLoggingInfo?> loggingInfo;
  /// The desired total number of broker nodes in the kafka cluster.  It must be a multiple of the number of specified client subnets.
  late final pulumi.Output<int> numberOfBrokerNodes;
  /// Configuration block for JMX and Node monitoring for the MSK cluster. See openMonitoring Argument Reference below.
  late final pulumi.Output<ClusterOpenMonitoring?> openMonitoring;
  /// Configuration block for intelligent rebalancing. See rebalancing Argument Reference below. Only applicable to MSK Provisioned clusters with Express brokers.
  late final pulumi.Output<ClusterRebalancing> rebalancing;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Controls storage mode for supported storage tiers. Valid values are: `LOCAL` or `TIERED`.
  late final pulumi.Output<String> storageMode;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  late final pulumi.Output<String> zookeeperConnectString;
  /// A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster via TLS. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  late final pulumi.Output<String> zookeeperConnectStringTls;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_msk_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:msk/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    bootstrapBrokers = registerOutput<String>('bootstrapBrokers');
    bootstrapBrokersIpv6 = registerOutput<String>('bootstrapBrokersIpv6');
    bootstrapBrokersPublicSaslIam = registerOutput<String>('bootstrapBrokersPublicSaslIam');
    bootstrapBrokersPublicSaslScram = registerOutput<String>('bootstrapBrokersPublicSaslScram');
    bootstrapBrokersPublicTls = registerOutput<String>('bootstrapBrokersPublicTls');
    bootstrapBrokersSaslIam = registerOutput<String>('bootstrapBrokersSaslIam');
    bootstrapBrokersSaslIamIpv6 = registerOutput<String>('bootstrapBrokersSaslIamIpv6');
    bootstrapBrokersSaslScram = registerOutput<String>('bootstrapBrokersSaslScram');
    bootstrapBrokersSaslScramIpv6 = registerOutput<String>('bootstrapBrokersSaslScramIpv6');
    bootstrapBrokersTls = registerOutput<String>('bootstrapBrokersTls');
    bootstrapBrokersTlsIpv6 = registerOutput<String>('bootstrapBrokersTlsIpv6');
    bootstrapBrokersVpcConnectivitySaslIam = registerOutput<String>('bootstrapBrokersVpcConnectivitySaslIam');
    bootstrapBrokersVpcConnectivitySaslScram = registerOutput<String>('bootstrapBrokersVpcConnectivitySaslScram');
    bootstrapBrokersVpcConnectivityTls = registerOutput<String>('bootstrapBrokersVpcConnectivityTls');
    brokerNodeGroupInfo = registerOutput<ClusterBrokerNodeGroupInfo>('brokerNodeGroupInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterBrokerNodeGroupInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientAuthentication = registerOutput<ClusterClientAuthentication?>('clientAuthentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterClientAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterName = registerOutput<String>('clusterName');
    clusterUuid = registerOutput<String>('clusterUuid');
    configurationInfo = registerOutput<ClusterConfigurationInfo?>('configurationInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterConfigurationInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    currentVersion = registerOutput<String>('currentVersion');
    customerActionStatus = registerOutput<String>('customerActionStatus');
    encryptionInfo = registerOutput<ClusterEncryptionInfo?>('encryptionInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterEncryptionInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enhancedMonitoring = registerOutput<String?>('enhancedMonitoring');
    kafkaVersion = registerOutput<String>('kafkaVersion');
    loggingInfo = registerOutput<ClusterLoggingInfo?>('loggingInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterLoggingInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    numberOfBrokerNodes = registerOutput<int>('numberOfBrokerNodes');
    openMonitoring = registerOutput<ClusterOpenMonitoring?>('openMonitoring', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterOpenMonitoring.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rebalancing = registerOutput<ClusterRebalancing>('rebalancing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterRebalancing.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    storageMode = registerOutput<String>('storageMode');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    zookeeperConnectString = registerOutput<String>('zookeeperConnectString');
    zookeeperConnectStringTls = registerOutput<String>('zookeeperConnectStringTls');
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:msk/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    bootstrapBrokers = registerOutput<String>('bootstrapBrokers');
    bootstrapBrokersIpv6 = registerOutput<String>('bootstrapBrokersIpv6');
    bootstrapBrokersPublicSaslIam = registerOutput<String>('bootstrapBrokersPublicSaslIam');
    bootstrapBrokersPublicSaslScram = registerOutput<String>('bootstrapBrokersPublicSaslScram');
    bootstrapBrokersPublicTls = registerOutput<String>('bootstrapBrokersPublicTls');
    bootstrapBrokersSaslIam = registerOutput<String>('bootstrapBrokersSaslIam');
    bootstrapBrokersSaslIamIpv6 = registerOutput<String>('bootstrapBrokersSaslIamIpv6');
    bootstrapBrokersSaslScram = registerOutput<String>('bootstrapBrokersSaslScram');
    bootstrapBrokersSaslScramIpv6 = registerOutput<String>('bootstrapBrokersSaslScramIpv6');
    bootstrapBrokersTls = registerOutput<String>('bootstrapBrokersTls');
    bootstrapBrokersTlsIpv6 = registerOutput<String>('bootstrapBrokersTlsIpv6');
    bootstrapBrokersVpcConnectivitySaslIam = registerOutput<String>('bootstrapBrokersVpcConnectivitySaslIam');
    bootstrapBrokersVpcConnectivitySaslScram = registerOutput<String>('bootstrapBrokersVpcConnectivitySaslScram');
    bootstrapBrokersVpcConnectivityTls = registerOutput<String>('bootstrapBrokersVpcConnectivityTls');
    brokerNodeGroupInfo = registerOutput<ClusterBrokerNodeGroupInfo>('brokerNodeGroupInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterBrokerNodeGroupInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientAuthentication = registerOutput<ClusterClientAuthentication?>('clientAuthentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterClientAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterName = registerOutput<String>('clusterName');
    clusterUuid = registerOutput<String>('clusterUuid');
    configurationInfo = registerOutput<ClusterConfigurationInfo?>('configurationInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterConfigurationInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    currentVersion = registerOutput<String>('currentVersion');
    customerActionStatus = registerOutput<String>('customerActionStatus');
    encryptionInfo = registerOutput<ClusterEncryptionInfo?>('encryptionInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterEncryptionInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enhancedMonitoring = registerOutput<String?>('enhancedMonitoring');
    kafkaVersion = registerOutput<String>('kafkaVersion');
    loggingInfo = registerOutput<ClusterLoggingInfo?>('loggingInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterLoggingInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    numberOfBrokerNodes = registerOutput<int>('numberOfBrokerNodes');
    openMonitoring = registerOutput<ClusterOpenMonitoring?>('openMonitoring', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterOpenMonitoring.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rebalancing = registerOutput<ClusterRebalancing>('rebalancing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterRebalancing.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    storageMode = registerOutput<String>('storageMode');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    zookeeperConnectString = registerOutput<String>('zookeeperConnectString');
    zookeeperConnectStringTls = registerOutput<String>('zookeeperConnectStringTls');
  }

  /// Creates a typed reference to an existing [Cluster] resource.
  Cluster.reference(String urn)
    : super(
        'aws:msk/cluster:Cluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    bootstrapBrokers = registerOutput<String>('bootstrapBrokers');
    bootstrapBrokersIpv6 = registerOutput<String>('bootstrapBrokersIpv6');
    bootstrapBrokersPublicSaslIam = registerOutput<String>('bootstrapBrokersPublicSaslIam');
    bootstrapBrokersPublicSaslScram = registerOutput<String>('bootstrapBrokersPublicSaslScram');
    bootstrapBrokersPublicTls = registerOutput<String>('bootstrapBrokersPublicTls');
    bootstrapBrokersSaslIam = registerOutput<String>('bootstrapBrokersSaslIam');
    bootstrapBrokersSaslIamIpv6 = registerOutput<String>('bootstrapBrokersSaslIamIpv6');
    bootstrapBrokersSaslScram = registerOutput<String>('bootstrapBrokersSaslScram');
    bootstrapBrokersSaslScramIpv6 = registerOutput<String>('bootstrapBrokersSaslScramIpv6');
    bootstrapBrokersTls = registerOutput<String>('bootstrapBrokersTls');
    bootstrapBrokersTlsIpv6 = registerOutput<String>('bootstrapBrokersTlsIpv6');
    bootstrapBrokersVpcConnectivitySaslIam = registerOutput<String>('bootstrapBrokersVpcConnectivitySaslIam');
    bootstrapBrokersVpcConnectivitySaslScram = registerOutput<String>('bootstrapBrokersVpcConnectivitySaslScram');
    bootstrapBrokersVpcConnectivityTls = registerOutput<String>('bootstrapBrokersVpcConnectivityTls');
    brokerNodeGroupInfo = registerOutput<ClusterBrokerNodeGroupInfo>('brokerNodeGroupInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterBrokerNodeGroupInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientAuthentication = registerOutput<ClusterClientAuthentication?>('clientAuthentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterClientAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterName = registerOutput<String>('clusterName');
    clusterUuid = registerOutput<String>('clusterUuid');
    configurationInfo = registerOutput<ClusterConfigurationInfo?>('configurationInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterConfigurationInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    currentVersion = registerOutput<String>('currentVersion');
    customerActionStatus = registerOutput<String>('customerActionStatus');
    encryptionInfo = registerOutput<ClusterEncryptionInfo?>('encryptionInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterEncryptionInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enhancedMonitoring = registerOutput<String?>('enhancedMonitoring');
    kafkaVersion = registerOutput<String>('kafkaVersion');
    loggingInfo = registerOutput<ClusterLoggingInfo?>('loggingInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterLoggingInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    numberOfBrokerNodes = registerOutput<int>('numberOfBrokerNodes');
    openMonitoring = registerOutput<ClusterOpenMonitoring?>('openMonitoring', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterOpenMonitoring.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rebalancing = registerOutput<ClusterRebalancing>('rebalancing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterRebalancing.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    storageMode = registerOutput<String>('storageMode');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    zookeeperConnectString = registerOutput<String>('zookeeperConnectString');
    zookeeperConnectStringTls = registerOutput<String>('zookeeperConnectStringTls');
  }
}
