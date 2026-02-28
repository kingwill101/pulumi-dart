import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_cluster_args.dart';
import 'aws_cluster_authorization.dart';
import 'aws_cluster_binary_authorization.dart';
import 'aws_cluster_control_plane.dart';
import 'aws_cluster_fleet.dart';
import 'aws_cluster_logging_config.dart';
import 'aws_cluster_networking.dart';
import 'aws_cluster_workload_identity_config.dart';

/// An Anthos cluster running on AWS.
///
/// For more information, see:
/// * [Multicloud overview](https://cloud.google.com/kubernetes-engine/multi-cloud/docs)
/// ## Example Usage
///
/// ### Basic_aws_cluster
/// A basic example of a containeraws cluster
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
///         adminGroups: [{
///             group: "group@domain.com",
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
///         "admin_groups": [{
///             "group": "group@domain.com",
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
///             AdminGroups = new[]
///             {
///                 new Gcp.Container.Inputs.AwsClusterAuthorizationAdminGroupArgs
///                 {
///                     Group = "group@domain.com",
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
/// 		_, err = container.NewAwsCluster(ctx, "primary", &container.AwsClusterArgs{
/// 			Authorization: &container.AwsClusterAuthorizationArgs{
/// 				AdminUsers: container.AwsClusterAuthorizationAdminUserArray{
/// 					&container.AwsClusterAuthorizationAdminUserArgs{
/// 						Username: pulumi.String("my@service-account.com"),
/// 					},
/// 				},
/// 				AdminGroups: container.AwsClusterAuthorizationAdminGroupArray{
/// 					&container.AwsClusterAuthorizationAdminGroupArgs{
/// 						Group: pulumi.String("group@domain.com"),
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
///                 .adminGroups(AwsClusterAuthorizationAdminGroupArgs.builder()
///                     .group("group@domain.com")
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
///         adminGroups:
///           - group: group@domain.com
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
/// A basic example of a containeraws cluster with lowercase enums
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
///             volumeType: "gp3",
///         },
///         proxyConfig: {
///             secretArn: "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///             secretVersion: "12345678-ABCD-EFGH-IJKL-987654321098",
///         },
///         rootVolume: {
///             iops: 3000,
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             sizeGib: 10,
///             volumeType: "gp3",
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
///             "volume_type": "gp3",
///         },
///         "proxy_config": {
///             "secret_arn": "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///             "secret_version": "12345678-ABCD-EFGH-IJKL-987654321098",
///         },
///         "root_volume": {
///             "iops": 3000,
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             "size_gib": 10,
///             "volume_type": "gp3",
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
///                 VolumeType = "gp3",
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
///                 VolumeType = "gp3",
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
/// 		_, err = container.NewAwsCluster(ctx, "primary", &container.AwsClusterArgs{
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
/// 					VolumeType: pulumi.String("gp3"),
/// 				},
/// 				ProxyConfig: &container.AwsClusterControlPlaneProxyConfigArgs{
/// 					SecretArn:     pulumi.String("arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF"),
/// 					SecretVersion: pulumi.String("12345678-ABCD-EFGH-IJKL-987654321098"),
/// 				},
/// 				RootVolume: &container.AwsClusterControlPlaneRootVolumeArgs{
/// 					Iops:       pulumi.Int(3000),
/// 					KmsKeyArn:  pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 					SizeGib:    pulumi.Int(10),
/// 					VolumeType: pulumi.String("gp3"),
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
///                     .volumeType("gp3")
///                     .build())
///                 .proxyConfig(AwsClusterControlPlaneProxyConfigArgs.builder()
///                     .secretArn("arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF")
///                     .secretVersion("12345678-ABCD-EFGH-IJKL-987654321098")
///                     .build())
///                 .rootVolume(AwsClusterControlPlaneRootVolumeArgs.builder()
///                     .iops(3000)
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .sizeGib(10)
///                     .volumeType("gp3")
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
///           volumeType: gp3
///         proxyConfig:
///           secretArn: arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF
///           secretVersion: 12345678-ABCD-EFGH-IJKL-987654321098
///         rootVolume:
///           iops: 3000
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///           sizeGib: 10
///           volumeType: gp3
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
/// A basic example of a containeraws cluster with lowercase enums (beta)
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
///             volumeType: "gp3",
///         },
///         proxyConfig: {
///             secretArn: "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///             secretVersion: "12345678-ABCD-EFGH-IJKL-987654321098",
///         },
///         rootVolume: {
///             iops: 3000,
///             kmsKeyArn: "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             sizeGib: 10,
///             volumeType: "gp3",
///         },
///         securityGroupIds: ["sg-00000000000000000"],
///         sshConfig: {
///             ec2KeyPair: "my--1p-dev-ssh",
///         },
///         tags: {
///             owner: "my@service-account.com",
///         },
///         instancePlacement: {
///             tenancy: "dedicated",
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
///     loggingConfig: {
///         componentConfig: {
///             enableComponents: [
///                 "system_components",
///                 "workloads",
///             ],
///         },
///     },
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
///             "volume_type": "gp3",
///         },
///         "proxy_config": {
///             "secret_arn": "arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF",
///             "secret_version": "12345678-ABCD-EFGH-IJKL-987654321098",
///         },
///         "root_volume": {
///             "iops": 3000,
///             "kms_key_arn": "arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111",
///             "size_gib": 10,
///             "volume_type": "gp3",
///         },
///         "security_group_ids": ["sg-00000000000000000"],
///         "ssh_config": {
///             "ec2_key_pair": "my--1p-dev-ssh",
///         },
///         "tags": {
///             "owner": "my@service-account.com",
///         },
///         "instance_placement": {
///             "tenancy": "dedicated",
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
///     project="my-project-name",
///     logging_config={
///         "component_config": {
///             "enable_components": [
///                 "system_components",
///                 "workloads",
///             ],
///         },
///     })
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
///                 VolumeType = "gp3",
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
///                 VolumeType = "gp3",
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
///             InstancePlacement = new Gcp.Container.Inputs.AwsClusterControlPlaneInstancePlacementArgs
///             {
///                 Tenancy = "dedicated",
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
///         LoggingConfig = new Gcp.Container.Inputs.AwsClusterLoggingConfigArgs
///         {
///             ComponentConfig = new Gcp.Container.Inputs.AwsClusterLoggingConfigComponentConfigArgs
///             {
///                 EnableComponents = new[]
///                 {
///                     "system_components",
///                     "workloads",
///                 },
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
/// 		_, err = container.NewAwsCluster(ctx, "primary", &container.AwsClusterArgs{
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
/// 					VolumeType: pulumi.String("gp3"),
/// 				},
/// 				ProxyConfig: &container.AwsClusterControlPlaneProxyConfigArgs{
/// 					SecretArn:     pulumi.String("arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF"),
/// 					SecretVersion: pulumi.String("12345678-ABCD-EFGH-IJKL-987654321098"),
/// 				},
/// 				RootVolume: &container.AwsClusterControlPlaneRootVolumeArgs{
/// 					Iops:       pulumi.Int(3000),
/// 					KmsKeyArn:  pulumi.String("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111"),
/// 					SizeGib:    pulumi.Int(10),
/// 					VolumeType: pulumi.String("gp3"),
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
/// 				InstancePlacement: &container.AwsClusterControlPlaneInstancePlacementArgs{
/// 					Tenancy: pulumi.String("dedicated"),
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
/// 			LoggingConfig: &container.AwsClusterLoggingConfigArgs{
/// 				ComponentConfig: &container.AwsClusterLoggingConfigComponentConfigArgs{
/// 					EnableComponents: pulumi.StringArray{
/// 						pulumi.String("system_components"),
/// 						pulumi.String("workloads"),
/// 					},
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
/// import com.pulumi.gcp.container.inputs.AwsClusterControlPlaneInstancePlacementArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterFleetArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterNetworkingArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterLoggingConfigArgs;
/// import com.pulumi.gcp.container.inputs.AwsClusterLoggingConfigComponentConfigArgs;
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
///                     .volumeType("gp3")
///                     .build())
///                 .proxyConfig(AwsClusterControlPlaneProxyConfigArgs.builder()
///                     .secretArn("arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF")
///                     .secretVersion("12345678-ABCD-EFGH-IJKL-987654321098")
///                     .build())
///                 .rootVolume(AwsClusterControlPlaneRootVolumeArgs.builder()
///                     .iops(3000)
///                     .kmsKeyArn("arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111")
///                     .sizeGib(10)
///                     .volumeType("gp3")
///                     .build())
///                 .securityGroupIds("sg-00000000000000000")
///                 .sshConfig(AwsClusterControlPlaneSshConfigArgs.builder()
///                     .ec2KeyPair("my--1p-dev-ssh")
///                     .build())
///                 .tags(Map.of("owner", "my@service-account.com"))
///                 .instancePlacement(AwsClusterControlPlaneInstancePlacementArgs.builder()
///                     .tenancy("dedicated")
///                     .build())
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
///             .loggingConfig(AwsClusterLoggingConfigArgs.builder()
///                 .componentConfig(AwsClusterLoggingConfigComponentConfigArgs.builder()
///                     .enableComponents(
///                         "system_components",
///                         "workloads")
///                     .build())
///                 .build())
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
///           volumeType: gp3
///         proxyConfig:
///           secretArn: arn:aws:secretsmanager:us-west-2:126285863215:secret:proxy_config20210824150329476300000001-ABCDEF
///           secretVersion: 12345678-ABCD-EFGH-IJKL-987654321098
///         rootVolume:
///           iops: 3000
///           kmsKeyArn: arn:aws:kms:my-aws-region:012345678910:key/12345678-1234-1234-1234-123456789111
///           sizeGib: 10
///           volumeType: gp3
///         securityGroupIds:
///           - sg-00000000000000000
///         sshConfig:
///           ec2KeyPair: my--1p-dev-ssh
///         tags:
///           owner: my@service-account.com
///         instancePlacement:
///           tenancy: dedicated
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
///       loggingConfig:
///         componentConfig:
///           enableComponents:
///             - system_components
///             - workloads
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
/// Cluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/awsClusters/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:container/awsCluster:AwsCluster default projects/{{project}}/locations/{{location}}/awsClusters/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/awsCluster:AwsCluster default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/awsCluster:AwsCluster default {{location}}/{{name}}
/// ```
class AwsCluster extends pulumi.CustomResource {
  /// Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Configuration related to the cluster RBAC settings.
  late final pulumi.Output<AwsClusterAuthorization> authorization;

