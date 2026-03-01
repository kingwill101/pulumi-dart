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
/// > **Note:** This resource manages _provisioned_ clusters. To manage a _serverless_ Amazon MSK cluster, use the `aws.msk.ServerlessCluster` resource.
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
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["firehose.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const firehoseRole = new aws.iam.Role("firehose_role", {
///     name: "firehose_test_role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const testStream = new aws.kinesis.FirehoseDeliveryStream("test_stream", {
///     name: "kinesis-firehose-msk-broker-logs-stream",
///     destination: "extended_s3",
///     extendedS3Configuration: {
///         roleArn: firehoseRole.arn,
///         bucketArn: bucket.arn,
///     },
///     tags: {
///         LogDeliveryEnabled: "placeholder",
///     },
/// });
/// const example = new aws.msk.Cluster("example", {
///     clusterName: "example",
///     kafkaVersion: "3.8.x",
///     numberOfBrokerNodes: 3,
///     brokerNodeGroupInfo: {
///         instanceType: "kafka.m5.large",
///         clientSubnets: [
///             subnetAz1.id,
///             subnetAz2.id,
///             subnetAz3.id,
///         ],
///         storageInfo: {
///             ebsStorageInfo: {
///                 volumeSize: 1000,
///             },
///         },
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
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["firehose.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// firehose_role = aws.iam.Role("firehose_role",
///     name="firehose_test_role",
///     assume_role_policy=assume_role.json)
/// test_stream = aws.kinesis.FirehoseDeliveryStream("test_stream",
///     name="kinesis-firehose-msk-broker-logs-stream",
///     destination="extended_s3",
///     extended_s3_configuration={
///         "role_arn": firehose_role.arn,
///         "bucket_arn": bucket.arn,
///     },
///     tags={
///         "LogDeliveryEnabled": "placeholder",
///     })
/// example = aws.msk.Cluster("example",
///     cluster_name="example",
///     kafka_version="3.8.x",
///     number_of_broker_nodes=3,
///     broker_node_group_info={
///         "instance_type": "kafka.m5.large",
///         "client_subnets": [
///             subnet_az1.id,
///             subnet_az2.id,
///             subnet_az3.id,
///         ],
///         "storage_info": {
///             "ebs_storage_info": {
///                 "volume_size": 1000,
///             },
///         },
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
///                 Effect = "Allow",
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
///         Name = "kinesis-firehose-msk-broker-logs-stream",
///         Destination = "extended_s3",
///         ExtendedS3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs
///         {
///             RoleArn = firehoseRole.Arn,
///             BucketArn = bucket.Arn,
///         },
///         Tags =
///         {
///             { "LogDeliveryEnabled", "placeholder" },
///         },
///     });
///
///     var example = new Aws.Msk.Cluster("example", new()
///     {
///         ClusterName = "example",
///         KafkaVersion = "3.8.x",
///         NumberOfBrokerNodes = 3,
///         BrokerNodeGroupInfo = new Aws.Msk.Inputs.ClusterBrokerNodeGroupInfoArgs
///         {
///             InstanceType = "kafka.m5.large",
///             ClientSubnets = new[]
///             {
///                 subnetAz1.Id,
///                 subnetAz2.Id,
///                 subnetAz3.Id,
///             },
///             StorageInfo = new Aws.Msk.Inputs.ClusterBrokerNodeGroupInfoStorageInfoArgs
///             {
///                 EbsStorageInfo = new Aws.Msk.Inputs.ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoArgs
///                 {
///                     VolumeSize = 1000,
///                 },
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
/// 			VpcId:            vpc.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetAz2, err := ec2.NewSubnet(ctx, "subnet_az2", &ec2.SubnetArgs{
/// 			AvailabilityZone: pulumi.String(azs.Names[1]),
/// 			CidrBlock:        pulumi.String("192.168.1.0/24"),
/// 			VpcId:            vpc.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetAz3, err := ec2.NewSubnet(ctx, "subnet_az3", &ec2.SubnetArgs{
/// 			AvailabilityZone: pulumi.String(azs.Names[2]),
/// 			CidrBlock:        pulumi.String("192.168.2.0/24"),
/// 			VpcId:            vpc.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sg, err := ec2.NewSecurityGroup(ctx, "sg", &ec2.SecurityGroupArgs{
/// 			VpcId: vpc.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		kms, err := kms.NewKey(ctx, "kms", &kms.KeyArgs{
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
/// 			Bucket: bucket.ID(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"firehose.amazonaws.com",
/// 							},
/// 						},
/// 					},
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
/// 			Name:        pulumi.String("kinesis-firehose-msk-broker-logs-stream"),
/// 			Destination: pulumi.String("extended_s3"),
/// 			ExtendedS3Configuration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationArgs{
/// 				RoleArn:   firehoseRole.Arn,
/// 				BucketArn: bucket.Arn,
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"LogDeliveryEnabled": pulumi.String("placeholder"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := msk.NewCluster(ctx, "example", &msk.ClusterArgs{
/// 			ClusterName:         pulumi.String("example"),
/// 			KafkaVersion:        pulumi.String("3.8.x"),
/// 			NumberOfBrokerNodes: pulumi.Int(3),
/// 			BrokerNodeGroupInfo: &msk.ClusterBrokerNodeGroupInfoArgs{
/// 				InstanceType: pulumi.String("kafka.m5.large"),
/// 				ClientSubnets: pulumi.StringArray{
/// 					subnetAz1.ID(),
/// 					subnetAz2.ID(),
/// 					subnetAz3.ID(),
/// 				},
/// 				StorageInfo: &msk.ClusterBrokerNodeGroupInfoStorageInfoArgs{
/// 					EbsStorageInfo: &msk.ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoArgs{
/// 						VolumeSize: pulumi.Int(1000),
/// 					},
/// 				},
/// 				SecurityGroups: pulumi.StringArray{
/// 					sg.ID(),
/// 				},
/// 			},
/// 			EncryptionInfo: &msk.ClusterEncryptionInfoArgs{
/// 				EncryptionAtRestKmsKeyArn: kms.Arn,
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
/// 						Bucket:  bucket.ID(),
/// 						Prefix:  pulumi.String("logs/msk-"),
/// 					},
/// 				},
/// 			},
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
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("firehose.amazonaws.com")
///                     .build())
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
///             .name("kinesis-firehose-msk-broker-logs-stream")
///             .destination("extended_s3")
///             .extendedS3Configuration(FirehoseDeliveryStreamExtendedS3ConfigurationArgs.builder()
///                 .roleArn(firehoseRole.arn())
///                 .bucketArn(bucket.arn())
///                 .build())
///             .tags(Map.of("LogDeliveryEnabled", "placeholder"))
///             .build());
///
///         var example = new Cluster("example", ClusterArgs.builder()
///             .clusterName("example")
///             .kafkaVersion("3.8.x")
///             .numberOfBrokerNodes(3)
///             .brokerNodeGroupInfo(ClusterBrokerNodeGroupInfoArgs.builder()
///                 .instanceType("kafka.m5.large")
///                 .clientSubnets(
///                     subnetAz1.id(),
///                     subnetAz2.id(),
///                     subnetAz3.id())
///                 .storageInfo(ClusterBrokerNodeGroupInfoStorageInfoArgs.builder()
///                     .ebsStorageInfo(ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoArgs.builder()
///                         .volumeSize(1000)
///                         .build())
///                     .build())
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
///       name: kinesis-firehose-msk-broker-logs-stream
///       destination: extended_s3
///       extendedS3Configuration:
///         roleArn: ${firehoseRole.arn}
///         bucketArn: ${bucket.arn}
///       tags:
///         LogDeliveryEnabled: placeholder
///   example:
///     type: aws:msk:Cluster
///     properties:
///       clusterName: example
///       kafkaVersion: 3.8.x
///       numberOfBrokerNodes: 3
///       brokerNodeGroupInfo:
///         instanceType: kafka.m5.large
///         clientSubnets:
///           - ${subnetAz1.id}
///           - ${subnetAz2.id}
///           - ${subnetAz3.id}
///         storageInfo:
///           ebsStorageInfo:
///             volumeSize: 1000
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
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - firehose.amazonaws.com
///             actions:
///               - sts:AssumeRole
/// outputs:
///   zookeeperConnectString: ${example.zookeeperConnectString}
///   bootstrapBrokersTls: ${example.bootstrapBrokersTls}
/// ```
///
///
/// ### With volume_throughput argument
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.msk.Cluster("example", {
///     clusterName: "example",
///     kafkaVersion: "3.8.x",
///     numberOfBrokerNodes: 3,
///     brokerNodeGroupInfo: {
///         instanceType: "kafka.m5.4xlarge",
///         clientSubnets: [
///             subnetAz1.id,
///             subnetAz2.id,
///             subnetAz3.id,
///         ],
///         storageInfo: {
///             ebsStorageInfo: {
///                 provisionedThroughput: {
///                     enabled: true,
///                     volumeThroughput: 250,
///                 },
///                 volumeSize: 1000,
///             },
///         },
///         securityGroups: [sg.id],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.msk.Cluster("example",
///     cluster_name="example",
///     kafka_version="3.8.x",
///     number_of_broker_nodes=3,
///     broker_node_group_info={
///         "instance_type": "kafka.m5.4xlarge",
///         "client_subnets": [
///             subnet_az1["id"],
///             subnet_az2["id"],
///             subnet_az3["id"],
///         ],
///         "storage_info": {
///             "ebs_storage_info": {
///                 "provisioned_throughput": {
///                     "enabled": True,
///                     "volume_throughput": 250,
///                 },
///                 "volume_size": 1000,
///             },
///         },
///         "security_groups": [sg["id"]],
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
///     var example = new Aws.Msk.Cluster("example", new()
///     {
///         ClusterName = "example",
///         KafkaVersion = "3.8.x",
///         NumberOfBrokerNodes = 3,
///         BrokerNodeGroupInfo = new Aws.Msk.Inputs.ClusterBrokerNodeGroupInfoArgs
///         {
///             InstanceType = "kafka.m5.4xlarge",
///             ClientSubnets = new[]
///             {
///                 subnetAz1.Id,
///                 subnetAz2.Id,
///                 subnetAz3.Id,
///             },
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
///             SecurityGroups = new[]
///             {
///                 sg.Id,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/msk"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := msk.NewCluster(ctx, "example", &msk.ClusterArgs{
/// 			ClusterName:         pulumi.String("example"),
/// 			KafkaVersion:        pulumi.String("3.8.x"),
/// 			NumberOfBrokerNodes: pulumi.Int(3),
/// 			BrokerNodeGroupInfo: &msk.ClusterBrokerNodeGroupInfoArgs{
/// 				InstanceType: pulumi.String("kafka.m5.4xlarge"),
/// 				ClientSubnets: pulumi.StringArray{
/// 					subnetAz1.Id,
/// 					subnetAz2.Id,
/// 					subnetAz3.Id,
/// 				},
/// 				StorageInfo: &msk.ClusterBrokerNodeGroupInfoStorageInfoArgs{
/// 					EbsStorageInfo: &msk.ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoArgs{
/// 						ProvisionedThroughput: &msk.ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughputArgs{
/// 							Enabled:          pulumi.Bool(true),
/// 							VolumeThroughput: pulumi.Int(250),
/// 						},
/// 						VolumeSize: pulumi.Int(1000),
/// 					},
/// 				},
/// 				SecurityGroups: pulumi.StringArray{
/// 					sg.Id,
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
///         var example = new Cluster("example", ClusterArgs.builder()
///             .clusterName("example")
///             .kafkaVersion("3.8.x")
///             .numberOfBrokerNodes(3)
///             .brokerNodeGroupInfo(ClusterBrokerNodeGroupInfoArgs.builder()
///                 .instanceType("kafka.m5.4xlarge")
///                 .clientSubnets(
///                     subnetAz1.id(),
///                     subnetAz2.id(),
///                     subnetAz3.id())
///                 .storageInfo(ClusterBrokerNodeGroupInfoStorageInfoArgs.builder()
///                     .ebsStorageInfo(ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoArgs.builder()
///                         .provisionedThroughput(ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughputArgs.builder()
///                             .enabled(true)
///                             .volumeThroughput(250)
///                             .build())
///                         .volumeSize(1000)
///                         .build())
///                     .build())
///                 .securityGroups(sg.id())
///                 .build())
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
///       clusterName: example
///       kafkaVersion: 3.8.x
///       numberOfBrokerNodes: 3
///       brokerNodeGroupInfo:
///         instanceType: kafka.m5.4xlarge
///         clientSubnets:
///           - ${subnetAz1.id}
///           - ${subnetAz2.id}
///           - ${subnetAz3.id}
///         storageInfo:
///           ebsStorageInfo:
///             provisionedThroughput:
///               enabled: true
///               volumeThroughput: 250
///             volumeSize: 1000
///         securityGroups:
///           - ${sg.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import MSK clusters using the cluster `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:msk/cluster:Cluster example arn:aws:kafka:us-west-2:123456789012:cluster/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3
/// ```
class Cluster extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the MSK cluster.
  late final pulumi.Output<String> arn;
  /// Comma separated list of one or more hostname:port pairs of kafka brokers suitable to bootstrap connectivity to the kafka cluster. Contains a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `PLAINTEXT` or `TLS_PLAINTEXT`. The resource sorts values alphabetically. AWS may not always return all endpoints so this value is not guaranteed to be stable across applies.
  late final pulumi.Output<String> bootstrapBrokers;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersPublicSaslIam;
  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersPublicSaslScram;
  /// One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersPublicTls;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersSaslIam;
  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersSaslScram;
  /// One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersTls;
  /// A string containing one or more DNS names (or IP addresses) and SASL IAM port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersVpcConnectivitySaslIam;
  /// A string containing one or more DNS names (or IP addresses) and SASL SCRAM port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersVpcConnectivitySaslScram;
  /// A string containing one or more DNS names (or IP addresses) and TLS port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersVpcConnectivityTls;
  /// Configuration block for the broker nodes of the Kafka cluster. See broker_node_group_info Argument Reference below.
  late final pulumi.Output<ClusterBrokerNodeGroupInfo> brokerNodeGroupInfo;
  /// Configuration block for specifying a client authentication. See client_authentication Argument Reference below.
  late final pulumi.Output<ClusterClientAuthentication?> clientAuthentication;
  /// Name of the MSK cluster.
  late final pulumi.Output<String> clusterName;
  /// UUID of the MSK cluster, for use in IAM policies.
  late final pulumi.Output<String> clusterUuid;
  /// Configuration block for specifying an MSK Configuration to attach to Kafka brokers. See configuration_info Argument Reference below.
  late final pulumi.Output<ClusterConfigurationInfo?> configurationInfo;
  /// Current version of the MSK Cluster used for updates, e.g., `K13V1IB3VIYZZH`
  late final pulumi.Output<String> currentVersion;
  /// Configuration block for specifying encryption. See encryption_info Argument Reference below.
  late final pulumi.Output<ClusterEncryptionInfo?> encryptionInfo;
  /// Specify the desired enhanced MSK CloudWatch monitoring level. See [Monitoring Amazon MSK with Amazon CloudWatch](https://docs.aws.amazon.com/msk/latest/developerguide/monitoring.html)
  late final pulumi.Output<String?> enhancedMonitoring;
  /// Specify the desired Kafka software version.
  late final pulumi.Output<String> kafkaVersion;
  /// Configuration block for streaming broker logs to Cloudwatch/S3/Kinesis Firehose. See logging_info Argument Reference below.
  late final pulumi.Output<ClusterLoggingInfo?> loggingInfo;
  /// The desired total number of broker nodes in the kafka cluster.  It must be a multiple of the number of specified client subnets.
  late final pulumi.Output<int> numberOfBrokerNodes;
  /// Configuration block for JMX and Node monitoring for the MSK cluster. See open_monitoring Argument Reference below.
  late final pulumi.Output<ClusterOpenMonitoring?> openMonitoring;
  /// Configuration block for intelligent rebalancing. See rebalancing Argument Reference below. Only applicable to MSK Provisioned clusters with Express brokers.
  late final pulumi.Output<ClusterRebalancing> rebalancing;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Controls storage mode for supported storage tiers. Valid values are: `LOCAL` or `TIERED`.
  late final pulumi.Output<String> storageMode;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.bootstrapBrokers = registerOutput<String>('bootstrapBrokers');
    this.bootstrapBrokersPublicSaslIam = registerOutput<String>('bootstrapBrokersPublicSaslIam');
    this.bootstrapBrokersPublicSaslScram = registerOutput<String>('bootstrapBrokersPublicSaslScram');
    this.bootstrapBrokersPublicTls = registerOutput<String>('bootstrapBrokersPublicTls');
    this.bootstrapBrokersSaslIam = registerOutput<String>('bootstrapBrokersSaslIam');
    this.bootstrapBrokersSaslScram = registerOutput<String>('bootstrapBrokersSaslScram');
    this.bootstrapBrokersTls = registerOutput<String>('bootstrapBrokersTls');
    this.bootstrapBrokersVpcConnectivitySaslIam = registerOutput<String>('bootstrapBrokersVpcConnectivitySaslIam');
    this.bootstrapBrokersVpcConnectivitySaslScram = registerOutput<String>('bootstrapBrokersVpcConnectivitySaslScram');
    this.bootstrapBrokersVpcConnectivityTls = registerOutput<String>('bootstrapBrokersVpcConnectivityTls');
    this.brokerNodeGroupInfo = registerOutput<ClusterBrokerNodeGroupInfo>('brokerNodeGroupInfo');
    this.clientAuthentication = registerOutput<ClusterClientAuthentication?>('clientAuthentication');
    this.clusterName = registerOutput<String>('clusterName');
    this.clusterUuid = registerOutput<String>('clusterUuid');
    this.configurationInfo = registerOutput<ClusterConfigurationInfo?>('configurationInfo');
    this.currentVersion = registerOutput<String>('currentVersion');
    this.encryptionInfo = registerOutput<ClusterEncryptionInfo?>('encryptionInfo');
    this.enhancedMonitoring = registerOutput<String?>('enhancedMonitoring');
    this.kafkaVersion = registerOutput<String>('kafkaVersion');
    this.loggingInfo = registerOutput<ClusterLoggingInfo?>('loggingInfo');
    this.numberOfBrokerNodes = registerOutput<int>('numberOfBrokerNodes');
    this.openMonitoring = registerOutput<ClusterOpenMonitoring?>('openMonitoring');
    this.rebalancing = registerOutput<ClusterRebalancing>('rebalancing');
    this.region = registerOutput<String>('region');
    this.storageMode = registerOutput<String>('storageMode');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.zookeeperConnectString = registerOutput<String>('zookeeperConnectString');
    this.zookeeperConnectStringTls = registerOutput<String>('zookeeperConnectStringTls');
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    this.arn = registerOutput<String>('arn');
    this.bootstrapBrokers = registerOutput<String>('bootstrapBrokers');
    this.bootstrapBrokersPublicSaslIam = registerOutput<String>('bootstrapBrokersPublicSaslIam');
    this.bootstrapBrokersPublicSaslScram = registerOutput<String>('bootstrapBrokersPublicSaslScram');
    this.bootstrapBrokersPublicTls = registerOutput<String>('bootstrapBrokersPublicTls');
    this.bootstrapBrokersSaslIam = registerOutput<String>('bootstrapBrokersSaslIam');
    this.bootstrapBrokersSaslScram = registerOutput<String>('bootstrapBrokersSaslScram');
    this.bootstrapBrokersTls = registerOutput<String>('bootstrapBrokersTls');
    this.bootstrapBrokersVpcConnectivitySaslIam = registerOutput<String>('bootstrapBrokersVpcConnectivitySaslIam');
    this.bootstrapBrokersVpcConnectivitySaslScram = registerOutput<String>('bootstrapBrokersVpcConnectivitySaslScram');
    this.bootstrapBrokersVpcConnectivityTls = registerOutput<String>('bootstrapBrokersVpcConnectivityTls');
    this.brokerNodeGroupInfo = registerOutput<ClusterBrokerNodeGroupInfo>('brokerNodeGroupInfo');
    this.clientAuthentication = registerOutput<ClusterClientAuthentication?>('clientAuthentication');
    this.clusterName = registerOutput<String>('clusterName');
    this.clusterUuid = registerOutput<String>('clusterUuid');
    this.configurationInfo = registerOutput<ClusterConfigurationInfo?>('configurationInfo');
    this.currentVersion = registerOutput<String>('currentVersion');
    this.encryptionInfo = registerOutput<ClusterEncryptionInfo?>('encryptionInfo');
    this.enhancedMonitoring = registerOutput<String?>('enhancedMonitoring');
    this.kafkaVersion = registerOutput<String>('kafkaVersion');
    this.loggingInfo = registerOutput<ClusterLoggingInfo?>('loggingInfo');
    this.numberOfBrokerNodes = registerOutput<int>('numberOfBrokerNodes');
    this.openMonitoring = registerOutput<ClusterOpenMonitoring?>('openMonitoring');
    this.rebalancing = registerOutput<ClusterRebalancing>('rebalancing');
    this.region = registerOutput<String>('region');
    this.storageMode = registerOutput<String>('storageMode');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.zookeeperConnectString = registerOutput<String>('zookeeperConnectString');
    this.zookeeperConnectStringTls = registerOutput<String>('zookeeperConnectStringTls');
  }
}
