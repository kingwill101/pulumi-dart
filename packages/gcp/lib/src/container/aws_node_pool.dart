import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_node_pool_args.dart';
import 'aws_node_pool_autoscaling.dart';
import 'aws_node_pool_config.dart';
import 'aws_node_pool_kubelet_config.dart';
import 'aws_node_pool_management.dart';
import 'aws_node_pool_max_pods_constraint.dart';
import 'aws_node_pool_update_settings.dart';

/// An Anthos node pool running on AWS.
///
/// For more information, see:
/// * [Multicloud overview](https://cloud.google.com/kubernetes-engine/multi-cloud/docs)
/// ## Example Usage
///
/// ### Basic_aws_cluster
/// A basic example of a containeraws node pool
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const versions = gcp.container.getAwsVersions({
///     project: "my-project-name",
///     location: "us-west1",
/// });
/// const primary = new gcp.container.AwsCluster("primary", {
///     authorization: {
///         adminUsers: [{
///             username: "my@service-account.com",
///         }],
///     },
///     awsRegion: "my-aws-region",
///     controlPlane: {
///         awsServicesAuthentication: {
///             roleArn: "arn:aws:iam::012345678910:role/my--1p-dev-oneplatform",
///             roleSessionName: "my--1p-dev-session",
///         },
///         configEncryption: {
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///         },
///         databaseEncryption: {
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///         },
///         iamInstanceProfile: "my--1p-dev-controlplane",
///         subnetIds: ["subnet-00000000000000000"],
///         version: versions.then(versions => versions.validVersions?.[0]),
///         instanceType: "t3.medium",
///         mainVolume: {
///             iops: 3000,
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             sizeGib: 10,
///             volumeType: "GP3",
///         },
///         proxyConfig: {
///             secretArn: "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///             secretVersion: "12345678-ABCD-EFGH-IJKL-987654321098",
///         },
///         rootVolume: {
///             iops: 3000,
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             sizeGib: 10,
///             volumeType: "GP3",
///         },
///         securityGroupIds: ["sg-00000000000000000"],
///         sshConfig: {
///             ec2KeyPair: "my--1p-dev-ssh",
///         },
///         tags: {
///             owner: "my@service-account.com",
///         },
///     },
///     fleet: {
///         project: "my-project-number",
///     },
///     location: "us-west1",
///     name: "name",
///     networking: {
///         podAddressCidrBlocks: ["10.2.0.0/16"],
///         serviceAddressCidrBlocks: ["10.1.0.0/16"],
///         vpcId: "vpc-00000000000000000",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
///     description: "A sample aws cluster",
///     project: "my-project-name",
/// });
/// const primaryAwsNodePool = new gcp.container.AwsNodePool("primary", {
///     autoscaling: {
///         maxNodeCount: 5,
///         minNodeCount: 1,
///     },
///     cluster: primary.name,
///     config: {
///         configEncryption: {
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///         },
///         iamInstanceProfile: "my--1p-dev-nodepool",
///         instanceType: "t3.medium",
///         labels: {
///             "label-one": "value-one",
///         },
///         rootVolume: {
///             iops: 3000,
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             sizeGib: 10,
///             volumeType: "GP3",
///         },
///         securityGroupIds: ["sg-00000000000000000"],
///         proxyConfig: {
///             secretArn: "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///             secretVersion: "12345678-ABCD-EFGH-IJKL-987654321098",
///         },
///         sshConfig: {
///             ec2KeyPair: "my--1p-dev-ssh",
///         },
///         tags: {
///             "tag-one": "value-one",
///         },
///         taints: [{
///             effect: "PREFER_NO_SCHEDULE",
///             key: "taint-key",
///             value: "taint-value",
///         }],
///     },
///     location: "us-west1",
///     maxPodsConstraint: {
///         maxPodsPerNode: 110,
///     },
///     name: "node-pool-name",
///     subnetId: "subnet-00000000000000000",
///     version: versions.then(versions => versions.validVersions?.[0]),
///     annotations: {
///         "label-one": "value-one",
///     },
///     management: {
///         autoRepair: true,
///     },
///     kubeletConfig: {
///         cpuManagerPolicy: "none",
///         cpuCfsQuota: true,
///         cpuCfsQuotaPeriod: "100ms",
///         podPidsLimit: 1024,
///     },
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// versions = gcp.container.get_aws_versions(project="my-project-name",
///     location="us-west1")
/// primary = gcp.container.AwsCluster("primary",
///     authorization={
///         "admin_users": [{
///             "username": "my@service-account.com",
///         }],
///     },
///     aws_region="my-aws-region",
///     control_plane={
///         "aws_services_authentication": {
///             "role_arn": "arn:aws:iam::012345678910:role/my--1p-dev-oneplatform",
///             "role_session_name": "my--1p-dev-session",
///         },
///         "config_encryption": {
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///         },
///         "database_encryption": {
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///         },
///         "iam_instance_profile": "my--1p-dev-controlplane",
///         "subnet_ids": ["subnet-00000000000000000"],
///         "version": versions.valid_versions[0],
///         "instance_type": "t3.medium",
///         "main_volume": {
///             "iops": 3000,
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             "size_gib": 10,
///             "volume_type": "GP3",
///         },
///         "proxy_config": {
///             "secret_arn": "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///             "secret_version": "12345678-ABCD-EFGH-IJKL-987654321098",
///         },
///         "root_volume": {
///             "iops": 3000,
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             "size_gib": 10,
///             "volume_type": "GP3",
///         },
///         "security_group_ids": ["sg-00000000000000000"],
///         "ssh_config": {
///             "ec2_key_pair": "my--1p-dev-ssh",
///         },
///         "tags": {
///             "owner": "my@service-account.com",
///         },
///     },
///     fleet={
///         "project": "my-project-number",
///     },
///     location="us-west1",
///     name="name",
///     networking={
///         "pod_address_cidr_blocks": ["10.2.0.0/16"],
///         "service_address_cidr_blocks": ["10.1.0.0/16"],
///         "vpc_id": "vpc-00000000000000000",
///     },
///     annotations={
///         "label-one": "value-one",
///     },
///     description="A sample aws cluster",
///     project="my-project-name")
/// primary_aws_node_pool = gcp.container.AwsNodePool("primary",
///     autoscaling={
///         "max_node_count": 5,
///         "min_node_count": 1,
///     },
///     cluster=primary.name,
///     config={
///         "config_encryption": {
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///         },
///         "iam_instance_profile": "my--1p-dev-nodepool",
///         "instance_type": "t3.medium",
///         "labels": {
///             "label-one": "value-one",
///         },
///         "root_volume": {
///             "iops": 3000,
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             "size_gib": 10,
///             "volume_type": "GP3",
///         },
///         "security_group_ids": ["sg-00000000000000000"],
///         "proxy_config": {
///             "secret_arn": "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///             "secret_version": "12345678-ABCD-EFGH-IJKL-987654321098",
///         },
///         "ssh_config": {
///             "ec2_key_pair": "my--1p-dev-ssh",
///         },
///         "tags": {
///             "tag-one": "value-one",
///         },
///         "taints": [{
///             "effect": "PREFER_NO_SCHEDULE",
///             "key": "taint-key",
///             "value": "taint-value",
///         }],
///     },
///     location="us-west1",
///     max_pods_constraint={
///         "max_pods_per_node": 110,
///     },
///     name="node-pool-name",
///     subnet_id="subnet-00000000000000000",
///     version=versions.valid_versions[0],
///     annotations={
///         "label-one": "value-one",
///     },
///     management={
///         "auto_repair": True,
///     },
///     kubelet_config={
///         "cpu_manager_policy": "none",
///         "cpu_cfs_quota": True,
///         "cpu_cfs_quota_period": "100ms",
///         "pod_pids_limit": 1024,
///     },
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var versions = Gcp.Container.GetAwsVersions.Invoke(new()
///     {
///         Project = "my-project-name",
///         Location = "us-west1",
///     });
///
///     var primary = new Gcp.Container.AwsCluster("primary", new()
///     {
///         Authorization = new Gcp.Container.Inputs.AwsClusterAuthorizationArgs
///         {
///             AdminUsers = new[]
///             {
///                 new Gcp.Container.Inputs.AwsClusterAuthorizationAdminUserArgs
///                 {
///                     Username = "my@service-account.com",
///                 },
///             },
///         },
///         AwsRegion = "my-aws-region",
///         ControlPlane = new Gcp.Container.Inputs.AwsClusterControlPlaneArgs
///         {
///             AwsServicesAuthentication = new Gcp.Container.Inputs.AwsClusterControlPlaneAwsServicesAuthenticationArgs
///             {
///                 RoleArn = "arn:aws:iam::012345678910:role/my--1p-dev-oneplatform",
///                 RoleSessionName = "my--1p-dev-session",
///             },
///             ConfigEncryption = new Gcp.Container.Inputs.AwsClusterControlPlaneConfigEncryptionArgs
///             {
///                 KmsKeyArn = "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             },
///             DatabaseEncryption = new Gcp.Container.Inputs.AwsClusterControlPlaneDatabaseEncryptionArgs
///             {
///                 KmsKeyArn = "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             },
///             IamInstanceProfile = "my--1p-dev-controlplane",
///             SubnetIds = new[]
///             {
///                 "subnet-00000000000000000",
///             },
///             Version = versions.Apply(getAwsVersionsResult => getAwsVersionsResult.ValidVersions[0]),
///             InstanceType = "t3.medium",
///             MainVolume = new Gcp.Container.Inputs.AwsClusterControlPlaneMainVolumeArgs
///             {
///                 Iops = 3000,
///                 KmsKeyArn = "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///                 SizeGib = 10,
///                 VolumeType = "GP3",
///             },
///             ProxyConfig = new Gcp.Container.Inputs.AwsClusterControlPlaneProxyConfigArgs
///             {
///                 SecretArn = "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///                 SecretVersion = "12345678-ABCD-EFGH-IJKL-987654321098",
///             },
///             RootVolume = new Gcp.Container.Inputs.AwsClusterControlPlaneRootVolumeArgs
///             {
///                 Iops = 3000,
///                 KmsKeyArn = "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///                 SizeGib = 10,
///                 VolumeType = "GP3",
///             },
///             SecurityGroupIds = new[]
///             {
///                 "sg-00000000000000000",
///             },
///             SshConfig = new Gcp.Container.Inputs.AwsClusterControlPlaneSshConfigArgs
///             {
///                 Ec2KeyPair = "my--1p-dev-ssh",
///             },
///             Tags =
///             {
///                 { "owner", "my@service-account.com" },
///             },
///         },
///         Fleet = new Gcp.Container.Inputs.AwsClusterFleetArgs
///         {
///             Project = "my-project-number",
///         },
///         Location = "us-west1",
///         Name = "name",
///         Networking = new Gcp.Container.Inputs.AwsClusterNetworkingArgs
///         {
///             PodAddressCidrBlocks = new[]
///             {
///                 "10.2.0.0/16",
///             },
///             ServiceAddressCidrBlocks = new[]
///             {
///                 "10.1.0.0/16",
///             },
///             VpcId = "vpc-00000000000000000",
///         },
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///         Description = "A sample aws cluster",
///         Project = "my-project-name",
///     });
///
///     var primaryAwsNodePool = new Gcp.Container.AwsNodePool("primary", new()
///     {
///         Autoscaling = new Gcp.Container.Inputs.AwsNodePoolAutoscalingArgs
///         {
///             MaxNodeCount = 5,
///             MinNodeCount = 1,
///         },
///         Cluster = primary.Name,
///         Config = new Gcp.Container.Inputs.AwsNodePoolConfigArgs
///         {
///             ConfigEncryption = new Gcp.Container.Inputs.AwsNodePoolConfigConfigEncryptionArgs
///             {
///                 KmsKeyArn = "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             },
///             IamInstanceProfile = "my--1p-dev-nodepool",
///             InstanceType = "t3.medium",
///             Labels =
///             {
///                 { "label-one", "value-one" },
///             },
///             RootVolume = new Gcp.Container.Inputs.AwsNodePoolConfigRootVolumeArgs
///             {
///                 Iops = 3000,
///                 KmsKeyArn = "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///                 SizeGib = 10,
///                 VolumeType = "GP3",
///             },
///             SecurityGroupIds = new[]
///             {
///                 "sg-00000000000000000",
///             },
///             ProxyConfig = new Gcp.Container.Inputs.AwsNodePoolConfigProxyConfigArgs
///             {
///                 SecretArn = "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///                 SecretVersion = "12345678-ABCD-EFGH-IJKL-987654321098",
///             },
///             SshConfig = new Gcp.Container.Inputs.AwsNodePoolConfigSshConfigArgs
///             {
///                 Ec2KeyPair = "my--1p-dev-ssh",
///             },
///             Tags =
///             {
///                 { "tag-one", "value-one" },
///             },
///             Taints = new[]
///             {
///                 new Gcp.Container.Inputs.AwsNodePoolConfigTaintArgs
///                 {
///                     Effect = "PREFER_NO_SCHEDULE",
///                     Key = "taint-key",
///                     Value = "taint-value",
///                 },
///             },
///         },
///         Location = "us-west1",
///         MaxPodsConstraint = new Gcp.Container.Inputs.AwsNodePoolMaxPodsConstraintArgs
///         {
///             MaxPodsPerNode = 110,
///         },
///         Name = "node-pool-name",
///         SubnetId = "subnet-00000000000000000",
///         Version = versions.Apply(getAwsVersionsResult => getAwsVersionsResult.ValidVersions[0]),
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///         Management = new Gcp.Container.Inputs.AwsNodePoolManagementArgs
///         {
///             AutoRepair = true,
///         },
///         KubeletConfig = new Gcp.Container.Inputs.AwsNodePoolKubeletConfigArgs
///         {
///             CpuManagerPolicy = "none",
///             CpuCfsQuota = true,
///             CpuCfsQuotaPeriod = "100ms",
///             PodPidsLimit = 1024,
///         },
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		versions, err := container.GetAwsVersions(ctx, &container.GetAwsVersionsArgs{
/// 			Project:  pulumi.StringRef("my-project-name"),
/// 			Location: pulumi.StringRef("us-west1"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primary, err := container.NewAwsCluster(ctx, "primary", &container.AwsClusterArgs{
/// 			Authorization: &container.AwsClusterAuthorizationArgs{
/// 				AdminUsers: container.AwsClusterAuthorizationAdminUserArray{
/// 					&container.AwsClusterAuthorizationAdminUserArgs{
/// 						Username: pulumi.String("my@service-account.com"),
/// 					},
/// 				},
/// 			},
/// 			AwsRegion: pulumi.String("my-aws-region"),
/// 			ControlPlane: &container.AwsClusterControlPlaneArgs{
/// 				AwsServicesAuthentication: &container.AwsClusterControlPlaneAwsServicesAuthenticationArgs{
/// 					RoleArn:         pulumi.String("arn:aws:iam::012345678910:role/my--1p-dev-oneplatform"),
/// 					RoleSessionName: pulumi.String("my--1p-dev-session"),
/// 				},
/// 				ConfigEncryption: &container.AwsClusterControlPlaneConfigEncryptionArgs{
/// 					KmsKeyArn: pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 				},
/// 				DatabaseEncryption: &container.AwsClusterControlPlaneDatabaseEncryptionArgs{
/// 					KmsKeyArn: pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 				},
/// 				IamInstanceProfile: pulumi.String("my--1p-dev-controlplane"),
/// 				SubnetIds: pulumi.StringArray{
/// 					pulumi.String("subnet-00000000000000000"),
/// 				},
/// 				Version:      pulumi.String(versions.ValidVersions[0]),
/// 				InstanceType: pulumi.String("t3.medium"),
/// 				MainVolume: &container.AwsClusterControlPlaneMainVolumeArgs{
/// 					Iops:       pulumi.Int(3000),
/// 					KmsKeyArn:  pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 					SizeGib:    pulumi.Int(10),
/// 					VolumeType: pulumi.String("GP3"),
/// 				},
/// 				ProxyConfig: &container.AwsClusterControlPlaneProxyConfigArgs{
/// 					SecretArn:     pulumi.String("arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF"),
/// 					SecretVersion: pulumi.String("12345678-ABCD-EFGH-IJKL-987654321098"),
/// 				},
/// 				RootVolume: &container.AwsClusterControlPlaneRootVolumeArgs{
/// 					Iops:       pulumi.Int(3000),
/// 					KmsKeyArn:  pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 					SizeGib:    pulumi.Int(10),
/// 					VolumeType: pulumi.String("GP3"),
/// 				},
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					pulumi.String("sg-00000000000000000"),
/// 				},
/// 				SshConfig: &container.AwsClusterControlPlaneSshConfigArgs{
/// 					Ec2KeyPair: pulumi.String("my--1p-dev-ssh"),
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"owner": pulumi.String("my@service-account.com"),
/// 				},
/// 			},
/// 			Fleet: &container.AwsClusterFleetArgs{
/// 				Project: pulumi.String("my-project-number"),
/// 			},
/// 			Location: pulumi.String("us-west1"),
/// 			Name:     pulumi.String("name"),
/// 			Networking: &container.AwsClusterNetworkingArgs{
/// 				PodAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.2.0.0/16"),
/// 				},
/// 				ServiceAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.1.0.0/16"),
/// 				},
/// 				VpcId: pulumi.String("vpc-00000000000000000"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Description: pulumi.String("A sample aws cluster"),
/// 			Project:     pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = container.NewAwsNodePool(ctx, "primary", &container.AwsNodePoolArgs{
/// 			Autoscaling: &container.AwsNodePoolAutoscalingArgs{
/// 				MaxNodeCount: pulumi.Int(5),
/// 				MinNodeCount: pulumi.Int(1),
/// 			},
/// 			Cluster: primary.Name,
/// 			Config: &container.AwsNodePoolConfigArgs{
/// 				ConfigEncryption: &container.AwsNodePoolConfigConfigEncryptionArgs{
/// 					KmsKeyArn: pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 				},
/// 				IamInstanceProfile: pulumi.String("my--1p-dev-nodepool"),
/// 				InstanceType:       pulumi.String("t3.medium"),
/// 				Labels: pulumi.StringMap{
/// 					"label-one": pulumi.String("value-one"),
/// 				},
/// 				RootVolume: &container.AwsNodePoolConfigRootVolumeArgs{
/// 					Iops:       pulumi.Int(3000),
/// 					KmsKeyArn:  pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 					SizeGib:    pulumi.Int(10),
/// 					VolumeType: pulumi.String("GP3"),
/// 				},
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					pulumi.String("sg-00000000000000000"),
/// 				},
/// 				ProxyConfig: &container.AwsNodePoolConfigProxyConfigArgs{
/// 					SecretArn:     pulumi.String("arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF"),
/// 					SecretVersion: pulumi.String("12345678-ABCD-EFGH-IJKL-987654321098"),
/// 				},
/// 				SshConfig: &container.AwsNodePoolConfigSshConfigArgs{
/// 					Ec2KeyPair: pulumi.String("my--1p-dev-ssh"),
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"tag-one": pulumi.String("value-one"),
/// 				},
/// 				Taints: container.AwsNodePoolConfigTaintArray{
/// 					&container.AwsNodePoolConfigTaintArgs{
/// 						Effect: pulumi.String("PREFER_NO_SCHEDULE"),
/// 						Key:    pulumi.String("taint-key"),
/// 						Value:  pulumi.String("taint-value"),
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("us-west1"),
/// 			MaxPodsConstraint: &container.AwsNodePoolMaxPodsConstraintArgs{
/// 				MaxPodsPerNode: pulumi.Int(110),
/// 			},
/// 			Name:     pulumi.String("node-pool-name"),
/// 			SubnetId: pulumi.String("subnet-00000000000000000"),
/// 			Version:  pulumi.String(versions.ValidVersions[0]),
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Management: &container.AwsNodePoolManagementArgs{
/// 				AutoRepair: pulumi.Bool(true),
/// 			},
/// 			KubeletConfig: &container.AwsNodePoolKubeletConfigArgs{
/// 				CpuManagerPolicy:  pulumi.String("none"),
/// 				CpuCfsQuota:       pulumi.Bool(true),
/// 				CpuCfsQuotaPeriod: pulumi.String("100ms"),
/// 				PodPidsLimit:      pulumi.Int(1024),
/// 			},
/// 			Project: pulumi.String("my-project-name"),
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
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetAwsVersionsArgs;
/// import com.pulumi.gcp.container.AwsCluster;
/// import com.pulumi.gcp.container.AwsClusterArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterAuthorizationArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneAwsServicesAuthenticationArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneConfigEncryptionArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneDatabaseEncryptionArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneMainVolumeArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneProxyConfigArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneRootVolumeArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneSshConfigArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterFleetArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterNetworkingArgs;
/// import com.pulumi.gcp.container.AwsNodePool;
/// import com.pulumi.gcp.container.AwsNodePoolArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolAutoscalingArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolConfigArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolConfigConfigEncryptionArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolConfigRootVolumeArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolConfigProxyConfigArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolConfigSshConfigArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolMaxPodsConstraintArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolManagementArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolKubeletConfigArgs;
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
///         final var versions = ContainerFunctions.getAwsVersions(GetAwsVersionsArgs.builder()
///             .project("my-project-name")
///             .location("us-west1")
///             .build());
///
///         var primary = new AwsCluster("primary", AwsClusterArgs.builder()
///             .authorization(AwsClusterAuthorizationArgs.builder()
///                 .adminUsers(AwsClusterAuthorizationAdminUserArgs.builder()
///                     .username("my@service-account.com")
///                     .build())
///                 .build())
///             .awsRegion("my-aws-region")
///             .controlPlane(AwsClusterControlPlaneArgs.builder()
///                 .awsServicesAuthentication(AwsClusterControlPlaneAwsServicesAuthenticationArgs.builder()
///                     .roleArn("arn:aws:iam::012345678910:role/my--1p-dev-oneplatform")
///                     .roleSessionName("my--1p-dev-session")
///                     .build())
///                 .configEncryption(AwsClusterControlPlaneConfigEncryptionArgs.builder()
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .build())
///                 .databaseEncryption(AwsClusterControlPlaneDatabaseEncryptionArgs.builder()
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .build())
///                 .iamInstanceProfile("my--1p-dev-controlplane")
///                 .subnetIds("subnet-00000000000000000")
///                 .version(versions.validVersions()[0])
///                 .instanceType("t3.medium")
///                 .mainVolume(AwsClusterControlPlaneMainVolumeArgs.builder()
///                     .iops(3000)
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .sizeGib(10)
///                     .volumeType("GP3")
///                     .build())
///                 .proxyConfig(AwsClusterControlPlaneProxyConfigArgs.builder()
///                     .secretArn("arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF")
///                     .secretVersion("12345678-ABCD-EFGH-IJKL-987654321098")
///                     .build())
///                 .rootVolume(AwsClusterControlPlaneRootVolumeArgs.builder()
///                     .iops(3000)
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .sizeGib(10)
///                     .volumeType("GP3")
///                     .build())
///                 .securityGroupIds("sg-00000000000000000")
///                 .sshConfig(AwsClusterControlPlaneSshConfigArgs.builder()
///                     .ec2KeyPair("my--1p-dev-ssh")
///                     .build())
///                 .tags(Map.of("owner", "my@service-account.com"))
///                 .build())
///             .fleet(AwsClusterFleetArgs.builder()
///                 .project("my-project-number")
///                 .build())
///             .location("us-west1")
///             .name("name")
///             .networking(AwsClusterNetworkingArgs.builder()
///                 .podAddressCidrBlocks("10.2.0.0/16")
///                 .serviceAddressCidrBlocks("10.1.0.0/16")
///                 .vpcId("vpc-00000000000000000")
///                 .build())
///             .annotations(Map.of("label-one", "value-one"))
///             .description("A sample aws cluster")
///             .project("my-project-name")
///             .build());
///
///         var primaryAwsNodePool = new AwsNodePool("primaryAwsNodePool", AwsNodePoolArgs.builder()
///             .autoscaling(AwsNodePoolAutoscalingArgs.builder()
///                 .maxNodeCount(5)
///                 .minNodeCount(1)
///                 .build())
///             .cluster(primary.name())
///             .config(AwsNodePoolConfigArgs.builder()
///                 .configEncryption(AwsNodePoolConfigConfigEncryptionArgs.builder()
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .build())
///                 .iamInstanceProfile("my--1p-dev-nodepool")
///                 .instanceType("t3.medium")
///                 .labels(Map.of("label-one", "value-one"))
///                 .rootVolume(AwsNodePoolConfigRootVolumeArgs.builder()
///                     .iops(3000)
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .sizeGib(10)
///                     .volumeType("GP3")
///                     .build())
///                 .securityGroupIds("sg-00000000000000000")
///                 .proxyConfig(AwsNodePoolConfigProxyConfigArgs.builder()
///                     .secretArn("arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF")
///                     .secretVersion("12345678-ABCD-EFGH-IJKL-987654321098")
///                     .build())
///                 .sshConfig(AwsNodePoolConfigSshConfigArgs.builder()
///                     .ec2KeyPair("my--1p-dev-ssh")
///                     .build())
///                 .tags(Map.of("tag-one", "value-one"))
///                 .taints(AwsNodePoolConfigTaintArgs.builder()
///                     .effect("PREFER_NO_SCHEDULE")
///                     .key("taint-key")
///                     .value("taint-value")
///                     .build())
///                 .build())
///             .location("us-west1")
///             .maxPodsConstraint(AwsNodePoolMaxPodsConstraintArgs.builder()
///                 .maxPodsPerNode(110)
///                 .build())
///             .name("node-pool-name")
///             .subnetId("subnet-00000000000000000")
///             .version(versions.validVersions()[0])
///             .annotations(Map.of("label-one", "value-one"))
///             .management(AwsNodePoolManagementArgs.builder()
///                 .autoRepair(true)
///                 .build())
///             .kubeletConfig(AwsNodePoolKubeletConfigArgs.builder()
///                 .cpuManagerPolicy("none")
///                 .cpuCfsQuota(true)
///                 .cpuCfsQuotaPeriod("100ms")
///                 .podPidsLimit(1024)
///                 .build())
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:AwsCluster
///     properties:
///       authorization:
///         adminUsers:
///           - username: my@service-account.com
///       awsRegion: my-aws-region
///       controlPlane:
///         awsServicesAuthentication:
///           roleArn: arn:aws:iam::012345678910:role/my--1p-dev-oneplatform
///           roleSessionName: my--1p-dev-session
///         configEncryption:
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///         databaseEncryption:
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///         iamInstanceProfile: my--1p-dev-controlplane
///         subnetIds:
///           - subnet-00000000000000000
///         version: ${versions.validVersions[0]}
///         instanceType: t3.medium
///         mainVolume:
///           iops: 3000
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///           sizeGib: 10
///           volumeType: GP3
///         proxyConfig:
///           secretArn: arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF
///           secretVersion: 12345678-ABCD-EFGH-IJKL-987654321098
///         rootVolume:
///           iops: 3000
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///           sizeGib: 10
///           volumeType: GP3
///         securityGroupIds:
///           - sg-00000000000000000
///         sshConfig:
///           ec2KeyPair: my--1p-dev-ssh
///         tags:
///           owner: my@service-account.com
///       fleet:
///         project: my-project-number
///       location: us-west1
///       name: name
///       networking:
///         podAddressCidrBlocks:
///           - 10.2.0.0/16
///         serviceAddressCidrBlocks:
///           - 10.1.0.0/16
///         vpcId: vpc-00000000000000000
///       annotations:
///         label-one: value-one
///       description: A sample aws cluster
///       project: my-project-name
///   primaryAwsNodePool:
///     type: gcp:container:AwsNodePool
///     name: primary
///     properties:
///       autoscaling:
///         maxNodeCount: 5
///         minNodeCount: 1
///       cluster: ${primary.name}
///       config:
///         configEncryption:
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///         iamInstanceProfile: my--1p-dev-nodepool
///         instanceType: t3.medium
///         labels:
///           label-one: value-one
///         rootVolume:
///           iops: 3000
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///           sizeGib: 10
///           volumeType: GP3
///         securityGroupIds:
///           - sg-00000000000000000
///         proxyConfig:
///           secretArn: arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF
///           secretVersion: 12345678-ABCD-EFGH-IJKL-987654321098
///         sshConfig:
///           ec2KeyPair: my--1p-dev-ssh
///         tags:
///           tag-one: value-one
///         taints:
///           - effect: PREFER_NO_SCHEDULE
///             key: taint-key
///             value: taint-value
///       location: us-west1
///       maxPodsConstraint:
///         maxPodsPerNode: 110
///       name: node-pool-name
///       subnetId: subnet-00000000000000000
///       version: ${versions.validVersions[0]}
///       annotations:
///         label-one: value-one
///       management:
///         autoRepair: true
///       kubeletConfig:
///         cpuManagerPolicy: none
///         cpuCfsQuota: true
///         cpuCfsQuotaPeriod: 100ms
///         podPidsLimit: 1024
///       project: my-project-name
/// variables:
///   versions:
///     fn::invoke:
///       function: gcp:container:getAwsVersions
///       arguments:
///         project: my-project-name
///         location: us-west1
/// ```
///
/// ### Basic_enum_aws_cluster
/// A basic example of a containeraws node pool with lowercase enums
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const versions = gcp.container.getAwsVersions({
///     project: "my-project-name",
///     location: "us-west1",
/// });
/// const primary = new gcp.container.AwsCluster("primary", {
///     authorization: {
///         adminUsers: [{
///             username: "my@service-account.com",
///         }],
///     },
///     awsRegion: "my-aws-region",
///     controlPlane: {
///         awsServicesAuthentication: {
///             roleArn: "arn:aws:iam::012345678910:role/my--1p-dev-oneplatform",
///             roleSessionName: "my--1p-dev-session",
///         },
///         configEncryption: {
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///         },
///         databaseEncryption: {
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///         },
///         iamInstanceProfile: "my--1p-dev-controlplane",
///         subnetIds: ["subnet-00000000000000000"],
///         version: versions.then(versions => versions.validVersions?.[0]),
///         instanceType: "t3.medium",
///         mainVolume: {
///             iops: 3000,
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             sizeGib: 10,
///             volumeType: "GP3",
///         },
///         proxyConfig: {
///             secretArn: "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///             secretVersion: "12345678-ABCD-EFGH-IJKL-987654321098",
///         },
///         rootVolume: {
///             iops: 3000,
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             sizeGib: 10,
///             volumeType: "GP3",
///         },
///         securityGroupIds: ["sg-00000000000000000"],
///         sshConfig: {
///             ec2KeyPair: "my--1p-dev-ssh",
///         },
///         tags: {
///             owner: "my@service-account.com",
///         },
///     },
///     fleet: {
///         project: "my-project-number",
///     },
///     location: "us-west1",
///     name: "name",
///     networking: {
///         podAddressCidrBlocks: ["10.2.0.0/16"],
///         serviceAddressCidrBlocks: ["10.1.0.0/16"],
///         vpcId: "vpc-00000000000000000",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
///     description: "A sample aws cluster",
///     project: "my-project-name",
/// });
/// const primaryAwsNodePool = new gcp.container.AwsNodePool("primary", {
///     autoscaling: {
///         maxNodeCount: 5,
///         minNodeCount: 1,
///     },
///     cluster: primary.name,
///     config: {
///         configEncryption: {
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///         },
///         iamInstanceProfile: "my--1p-dev-nodepool",
///         instanceType: "t3.medium",
///         labels: {
///             "label-one": "value-one",
///         },
///         rootVolume: {
///             iops: 3000,
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             sizeGib: 10,
///             volumeType: "gp3",
///         },
///         securityGroupIds: ["sg-00000000000000000"],
///         proxyConfig: {
///             secretArn: "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///             secretVersion: "12345678-ABCD-EFGH-IJKL-987654321098",
///         },
///         sshConfig: {
///             ec2KeyPair: "my--1p-dev-ssh",
///         },
///         tags: {
///             "tag-one": "value-one",
///         },
///         taints: [{
///             effect: "prefer_no_schedule",
///             key: "taint-key",
///             value: "taint-value",
///         }],
///     },
///     location: "us-west1",
///     maxPodsConstraint: {
///         maxPodsPerNode: 110,
///     },
///     name: "node-pool-name",
///     subnetId: "subnet-00000000000000000",
///     version: versions.then(versions => versions.validVersions?.[0]),
///     annotations: {
///         "label-one": "value-one",
///     },
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// versions = gcp.container.get_aws_versions(project="my-project-name",
///     location="us-west1")
/// primary = gcp.container.AwsCluster("primary",
///     authorization={
///         "admin_users": [{
///             "username": "my@service-account.com",
///         }],
///     },
///     aws_region="my-aws-region",
///     control_plane={
///         "aws_services_authentication": {
///             "role_arn": "arn:aws:iam::012345678910:role/my--1p-dev-oneplatform",
///             "role_session_name": "my--1p-dev-session",
///         },
///         "config_encryption": {
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///         },
///         "database_encryption": {
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///         },
///         "iam_instance_profile": "my--1p-dev-controlplane",
///         "subnet_ids": ["subnet-00000000000000000"],
///         "version": versions.valid_versions[0],
///         "instance_type": "t3.medium",
///         "main_volume": {
///             "iops": 3000,
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             "size_gib": 10,
///             "volume_type": "GP3",
///         },
///         "proxy_config": {
///             "secret_arn": "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///             "secret_version": "12345678-ABCD-EFGH-IJKL-987654321098",
///         },
///         "root_volume": {
///             "iops": 3000,
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             "size_gib": 10,
///             "volume_type": "GP3",
///         },
///         "security_group_ids": ["sg-00000000000000000"],
///         "ssh_config": {
///             "ec2_key_pair": "my--1p-dev-ssh",
///         },
///         "tags": {
///             "owner": "my@service-account.com",
///         },
///     },
///     fleet={
///         "project": "my-project-number",
///     },
///     location="us-west1",
///     name="name",
///     networking={
///         "pod_address_cidr_blocks": ["10.2.0.0/16"],
///         "service_address_cidr_blocks": ["10.1.0.0/16"],
///         "vpc_id": "vpc-00000000000000000",
///     },
///     annotations={
///         "label-one": "value-one",
///     },
///     description="A sample aws cluster",
///     project="my-project-name")
/// primary_aws_node_pool = gcp.container.AwsNodePool("primary",
///     autoscaling={
///         "max_node_count": 5,
///         "min_node_count": 1,
///     },
///     cluster=primary.name,
///     config={
///         "config_encryption": {
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///         },
///         "iam_instance_profile": "my--1p-dev-nodepool",
///         "instance_type": "t3.medium",
///         "labels": {
///             "label-one": "value-one",
///         },
///         "root_volume": {
///             "iops": 3000,
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             "size_gib": 10,
///             "volume_type": "gp3",
///         },
///         "security_group_ids": ["sg-00000000000000000"],
///         "proxy_config": {
///             "secret_arn": "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///             "secret_version": "12345678-ABCD-EFGH-IJKL-987654321098",
///         },
///         "ssh_config": {
///             "ec2_key_pair": "my--1p-dev-ssh",
///         },
///         "tags": {
///             "tag-one": "value-one",
///         },
///         "taints": [{
///             "effect": "prefer_no_schedule",
///             "key": "taint-key",
///             "value": "taint-value",
///         }],
///     },
///     location="us-west1",
///     max_pods_constraint={
///         "max_pods_per_node": 110,
///     },
///     name="node-pool-name",
///     subnet_id="subnet-00000000000000000",
///     version=versions.valid_versions[0],
///     annotations={
///         "label-one": "value-one",
///     },
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var versions = Gcp.Container.GetAwsVersions.Invoke(new()
///     {
///         Project = "my-project-name",
///         Location = "us-west1",
///     });
///
///     var primary = new Gcp.Container.AwsCluster("primary", new()
///     {
///         Authorization = new Gcp.Container.Inputs.AwsClusterAuthorizationArgs
///         {
///             AdminUsers = new[]
///             {
///                 new Gcp.Container.Inputs.AwsClusterAuthorizationAdminUserArgs
///                 {
///                     Username = "my@service-account.com",
///                 },
///             },
///         },
///         AwsRegion = "my-aws-region",
///         ControlPlane = new Gcp.Container.Inputs.AwsClusterControlPlaneArgs
///         {
///             AwsServicesAuthentication = new Gcp.Container.Inputs.AwsClusterControlPlaneAwsServicesAuthenticationArgs
///             {
///                 RoleArn = "arn:aws:iam::012345678910:role/my--1p-dev-oneplatform",
///                 RoleSessionName = "my--1p-dev-session",
///             },
///             ConfigEncryption = new Gcp.Container.Inputs.AwsClusterControlPlaneConfigEncryptionArgs
///             {
///                 KmsKeyArn = "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             },
///             DatabaseEncryption = new Gcp.Container.Inputs.AwsClusterControlPlaneDatabaseEncryptionArgs
///             {
///                 KmsKeyArn = "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             },
///             IamInstanceProfile = "my--1p-dev-controlplane",
///             SubnetIds = new[]
///             {
///                 "subnet-00000000000000000",
///             },
///             Version = versions.Apply(getAwsVersionsResult => getAwsVersionsResult.ValidVersions[0]),
///             InstanceType = "t3.medium",
///             MainVolume = new Gcp.Container.Inputs.AwsClusterControlPlaneMainVolumeArgs
///             {
///                 Iops = 3000,
///                 KmsKeyArn = "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///                 SizeGib = 10,
///                 VolumeType = "GP3",
///             },
///             ProxyConfig = new Gcp.Container.Inputs.AwsClusterControlPlaneProxyConfigArgs
///             {
///                 SecretArn = "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///                 SecretVersion = "12345678-ABCD-EFGH-IJKL-987654321098",
///             },
///             RootVolume = new Gcp.Container.Inputs.AwsClusterControlPlaneRootVolumeArgs
///             {
///                 Iops = 3000,
///                 KmsKeyArn = "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///                 SizeGib = 10,
///                 VolumeType = "GP3",
///             },
///             SecurityGroupIds = new[]
///             {
///                 "sg-00000000000000000",
///             },
///             SshConfig = new Gcp.Container.Inputs.AwsClusterControlPlaneSshConfigArgs
///             {
///                 Ec2KeyPair = "my--1p-dev-ssh",
///             },
///             Tags =
///             {
///                 { "owner", "my@service-account.com" },
///             },
///         },
///         Fleet = new Gcp.Container.Inputs.AwsClusterFleetArgs
///         {
///             Project = "my-project-number",
///         },
///         Location = "us-west1",
///         Name = "name",
///         Networking = new Gcp.Container.Inputs.AwsClusterNetworkingArgs
///         {
///             PodAddressCidrBlocks = new[]
///             {
///                 "10.2.0.0/16",
///             },
///             ServiceAddressCidrBlocks = new[]
///             {
///                 "10.1.0.0/16",
///             },
///             VpcId = "vpc-00000000000000000",
///         },
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///         Description = "A sample aws cluster",
///         Project = "my-project-name",
///     });
///
///     var primaryAwsNodePool = new Gcp.Container.AwsNodePool("primary", new()
///     {
///         Autoscaling = new Gcp.Container.Inputs.AwsNodePoolAutoscalingArgs
///         {
///             MaxNodeCount = 5,
///             MinNodeCount = 1,
///         },
///         Cluster = primary.Name,
///         Config = new Gcp.Container.Inputs.AwsNodePoolConfigArgs
///         {
///             ConfigEncryption = new Gcp.Container.Inputs.AwsNodePoolConfigConfigEncryptionArgs
///             {
///                 KmsKeyArn = "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             },
///             IamInstanceProfile = "my--1p-dev-nodepool",
///             InstanceType = "t3.medium",
///             Labels =
///             {
///                 { "label-one", "value-one" },
///             },
///             RootVolume = new Gcp.Container.Inputs.AwsNodePoolConfigRootVolumeArgs
///             {
///                 Iops = 3000,
///                 KmsKeyArn = "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///                 SizeGib = 10,
///                 VolumeType = "gp3",
///             },
///             SecurityGroupIds = new[]
///             {
///                 "sg-00000000000000000",
///             },
///             ProxyConfig = new Gcp.Container.Inputs.AwsNodePoolConfigProxyConfigArgs
///             {
///                 SecretArn = "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///                 SecretVersion = "12345678-ABCD-EFGH-IJKL-987654321098",
///             },
///             SshConfig = new Gcp.Container.Inputs.AwsNodePoolConfigSshConfigArgs
///             {
///                 Ec2KeyPair = "my--1p-dev-ssh",
///             },
///             Tags =
///             {
///                 { "tag-one", "value-one" },
///             },
///             Taints = new[]
///             {
///                 new Gcp.Container.Inputs.AwsNodePoolConfigTaintArgs
///                 {
///                     Effect = "prefer_no_schedule",
///                     Key = "taint-key",
///                     Value = "taint-value",
///                 },
///             },
///         },
///         Location = "us-west1",
///         MaxPodsConstraint = new Gcp.Container.Inputs.AwsNodePoolMaxPodsConstraintArgs
///         {
///             MaxPodsPerNode = 110,
///         },
///         Name = "node-pool-name",
///         SubnetId = "subnet-00000000000000000",
///         Version = versions.Apply(getAwsVersionsResult => getAwsVersionsResult.ValidVersions[0]),
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		versions, err := container.GetAwsVersions(ctx, &container.GetAwsVersionsArgs{
/// 			Project:  pulumi.StringRef("my-project-name"),
/// 			Location: pulumi.StringRef("us-west1"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primary, err := container.NewAwsCluster(ctx, "primary", &container.AwsClusterArgs{
/// 			Authorization: &container.AwsClusterAuthorizationArgs{
/// 				AdminUsers: container.AwsClusterAuthorizationAdminUserArray{
/// 					&container.AwsClusterAuthorizationAdminUserArgs{
/// 						Username: pulumi.String("my@service-account.com"),
/// 					},
/// 				},
/// 			},
/// 			AwsRegion: pulumi.String("my-aws-region"),
/// 			ControlPlane: &container.AwsClusterControlPlaneArgs{
/// 				AwsServicesAuthentication: &container.AwsClusterControlPlaneAwsServicesAuthenticationArgs{
/// 					RoleArn:         pulumi.String("arn:aws:iam::012345678910:role/my--1p-dev-oneplatform"),
/// 					RoleSessionName: pulumi.String("my--1p-dev-session"),
/// 				},
/// 				ConfigEncryption: &container.AwsClusterControlPlaneConfigEncryptionArgs{
/// 					KmsKeyArn: pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 				},
/// 				DatabaseEncryption: &container.AwsClusterControlPlaneDatabaseEncryptionArgs{
/// 					KmsKeyArn: pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 				},
/// 				IamInstanceProfile: pulumi.String("my--1p-dev-controlplane"),
/// 				SubnetIds: pulumi.StringArray{
/// 					pulumi.String("subnet-00000000000000000"),
/// 				},
/// 				Version:      pulumi.String(versions.ValidVersions[0]),
/// 				InstanceType: pulumi.String("t3.medium"),
/// 				MainVolume: &container.AwsClusterControlPlaneMainVolumeArgs{
/// 					Iops:       pulumi.Int(3000),
/// 					KmsKeyArn:  pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 					SizeGib:    pulumi.Int(10),
/// 					VolumeType: pulumi.String("GP3"),
/// 				},
/// 				ProxyConfig: &container.AwsClusterControlPlaneProxyConfigArgs{
/// 					SecretArn:     pulumi.String("arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF"),
/// 					SecretVersion: pulumi.String("12345678-ABCD-EFGH-IJKL-987654321098"),
/// 				},
/// 				RootVolume: &container.AwsClusterControlPlaneRootVolumeArgs{
/// 					Iops:       pulumi.Int(3000),
/// 					KmsKeyArn:  pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 					SizeGib:    pulumi.Int(10),
/// 					VolumeType: pulumi.String("GP3"),
/// 				},
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					pulumi.String("sg-00000000000000000"),
/// 				},
/// 				SshConfig: &container.AwsClusterControlPlaneSshConfigArgs{
/// 					Ec2KeyPair: pulumi.String("my--1p-dev-ssh"),
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"owner": pulumi.String("my@service-account.com"),
/// 				},
/// 			},
/// 			Fleet: &container.AwsClusterFleetArgs{
/// 				Project: pulumi.String("my-project-number"),
/// 			},
/// 			Location: pulumi.String("us-west1"),
/// 			Name:     pulumi.String("name"),
/// 			Networking: &container.AwsClusterNetworkingArgs{
/// 				PodAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.2.0.0/16"),
/// 				},
/// 				ServiceAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.1.0.0/16"),
/// 				},
/// 				VpcId: pulumi.String("vpc-00000000000000000"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Description: pulumi.String("A sample aws cluster"),
/// 			Project:     pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = container.NewAwsNodePool(ctx, "primary", &container.AwsNodePoolArgs{
/// 			Autoscaling: &container.AwsNodePoolAutoscalingArgs{
/// 				MaxNodeCount: pulumi.Int(5),
/// 				MinNodeCount: pulumi.Int(1),
/// 			},
/// 			Cluster: primary.Name,
/// 			Config: &container.AwsNodePoolConfigArgs{
/// 				ConfigEncryption: &container.AwsNodePoolConfigConfigEncryptionArgs{
/// 					KmsKeyArn: pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 				},
/// 				IamInstanceProfile: pulumi.String("my--1p-dev-nodepool"),
/// 				InstanceType:       pulumi.String("t3.medium"),
/// 				Labels: pulumi.StringMap{
/// 					"label-one": pulumi.String("value-one"),
/// 				},
/// 				RootVolume: &container.AwsNodePoolConfigRootVolumeArgs{
/// 					Iops:       pulumi.Int(3000),
/// 					KmsKeyArn:  pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 					SizeGib:    pulumi.Int(10),
/// 					VolumeType: pulumi.String("gp3"),
/// 				},
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					pulumi.String("sg-00000000000000000"),
/// 				},
/// 				ProxyConfig: &container.AwsNodePoolConfigProxyConfigArgs{
/// 					SecretArn:     pulumi.String("arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF"),
/// 					SecretVersion: pulumi.String("12345678-ABCD-EFGH-IJKL-987654321098"),
/// 				},
/// 				SshConfig: &container.AwsNodePoolConfigSshConfigArgs{
/// 					Ec2KeyPair: pulumi.String("my--1p-dev-ssh"),
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"tag-one": pulumi.String("value-one"),
/// 				},
/// 				Taints: container.AwsNodePoolConfigTaintArray{
/// 					&container.AwsNodePoolConfigTaintArgs{
/// 						Effect: pulumi.String("prefer_no_schedule"),
/// 						Key:    pulumi.String("taint-key"),
/// 						Value:  pulumi.String("taint-value"),
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("us-west1"),
/// 			MaxPodsConstraint: &container.AwsNodePoolMaxPodsConstraintArgs{
/// 				MaxPodsPerNode: pulumi.Int(110),
/// 			},
/// 			Name:     pulumi.String("node-pool-name"),
/// 			SubnetId: pulumi.String("subnet-00000000000000000"),
/// 			Version:  pulumi.String(versions.ValidVersions[0]),
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Project: pulumi.String("my-project-name"),
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
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetAwsVersionsArgs;
/// import com.pulumi.gcp.container.AwsCluster;
/// import com.pulumi.gcp.container.AwsClusterArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterAuthorizationArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneAwsServicesAuthenticationArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneConfigEncryptionArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneDatabaseEncryptionArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneMainVolumeArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneProxyConfigArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneRootVolumeArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneSshConfigArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterFleetArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterNetworkingArgs;
/// import com.pulumi.gcp.container.AwsNodePool;
/// import com.pulumi.gcp.container.AwsNodePoolArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolAutoscalingArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolConfigArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolConfigConfigEncryptionArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolConfigRootVolumeArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolConfigProxyConfigArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolConfigSshConfigArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolMaxPodsConstraintArgs;
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
///         final var versions = ContainerFunctions.getAwsVersions(GetAwsVersionsArgs.builder()
///             .project("my-project-name")
///             .location("us-west1")
///             .build());
///
///         var primary = new AwsCluster("primary", AwsClusterArgs.builder()
///             .authorization(AwsClusterAuthorizationArgs.builder()
///                 .adminUsers(AwsClusterAuthorizationAdminUserArgs.builder()
///                     .username("my@service-account.com")
///                     .build())
///                 .build())
///             .awsRegion("my-aws-region")
///             .controlPlane(AwsClusterControlPlaneArgs.builder()
///                 .awsServicesAuthentication(AwsClusterControlPlaneAwsServicesAuthenticationArgs.builder()
///                     .roleArn("arn:aws:iam::012345678910:role/my--1p-dev-oneplatform")
///                     .roleSessionName("my--1p-dev-session")
///                     .build())
///                 .configEncryption(AwsClusterControlPlaneConfigEncryptionArgs.builder()
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .build())
///                 .databaseEncryption(AwsClusterControlPlaneDatabaseEncryptionArgs.builder()
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .build())
///                 .iamInstanceProfile("my--1p-dev-controlplane")
///                 .subnetIds("subnet-00000000000000000")
///                 .version(versions.validVersions()[0])
///                 .instanceType("t3.medium")
///                 .mainVolume(AwsClusterControlPlaneMainVolumeArgs.builder()
///                     .iops(3000)
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .sizeGib(10)
///                     .volumeType("GP3")
///                     .build())
///                 .proxyConfig(AwsClusterControlPlaneProxyConfigArgs.builder()
///                     .secretArn("arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF")
///                     .secretVersion("12345678-ABCD-EFGH-IJKL-987654321098")
///                     .build())
///                 .rootVolume(AwsClusterControlPlaneRootVolumeArgs.builder()
///                     .iops(3000)
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .sizeGib(10)
///                     .volumeType("GP3")
///                     .build())
///                 .securityGroupIds("sg-00000000000000000")
///                 .sshConfig(AwsClusterControlPlaneSshConfigArgs.builder()
///                     .ec2KeyPair("my--1p-dev-ssh")
///                     .build())
///                 .tags(Map.of("owner", "my@service-account.com"))
///                 .build())
///             .fleet(AwsClusterFleetArgs.builder()
///                 .project("my-project-number")
///                 .build())
///             .location("us-west1")
///             .name("name")
///             .networking(AwsClusterNetworkingArgs.builder()
///                 .podAddressCidrBlocks("10.2.0.0/16")
///                 .serviceAddressCidrBlocks("10.1.0.0/16")
///                 .vpcId("vpc-00000000000000000")
///                 .build())
///             .annotations(Map.of("label-one", "value-one"))
///             .description("A sample aws cluster")
///             .project("my-project-name")
///             .build());
///
///         var primaryAwsNodePool = new AwsNodePool("primaryAwsNodePool", AwsNodePoolArgs.builder()
///             .autoscaling(AwsNodePoolAutoscalingArgs.builder()
///                 .maxNodeCount(5)
///                 .minNodeCount(1)
///                 .build())
///             .cluster(primary.name())
///             .config(AwsNodePoolConfigArgs.builder()
///                 .configEncryption(AwsNodePoolConfigConfigEncryptionArgs.builder()
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .build())
///                 .iamInstanceProfile("my--1p-dev-nodepool")
///                 .instanceType("t3.medium")
///                 .labels(Map.of("label-one", "value-one"))
///                 .rootVolume(AwsNodePoolConfigRootVolumeArgs.builder()
///                     .iops(3000)
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .sizeGib(10)
///                     .volumeType("gp3")
///                     .build())
///                 .securityGroupIds("sg-00000000000000000")
///                 .proxyConfig(AwsNodePoolConfigProxyConfigArgs.builder()
///                     .secretArn("arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF")
///                     .secretVersion("12345678-ABCD-EFGH-IJKL-987654321098")
///                     .build())
///                 .sshConfig(AwsNodePoolConfigSshConfigArgs.builder()
///                     .ec2KeyPair("my--1p-dev-ssh")
///                     .build())
///                 .tags(Map.of("tag-one", "value-one"))
///                 .taints(AwsNodePoolConfigTaintArgs.builder()
///                     .effect("prefer_no_schedule")
///                     .key("taint-key")
///                     .value("taint-value")
///                     .build())
///                 .build())
///             .location("us-west1")
///             .maxPodsConstraint(AwsNodePoolMaxPodsConstraintArgs.builder()
///                 .maxPodsPerNode(110)
///                 .build())
///             .name("node-pool-name")
///             .subnetId("subnet-00000000000000000")
///             .version(versions.validVersions()[0])
///             .annotations(Map.of("label-one", "value-one"))
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:AwsCluster
///     properties:
///       authorization:
///         adminUsers:
///           - username: my@service-account.com
///       awsRegion: my-aws-region
///       controlPlane:
///         awsServicesAuthentication:
///           roleArn: arn:aws:iam::012345678910:role/my--1p-dev-oneplatform
///           roleSessionName: my--1p-dev-session
///         configEncryption:
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///         databaseEncryption:
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///         iamInstanceProfile: my--1p-dev-controlplane
///         subnetIds:
///           - subnet-00000000000000000
///         version: ${versions.validVersions[0]}
///         instanceType: t3.medium
///         mainVolume:
///           iops: 3000
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///           sizeGib: 10
///           volumeType: GP3
///         proxyConfig:
///           secretArn: arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF
///           secretVersion: 12345678-ABCD-EFGH-IJKL-987654321098
///         rootVolume:
///           iops: 3000
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///           sizeGib: 10
///           volumeType: GP3
///         securityGroupIds:
///           - sg-00000000000000000
///         sshConfig:
///           ec2KeyPair: my--1p-dev-ssh
///         tags:
///           owner: my@service-account.com
///       fleet:
///         project: my-project-number
///       location: us-west1
///       name: name
///       networking:
///         podAddressCidrBlocks:
///           - 10.2.0.0/16
///         serviceAddressCidrBlocks:
///           - 10.1.0.0/16
///         vpcId: vpc-00000000000000000
///       annotations:
///         label-one: value-one
///       description: A sample aws cluster
///       project: my-project-name
///   primaryAwsNodePool:
///     type: gcp:container:AwsNodePool
///     name: primary
///     properties:
///       autoscaling:
///         maxNodeCount: 5
///         minNodeCount: 1
///       cluster: ${primary.name}
///       config:
///         configEncryption:
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///         iamInstanceProfile: my--1p-dev-nodepool
///         instanceType: t3.medium
///         labels:
///           label-one: value-one
///         rootVolume:
///           iops: 3000
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///           sizeGib: 10
///           volumeType: gp3
///         securityGroupIds:
///           - sg-00000000000000000
///         proxyConfig:
///           secretArn: arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF
///           secretVersion: 12345678-ABCD-EFGH-IJKL-987654321098
///         sshConfig:
///           ec2KeyPair: my--1p-dev-ssh
///         tags:
///           tag-one: value-one
///         taints:
///           - effect: prefer_no_schedule
///             key: taint-key
///             value: taint-value
///       location: us-west1
///       maxPodsConstraint:
///         maxPodsPerNode: 110
///       name: node-pool-name
///       subnetId: subnet-00000000000000000
///       version: ${versions.validVersions[0]}
///       annotations:
///         label-one: value-one
///       project: my-project-name
/// variables:
///   versions:
///     fn::invoke:
///       function: gcp:container:getAwsVersions
///       arguments:
///         project: my-project-name
///         location: us-west1
/// ```
///
/// ### Beta_basic_enum_aws_cluster
/// A basic example of a containeraws node pool with lowercase enums (beta)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const versions = gcp.container.getAwsVersions({
///     project: "my-project-name",
///     location: "us-west1",
/// });
/// const primary = new gcp.container.AwsCluster("primary", {
///     authorization: {
///         adminUsers: [{
///             username: "my@service-account.com",
///         }],
///     },
///     awsRegion: "my-aws-region",
///     controlPlane: {
///         awsServicesAuthentication: {
///             roleArn: "arn:aws:iam::012345678910:role/my--1p-dev-oneplatform",
///             roleSessionName: "my--1p-dev-session",
///         },
///         configEncryption: {
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///         },
///         databaseEncryption: {
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///         },
///         iamInstanceProfile: "my--1p-dev-controlplane",
///         subnetIds: ["subnet-00000000000000000"],
///         version: versions.then(versions => versions.validVersions?.[0]),
///         instanceType: "t3.medium",
///         mainVolume: {
///             iops: 3000,
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             sizeGib: 10,
///             volumeType: "GP3",
///         },
///         proxyConfig: {
///             secretArn: "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///             secretVersion: "12345678-ABCD-EFGH-IJKL-987654321098",
///         },
///         rootVolume: {
///             iops: 3000,
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             sizeGib: 10,
///             volumeType: "GP3",
///         },
///         securityGroupIds: ["sg-00000000000000000"],
///         sshConfig: {
///             ec2KeyPair: "my--1p-dev-ssh",
///         },
///         tags: {
///             owner: "my@service-account.com",
///         },
///     },
///     fleet: {
///         project: "my-project-number",
///     },
///     location: "us-west1",
///     name: "name",
///     networking: {
///         podAddressCidrBlocks: ["10.2.0.0/16"],
///         serviceAddressCidrBlocks: ["10.1.0.0/16"],
///         vpcId: "vpc-00000000000000000",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
///     description: "A sample aws cluster",
///     project: "my-project-name",
/// });
/// const primaryAwsNodePool = new gcp.container.AwsNodePool("primary", {
///     autoscaling: {
///         maxNodeCount: 5,
///         minNodeCount: 1,
///     },
///     cluster: primary.name,
///     config: {
///         configEncryption: {
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///         },
///         iamInstanceProfile: "my--1p-dev-nodepool",
///         instanceType: "t3.medium",
///         labels: {
///             "label-one": "value-one",
///         },
///         rootVolume: {
///             iops: 3000,
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             sizeGib: 10,
///             volumeType: "gp3",
///         },
///         securityGroupIds: ["sg-00000000000000000"],
///         proxyConfig: {
///             secretArn: "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///             secretVersion: "12345678-ABCD-EFGH-IJKL-987654321098",
///         },
///         sshConfig: {
///             ec2KeyPair: "my--1p-dev-ssh",
///         },
///         tags: {
///             "tag-one": "value-one",
///         },
///         taints: [{
///             effect: "prefer_no_schedule",
///             key: "taint-key",
///             value: "taint-value",
///         }],
///         instancePlacement: {
///             tenancy: "dedicated",
///         },
///         imageType: "ubuntu",
///     },
///     location: "us-west1",
///     maxPodsConstraint: {
///         maxPodsPerNode: 110,
///     },
///     name: "node-pool-name",
///     subnetId: "subnet-00000000000000000",
///     version: versions.then(versions => versions.validVersions?.[0]),
///     annotations: {
///         "label-one": "value-one",
///     },
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// versions = gcp.container.get_aws_versions(project="my-project-name",
///     location="us-west1")
/// primary = gcp.container.AwsCluster("primary",
///     authorization={
///         "admin_users": [{
///             "username": "my@service-account.com",
///         }],
///     },
///     aws_region="my-aws-region",
///     control_plane={
///         "aws_services_authentication": {
///             "role_arn": "arn:aws:iam::012345678910:role/my--1p-dev-oneplatform",
///             "role_session_name": "my--1p-dev-session",
///         },
///         "config_encryption": {
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///         },
///         "database_encryption": {
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///         },
///         "iam_instance_profile": "my--1p-dev-controlplane",
///         "subnet_ids": ["subnet-00000000000000000"],
///         "version": versions.valid_versions[0],
///         "instance_type": "t3.medium",
///         "main_volume": {
///             "iops": 3000,
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             "size_gib": 10,
///             "volume_type": "GP3",
///         },
///         "proxy_config": {
///             "secret_arn": "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///             "secret_version": "12345678-ABCD-EFGH-IJKL-987654321098",
///         },
///         "root_volume": {
///             "iops": 3000,
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             "size_gib": 10,
///             "volume_type": "GP3",
///         },
///         "security_group_ids": ["sg-00000000000000000"],
///         "ssh_config": {
///             "ec2_key_pair": "my--1p-dev-ssh",
///         },
///         "tags": {
///             "owner": "my@service-account.com",
///         },
///     },
///     fleet={
///         "project": "my-project-number",
///     },
///     location="us-west1",
///     name="name",
///     networking={
///         "pod_address_cidr_blocks": ["10.2.0.0/16"],
///         "service_address_cidr_blocks": ["10.1.0.0/16"],
///         "vpc_id": "vpc-00000000000000000",
///     },
///     annotations={
///         "label-one": "value-one",
///     },
///     description="A sample aws cluster",
///     project="my-project-name")
/// primary_aws_node_pool = gcp.container.AwsNodePool("primary",
///     autoscaling={
///         "max_node_count": 5,
///         "min_node_count": 1,
///     },
///     cluster=primary.name,
///     config={
///         "config_encryption": {
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///         },
///         "iam_instance_profile": "my--1p-dev-nodepool",
///         "instance_type": "t3.medium",
///         "labels": {
///             "label-one": "value-one",
///         },
///         "root_volume": {
///             "iops": 3000,
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             "size_gib": 10,
///             "volume_type": "gp3",
///         },
///         "security_group_ids": ["sg-00000000000000000"],
///         "proxy_config": {
///             "secret_arn": "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///             "secret_version": "12345678-ABCD-EFGH-IJKL-987654321098",
///         },
///         "ssh_config": {
///             "ec2_key_pair": "my--1p-dev-ssh",
///         },
///         "tags": {
///             "tag-one": "value-one",
///         },
///         "taints": [{
///             "effect": "prefer_no_schedule",
///             "key": "taint-key",
///             "value": "taint-value",
///         }],
///         "instance_placement": {
///             "tenancy": "dedicated",
///         },
///         "image_type": "ubuntu",
///     },
///     location="us-west1",
///     max_pods_constraint={
///         "max_pods_per_node": 110,
///     },
///     name="node-pool-name",
///     subnet_id="subnet-00000000000000000",
///     version=versions.valid_versions[0],
///     annotations={
///         "label-one": "value-one",
///     },
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var versions = Gcp.Container.GetAwsVersions.Invoke(new()
///     {
///         Project = "my-project-name",
///         Location = "us-west1",
///     });
///
///     var primary = new Gcp.Container.AwsCluster("primary", new()
///     {
///         Authorization = new Gcp.Container.Inputs.AwsClusterAuthorizationArgs
///         {
///             AdminUsers = new[]
///             {
///                 new Gcp.Container.Inputs.AwsClusterAuthorizationAdminUserArgs
///                 {
///                     Username = "my@service-account.com",
///                 },
///             },
///         },
///         AwsRegion = "my-aws-region",
///         ControlPlane = new Gcp.Container.Inputs.AwsClusterControlPlaneArgs
///         {
///             AwsServicesAuthentication = new Gcp.Container.Inputs.AwsClusterControlPlaneAwsServicesAuthenticationArgs
///             {
///                 RoleArn = "arn:aws:iam::012345678910:role/my--1p-dev-oneplatform",
///                 RoleSessionName = "my--1p-dev-session",
///             },
///             ConfigEncryption = new Gcp.Container.Inputs.AwsClusterControlPlaneConfigEncryptionArgs
///             {
///                 KmsKeyArn = "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             },
///             DatabaseEncryption = new Gcp.Container.Inputs.AwsClusterControlPlaneDatabaseEncryptionArgs
///             {
///                 KmsKeyArn = "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             },
///             IamInstanceProfile = "my--1p-dev-controlplane",
///             SubnetIds = new[]
///             {
///                 "subnet-00000000000000000",
///             },
///             Version = versions.Apply(getAwsVersionsResult => getAwsVersionsResult.ValidVersions[0]),
///             InstanceType = "t3.medium",
///             MainVolume = new Gcp.Container.Inputs.AwsClusterControlPlaneMainVolumeArgs
///             {
///                 Iops = 3000,
///                 KmsKeyArn = "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///                 SizeGib = 10,
///                 VolumeType = "GP3",
///             },
///             ProxyConfig = new Gcp.Container.Inputs.AwsClusterControlPlaneProxyConfigArgs
///             {
///                 SecretArn = "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///                 SecretVersion = "12345678-ABCD-EFGH-IJKL-987654321098",
///             },
///             RootVolume = new Gcp.Container.Inputs.AwsClusterControlPlaneRootVolumeArgs
///             {
///                 Iops = 3000,
///                 KmsKeyArn = "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///                 SizeGib = 10,
///                 VolumeType = "GP3",
///             },
///             SecurityGroupIds = new[]
///             {
///                 "sg-00000000000000000",
///             },
///             SshConfig = new Gcp.Container.Inputs.AwsClusterControlPlaneSshConfigArgs
///             {
///                 Ec2KeyPair = "my--1p-dev-ssh",
///             },
///             Tags =
///             {
///                 { "owner", "my@service-account.com" },
///             },
///         },
///         Fleet = new Gcp.Container.Inputs.AwsClusterFleetArgs
///         {
///             Project = "my-project-number",
///         },
///         Location = "us-west1",
///         Name = "name",
///         Networking = new Gcp.Container.Inputs.AwsClusterNetworkingArgs
///         {
///             PodAddressCidrBlocks = new[]
///             {
///                 "10.2.0.0/16",
///             },
///             ServiceAddressCidrBlocks = new[]
///             {
///                 "10.1.0.0/16",
///             },
///             VpcId = "vpc-00000000000000000",
///         },
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///         Description = "A sample aws cluster",
///         Project = "my-project-name",
///     });
///
///     var primaryAwsNodePool = new Gcp.Container.AwsNodePool("primary", new()
///     {
///         Autoscaling = new Gcp.Container.Inputs.AwsNodePoolAutoscalingArgs
///         {
///             MaxNodeCount = 5,
///             MinNodeCount = 1,
///         },
///         Cluster = primary.Name,
///         Config = new Gcp.Container.Inputs.AwsNodePoolConfigArgs
///         {
///             ConfigEncryption = new Gcp.Container.Inputs.AwsNodePoolConfigConfigEncryptionArgs
///             {
///                 KmsKeyArn = "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             },
///             IamInstanceProfile = "my--1p-dev-nodepool",
///             InstanceType = "t3.medium",
///             Labels =
///             {
///                 { "label-one", "value-one" },
///             },
///             RootVolume = new Gcp.Container.Inputs.AwsNodePoolConfigRootVolumeArgs
///             {
///                 Iops = 3000,
///                 KmsKeyArn = "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///                 SizeGib = 10,
///                 VolumeType = "gp3",
///             },
///             SecurityGroupIds = new[]
///             {
///                 "sg-00000000000000000",
///             },
///             ProxyConfig = new Gcp.Container.Inputs.AwsNodePoolConfigProxyConfigArgs
///             {
///                 SecretArn = "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///                 SecretVersion = "12345678-ABCD-EFGH-IJKL-987654321098",
///             },
///             SshConfig = new Gcp.Container.Inputs.AwsNodePoolConfigSshConfigArgs
///             {
///                 Ec2KeyPair = "my--1p-dev-ssh",
///             },
///             Tags =
///             {
///                 { "tag-one", "value-one" },
///             },
///             Taints = new[]
///             {
///                 new Gcp.Container.Inputs.AwsNodePoolConfigTaintArgs
///                 {
///                     Effect = "prefer_no_schedule",
///                     Key = "taint-key",
///                     Value = "taint-value",
///                 },
///             },
///             InstancePlacement = new Gcp.Container.Inputs.AwsNodePoolConfigInstancePlacementArgs
///             {
///                 Tenancy = "dedicated",
///             },
///             ImageType = "ubuntu",
///         },
///         Location = "us-west1",
///         MaxPodsConstraint = new Gcp.Container.Inputs.AwsNodePoolMaxPodsConstraintArgs
///         {
///             MaxPodsPerNode = 110,
///         },
///         Name = "node-pool-name",
///         SubnetId = "subnet-00000000000000000",
///         Version = versions.Apply(getAwsVersionsResult => getAwsVersionsResult.ValidVersions[0]),
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		versions, err := container.GetAwsVersions(ctx, &container.GetAwsVersionsArgs{
/// 			Project:  pulumi.StringRef("my-project-name"),
/// 			Location: pulumi.StringRef("us-west1"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primary, err := container.NewAwsCluster(ctx, "primary", &container.AwsClusterArgs{
/// 			Authorization: &container.AwsClusterAuthorizationArgs{
/// 				AdminUsers: container.AwsClusterAuthorizationAdminUserArray{
/// 					&container.AwsClusterAuthorizationAdminUserArgs{
/// 						Username: pulumi.String("my@service-account.com"),
/// 					},
/// 				},
/// 			},
/// 			AwsRegion: pulumi.String("my-aws-region"),
/// 			ControlPlane: &container.AwsClusterControlPlaneArgs{
/// 				AwsServicesAuthentication: &container.AwsClusterControlPlaneAwsServicesAuthenticationArgs{
/// 					RoleArn:         pulumi.String("arn:aws:iam::012345678910:role/my--1p-dev-oneplatform"),
/// 					RoleSessionName: pulumi.String("my--1p-dev-session"),
/// 				},
/// 				ConfigEncryption: &container.AwsClusterControlPlaneConfigEncryptionArgs{
/// 					KmsKeyArn: pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 				},
/// 				DatabaseEncryption: &container.AwsClusterControlPlaneDatabaseEncryptionArgs{
/// 					KmsKeyArn: pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 				},
/// 				IamInstanceProfile: pulumi.String("my--1p-dev-controlplane"),
/// 				SubnetIds: pulumi.StringArray{
/// 					pulumi.String("subnet-00000000000000000"),
/// 				},
/// 				Version:      pulumi.String(versions.ValidVersions[0]),
/// 				InstanceType: pulumi.String("t3.medium"),
/// 				MainVolume: &container.AwsClusterControlPlaneMainVolumeArgs{
/// 					Iops:       pulumi.Int(3000),
/// 					KmsKeyArn:  pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 					SizeGib:    pulumi.Int(10),
/// 					VolumeType: pulumi.String("GP3"),
/// 				},
/// 				ProxyConfig: &container.AwsClusterControlPlaneProxyConfigArgs{
/// 					SecretArn:     pulumi.String("arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF"),
/// 					SecretVersion: pulumi.String("12345678-ABCD-EFGH-IJKL-987654321098"),
/// 				},
/// 				RootVolume: &container.AwsClusterControlPlaneRootVolumeArgs{
/// 					Iops:       pulumi.Int(3000),
/// 					KmsKeyArn:  pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 					SizeGib:    pulumi.Int(10),
/// 					VolumeType: pulumi.String("GP3"),
/// 				},
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					pulumi.String("sg-00000000000000000"),
/// 				},
/// 				SshConfig: &container.AwsClusterControlPlaneSshConfigArgs{
/// 					Ec2KeyPair: pulumi.String("my--1p-dev-ssh"),
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"owner": pulumi.String("my@service-account.com"),
/// 				},
/// 			},
/// 			Fleet: &container.AwsClusterFleetArgs{
/// 				Project: pulumi.String("my-project-number"),
/// 			},
/// 			Location: pulumi.String("us-west1"),
/// 			Name:     pulumi.String("name"),
/// 			Networking: &container.AwsClusterNetworkingArgs{
/// 				PodAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.2.0.0/16"),
/// 				},
/// 				ServiceAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.1.0.0/16"),
/// 				},
/// 				VpcId: pulumi.String("vpc-00000000000000000"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Description: pulumi.String("A sample aws cluster"),
/// 			Project:     pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = container.NewAwsNodePool(ctx, "primary", &container.AwsNodePoolArgs{
/// 			Autoscaling: &container.AwsNodePoolAutoscalingArgs{
/// 				MaxNodeCount: pulumi.Int(5),
/// 				MinNodeCount: pulumi.Int(1),
/// 			},
/// 			Cluster: primary.Name,
/// 			Config: &container.AwsNodePoolConfigArgs{
/// 				ConfigEncryption: &container.AwsNodePoolConfigConfigEncryptionArgs{
/// 					KmsKeyArn: pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 				},
/// 				IamInstanceProfile: pulumi.String("my--1p-dev-nodepool"),
/// 				InstanceType:       pulumi.String("t3.medium"),
/// 				Labels: pulumi.StringMap{
/// 					"label-one": pulumi.String("value-one"),
/// 				},
/// 				RootVolume: &container.AwsNodePoolConfigRootVolumeArgs{
/// 					Iops:       pulumi.Int(3000),
/// 					KmsKeyArn:  pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 					SizeGib:    pulumi.Int(10),
/// 					VolumeType: pulumi.String("gp3"),
/// 				},
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					pulumi.String("sg-00000000000000000"),
/// 				},
/// 				ProxyConfig: &container.AwsNodePoolConfigProxyConfigArgs{
/// 					SecretArn:     pulumi.String("arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF"),
/// 					SecretVersion: pulumi.String("12345678-ABCD-EFGH-IJKL-987654321098"),
/// 				},
/// 				SshConfig: &container.AwsNodePoolConfigSshConfigArgs{
/// 					Ec2KeyPair: pulumi.String("my--1p-dev-ssh"),
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"tag-one": pulumi.String("value-one"),
/// 				},
/// 				Taints: container.AwsNodePoolConfigTaintArray{
/// 					&container.AwsNodePoolConfigTaintArgs{
/// 						Effect: pulumi.String("prefer_no_schedule"),
/// 						Key:    pulumi.String("taint-key"),
/// 						Value:  pulumi.String("taint-value"),
/// 					},
/// 				},
/// 				InstancePlacement: &container.AwsNodePoolConfigInstancePlacementArgs{
/// 					Tenancy: pulumi.String("dedicated"),
/// 				},
/// 				ImageType: pulumi.String("ubuntu"),
/// 			},
/// 			Location: pulumi.String("us-west1"),
/// 			MaxPodsConstraint: &container.AwsNodePoolMaxPodsConstraintArgs{
/// 				MaxPodsPerNode: pulumi.Int(110),
/// 			},
/// 			Name:     pulumi.String("node-pool-name"),
/// 			SubnetId: pulumi.String("subnet-00000000000000000"),
/// 			Version:  pulumi.String(versions.ValidVersions[0]),
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Project: pulumi.String("my-project-name"),
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
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetAwsVersionsArgs;
/// import com.pulumi.gcp.container.AwsCluster;
/// import com.pulumi.gcp.container.AwsClusterArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterAuthorizationArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneAwsServicesAuthenticationArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneConfigEncryptionArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneDatabaseEncryptionArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneMainVolumeArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneProxyConfigArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneRootVolumeArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneSshConfigArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterFleetArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterNetworkingArgs;
/// import com.pulumi.gcp.container.AwsNodePool;
/// import com.pulumi.gcp.container.AwsNodePoolArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolAutoscalingArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolConfigArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolConfigConfigEncryptionArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolConfigRootVolumeArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolConfigProxyConfigArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolConfigSshConfigArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolConfigInstancePlacementArgs;
/// import com.pulumi.gcp.container.inputs.AwsNodePoolMaxPodsConstraintArgs;
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
///         final var versions = ContainerFunctions.getAwsVersions(GetAwsVersionsArgs.builder()
///             .project("my-project-name")
///             .location("us-west1")
///             .build());
///
///         var primary = new AwsCluster("primary", AwsClusterArgs.builder()
///             .authorization(AwsClusterAuthorizationArgs.builder()
///                 .adminUsers(AwsClusterAuthorizationAdminUserArgs.builder()
///                     .username("my@service-account.com")
///                     .build())
///                 .build())
///             .awsRegion("my-aws-region")
///             .controlPlane(AwsClusterControlPlaneArgs.builder()
///                 .awsServicesAuthentication(AwsClusterControlPlaneAwsServicesAuthenticationArgs.builder()
///                     .roleArn("arn:aws:iam::012345678910:role/my--1p-dev-oneplatform")
///                     .roleSessionName("my--1p-dev-session")
///                     .build())
///                 .configEncryption(AwsClusterControlPlaneConfigEncryptionArgs.builder()
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .build())
///                 .databaseEncryption(AwsClusterControlPlaneDatabaseEncryptionArgs.builder()
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .build())
///                 .iamInstanceProfile("my--1p-dev-controlplane")
///                 .subnetIds("subnet-00000000000000000")
///                 .version(versions.validVersions()[0])
///                 .instanceType("t3.medium")
///                 .mainVolume(AwsClusterControlPlaneMainVolumeArgs.builder()
///                     .iops(3000)
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .sizeGib(10)
///                     .volumeType("GP3")
///                     .build())
///                 .proxyConfig(AwsClusterControlPlaneProxyConfigArgs.builder()
///                     .secretArn("arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF")
///                     .secretVersion("12345678-ABCD-EFGH-IJKL-987654321098")
///                     .build())
///                 .rootVolume(AwsClusterControlPlaneRootVolumeArgs.builder()
///                     .iops(3000)
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .sizeGib(10)
///                     .volumeType("GP3")
///                     .build())
///                 .securityGroupIds("sg-00000000000000000")
///                 .sshConfig(AwsClusterControlPlaneSshConfigArgs.builder()
///                     .ec2KeyPair("my--1p-dev-ssh")
///                     .build())
///                 .tags(Map.of("owner", "my@service-account.com"))
///                 .build())
///             .fleet(AwsClusterFleetArgs.builder()
///                 .project("my-project-number")
///                 .build())
///             .location("us-west1")
///             .name("name")
///             .networking(AwsClusterNetworkingArgs.builder()
///                 .podAddressCidrBlocks("10.2.0.0/16")
///                 .serviceAddressCidrBlocks("10.1.0.0/16")
///                 .vpcId("vpc-00000000000000000")
///                 .build())
///             .annotations(Map.of("label-one", "value-one"))
///             .description("A sample aws cluster")
///             .project("my-project-name")
///             .build());
///
///         var primaryAwsNodePool = new AwsNodePool("primaryAwsNodePool", AwsNodePoolArgs.builder()
///             .autoscaling(AwsNodePoolAutoscalingArgs.builder()
///                 .maxNodeCount(5)
///                 .minNodeCount(1)
///                 .build())
///             .cluster(primary.name())
///             .config(AwsNodePoolConfigArgs.builder()
///                 .configEncryption(AwsNodePoolConfigConfigEncryptionArgs.builder()
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .build())
///                 .iamInstanceProfile("my--1p-dev-nodepool")
///                 .instanceType("t3.medium")
///                 .labels(Map.of("label-one", "value-one"))
///                 .rootVolume(AwsNodePoolConfigRootVolumeArgs.builder()
///                     .iops(3000)
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .sizeGib(10)
///                     .volumeType("gp3")
///                     .build())
///                 .securityGroupIds("sg-00000000000000000")
///                 .proxyConfig(AwsNodePoolConfigProxyConfigArgs.builder()
///                     .secretArn("arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF")
///                     .secretVersion("12345678-ABCD-EFGH-IJKL-987654321098")
///                     .build())
///                 .sshConfig(AwsNodePoolConfigSshConfigArgs.builder()
///                     .ec2KeyPair("my--1p-dev-ssh")
///                     .build())
///                 .tags(Map.of("tag-one", "value-one"))
///                 .taints(AwsNodePoolConfigTaintArgs.builder()
///                     .effect("prefer_no_schedule")
///                     .key("taint-key")
///                     .value("taint-value")
///                     .build())
///                 .instancePlacement(AwsNodePoolConfigInstancePlacementArgs.builder()
///                     .tenancy("dedicated")
///                     .build())
///                 .imageType("ubuntu")
///                 .build())
///             .location("us-west1")
///             .maxPodsConstraint(AwsNodePoolMaxPodsConstraintArgs.builder()
///                 .maxPodsPerNode(110)
///                 .build())
///             .name("node-pool-name")
///             .subnetId("subnet-00000000000000000")
///             .version(versions.validVersions()[0])
///             .annotations(Map.of("label-one", "value-one"))
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:AwsCluster
///     properties:
///       authorization:
///         adminUsers:
///           - username: my@service-account.com
///       awsRegion: my-aws-region
///       controlPlane:
///         awsServicesAuthentication:
///           roleArn: arn:aws:iam::012345678910:role/my--1p-dev-oneplatform
///           roleSessionName: my--1p-dev-session
///         configEncryption:
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///         databaseEncryption:
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///         iamInstanceProfile: my--1p-dev-controlplane
///         subnetIds:
///           - subnet-00000000000000000
///         version: ${versions.validVersions[0]}
///         instanceType: t3.medium
///         mainVolume:
///           iops: 3000
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///           sizeGib: 10
///           volumeType: GP3
///         proxyConfig:
///           secretArn: arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF
///           secretVersion: 12345678-ABCD-EFGH-IJKL-987654321098
///         rootVolume:
///           iops: 3000
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///           sizeGib: 10
///           volumeType: GP3
///         securityGroupIds:
///           - sg-00000000000000000
///         sshConfig:
///           ec2KeyPair: my--1p-dev-ssh
///         tags:
///           owner: my@service-account.com
///       fleet:
///         project: my-project-number
///       location: us-west1
///       name: name
///       networking:
///         podAddressCidrBlocks:
///           - 10.2.0.0/16
///         serviceAddressCidrBlocks:
///           - 10.1.0.0/16
///         vpcId: vpc-00000000000000000
///       annotations:
///         label-one: value-one
///       description: A sample aws cluster
///       project: my-project-name
///   primaryAwsNodePool:
///     type: gcp:container:AwsNodePool
///     name: primary
///     properties:
///       autoscaling:
///         maxNodeCount: 5
///         minNodeCount: 1
///       cluster: ${primary.name}
///       config:
///         configEncryption:
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///         iamInstanceProfile: my--1p-dev-nodepool
///         instanceType: t3.medium
///         labels:
///           label-one: value-one
///         rootVolume:
///           iops: 3000
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///           sizeGib: 10
///           volumeType: gp3
///         securityGroupIds:
///           - sg-00000000000000000
///         proxyConfig:
///           secretArn: arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF
///           secretVersion: 12345678-ABCD-EFGH-IJKL-987654321098
///         sshConfig:
///           ec2KeyPair: my--1p-dev-ssh
///         tags:
///           tag-one: value-one
///         taints:
///           - effect: prefer_no_schedule
///             key: taint-key
///             value: taint-value
///         instancePlacement:
///           tenancy: dedicated
///         imageType: ubuntu
///       location: us-west1
///       maxPodsConstraint:
///         maxPodsPerNode: 110
///       name: node-pool-name
///       subnetId: subnet-00000000000000000
///       version: ${versions.validVersions[0]}
///       annotations:
///         label-one: value-one
///       project: my-project-name
/// variables:
///   versions:
///     fn::invoke:
///       function: gcp:container:getAwsVersions
///       arguments:
///         project: my-project-name
///         location: us-west1
/// ```
///
///
/// ## Import
///
/// NodePool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/awsClusters/{{cluster}}/awsNodePools/{{name}}`
///
/// * `{{project}}/{{location}}/{{cluster}}/{{name}}`
///
/// * `{{location}}/{{cluster}}/{{name}}`
///
/// When using the `pulumi import` command, NodePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:container/awsNodePool:AwsNodePool default projects/{{project}}/locations/{{location}}/awsClusters/{{cluster}}/awsNodePools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/awsNodePool:AwsNodePool default {{project}}/{{location}}/{{cluster}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/awsNodePool:AwsNodePool default {{location}}/{{cluster}}/{{name}}
/// ```
class AwsNodePool extends pulumi.CustomResource {
  /// Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Autoscaler configuration for this node pool.
  late final pulumi.Output<AwsNodePoolAutoscaling> autoscaling;
  /// The awsCluster for the resource
  late final pulumi.Output<String> cluster;
  /// The configuration of the node pool.
  late final pulumi.Output<AwsNodePoolConfig> config;
  /// Output only. The time at which this node pool was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// The kubelet configuration for the node pool.
  late final pulumi.Output<AwsNodePoolKubeletConfig> kubeletConfig;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// The Management configuration for this node pool.
  late final pulumi.Output<AwsNodePoolManagement> management;
  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  late final pulumi.Output<AwsNodePoolMaxPodsConstraint> maxPodsConstraint;
  /// The name of this resource.
  late final pulumi.Output<String> name;
  /// The project for the resource
  late final pulumi.Output<String> project;
  /// Output only. If set, there are currently changes in flight to the node pool.
  late final pulumi.Output<bool> reconciling;
  /// Output only. The lifecycle state of the node pool. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
  late final pulumi.Output<String> state;
  /// The subnet where the node pool node run.
  late final pulumi.Output<String> subnetId;
  /// Output only. A globally unique identifier for the node pool.
  late final pulumi.Output<String> uid;
  /// Optional. Update settings control the speed and disruption of the node pool update.
  late final pulumi.Output<AwsNodePoolUpdateSettings> updateSettings;
  /// Output only. The time at which this node pool was last updated.
  late final pulumi.Output<String> updateTime;
  /// The Kubernetes version to run on this node pool (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling GetAwsServerConfig.
  late final pulumi.Output<String> version;

  /// Creates a new [AwsNodePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AwsNodePool]. {@macro pulumi_container_aws_node_pool_aws_node_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AwsNodePool(
    String name, {
    AwsNodePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:container/awsNodePool:AwsNodePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.autoscaling = registerOutput<AwsNodePoolAutoscaling>('autoscaling');
    this.cluster = registerOutput<String>('cluster');
    this.config = registerOutput<AwsNodePoolConfig>('config');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    this.etag = registerOutput<String>('etag');
    this.kubeletConfig = registerOutput<AwsNodePoolKubeletConfig>('kubeletConfig');
    this.location = registerOutput<String>('location');
    this.management = registerOutput<AwsNodePoolManagement>('management');
    this.maxPodsConstraint = registerOutput<AwsNodePoolMaxPodsConstraint>('maxPodsConstraint');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.subnetId = registerOutput<String>('subnetId');
    this.uid = registerOutput<String>('uid');
    this.updateSettings = registerOutput<AwsNodePoolUpdateSettings>('updateSettings');
    this.updateTime = registerOutput<String>('updateTime');
    this.version = registerOutput<String>('version');
  }
}