  /// The AWS region where the cluster runs. Each Google Cloud region supports a subset of nearby AWS regions. You can call to list all supported AWS regions within a given Google Cloud region.
  late final pulumi.Output<String> awsRegion;

  /// Configuration options for the Binary Authorization feature.
  late final pulumi.Output<AwsClusterBinaryAuthorization> binaryAuthorization;

  /// Configuration related to the cluster control plane.
  late final pulumi.Output<AwsClusterControlPlane> controlPlane;

  /// Output only. The time at which this cluster was created.
  late final pulumi.Output<String> createTime;

  /// Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// Output only. The endpoint of the cluster's API server.
  late final pulumi.Output<String> endpoint;

  /// Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Fleet configuration.
  late final pulumi.Output<AwsClusterFleet> fleet;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// Logging configuration.
  late final pulumi.Output<AwsClusterLoggingConfig> loggingConfig;

  /// The name of this resource.
  late final pulumi.Output<String> name;

  /// Cluster-wide networking configuration.
  late final pulumi.Output<AwsClusterNetworking> networking;

  /// The project for the resource
  late final pulumi.Output<String> project;

  /// Output only. If set, there are currently changes in flight to the cluster.
  late final pulumi.Output<bool> reconciling;

  /// Output only. The current state of the cluster. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
  late final pulumi.Output<String> state;

  /// Output only. A globally unique identifier for the cluster.
  late final pulumi.Output<String> uid;

  /// Output only. The time at which this cluster was last updated.
  late final pulumi.Output<String> updateTime;

  /// Output only. Workload Identity settings.
  late final pulumi.Output<List<AwsClusterWorkloadIdentityConfig>>
      workloadIdentityConfigs;

  /// Creates a new [AwsCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AwsCluster]. {@macro pulumi_container_aws_cluster_aws_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AwsCluster(
    String name, {
    AwsClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:container/awsCluster:AwsCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.authorization =
        registerOutput<AwsClusterAuthorization>('authorization');
    this.awsRegion = registerOutput<String>('awsRegion');
    this.binaryAuthorization =
        registerOutput<AwsClusterBinaryAuthorization>('binaryAuthorization');
    this.controlPlane = registerOutput<AwsClusterControlPlane>('controlPlane');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.endpoint = registerOutput<String>('endpoint');
    this.etag = registerOutput<String>('etag');
    this.fleet = registerOutput<AwsClusterFleet>('fleet');
    this.location = registerOutput<String>('location');
    this.loggingConfig =
        registerOutput<AwsClusterLoggingConfig>('loggingConfig');
    this.name = registerOutput<String>('name');
    this.networking = registerOutput<AwsClusterNetworking>('networking');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.workloadIdentityConfigs =
        registerOutput<List<AwsClusterWorkloadIdentityConfig>>(
            'workloadIdentityConfigs');
  }
}
