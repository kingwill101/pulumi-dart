import 'package:pulumi/pulumi.dart' as pulumi;
import 'eks_cluster_args.dart';
import 'eks_cluster_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EksClusters_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eksCluster = new AzureNative.AwsConnector.EksCluster("eksCluster", new()
///     {
///         Properties = new AzureNative.AwsConnector.Inputs.EksClusterPropertiesArgs
///         {
///             Arn = "xhoylvamhuqnvruh",
///             AwsAccountId = "sebsvgbgzb",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEksClusterPropertiesArgs
///             {
///                 AccessConfig = new AzureNative.AwsConnector.Inputs.AccessConfigResponseArgs
///                 {
///                     AuthenticationMode = new AzureNative.AwsConnector.Inputs.AuthenticationModeEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.AuthenticationMode.API,
///                     },
///                     BootstrapClusterCreatorAdminPermissions = true,
///                 },
///                 Arn = "hcepxlffwylmwulxcktedclqczlia",
///                 CertificateAuthority = null,
///                 ClientRequestToken = "zatyvyitnzgzpclfoxmzocvpc",
///                 ConnectorConfig = new AzureNative.AwsConnector.Inputs.ConnectorConfigResponseArgs
///                 {
///                     ActivationCode = "pay",
///                     ActivationExpiry = "2024-10-08T03:50:52.459Z",
///                     ActivationId = "vmvmutvfuygzczgtsutkls",
///                     Provider = "ngrakrrq",
///                     RoleArn = "jcu",
///                 },
///                 CreatedAt = "2024-10-08T03:50:52.460Z",
///                 EncryptionConfig = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.EncryptionConfigArgs
///                     {
///                         Provider = new AzureNative.AwsConnector.Inputs.ProviderArgs
///                         {
///                             KeyArn = "ynvyktdadcoepkg",
///                         },
///                         Resources = new[]
///                         {
///                             "luiywwdjzfsrozikidayeump",
///                         },
///                     },
///                 },
///                 Endpoint = "bvdvtunxiggcpmncdeflirifck",
///                 Health = new AzureNative.AwsConnector.Inputs.ClusterHealthArgs
///                 {
///                     Issues = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.ClusterIssueArgs
///                         {
///                             Code = new AzureNative.AwsConnector.Inputs.ClusterIssueCodeEnumValueArgs
///                             {
///                                 Value = AzureNative.AwsConnector.ClusterIssueCode.AccessDenied,
///                             },
///                             Message = "mwtvogjihbqys",
///                             ResourceIds = new[]
///                             {
///                                 "gnfkewljeibgooftzbraahnxysx",
///                             },
///                         },
///                     },
///                 },
///                 Id = "zmnyjrmqynglvrhpkkqkpazfyv",
///                 Identity = new AzureNative.AwsConnector.Inputs.IdentityArgs
///                 {
///                     Oidc = new AzureNative.AwsConnector.Inputs.OIDCArgs
///                     {
///                         Issuer = "otiqmbvjucermteuonkxgdftf",
///                     },
///                 },
///                 KubernetesNetworkConfig = new AzureNative.AwsConnector.Inputs.KubernetesNetworkConfigResponseArgs
///                 {
///                     IpFamily = new AzureNative.AwsConnector.Inputs.IpFamilyEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.IpFamily.Ipv4,
///                     },
///                     ServiceIpv4Cidr = "llpoqidqkuhvzzwbkiynhrucvgglk",
///                     ServiceIpv6Cidr = "nfdslge",
///                 },
///                 Logging = new AzureNative.AwsConnector.Inputs.LoggingArgs
///                 {
///                     ClusterLogging = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.LogSetupArgs
///                         {
///                             Enabled = true,
///                             Types = new[]
///                             {
///                                 AzureNative.AwsConnector.LogType.Api,
///                             },
///                         },
///                     },
///                 },
///                 Name = "fjvxhqvmvbshnltkuozc",
///                 OutpostConfig = new AzureNative.AwsConnector.Inputs.OutpostConfigResponseArgs
///                 {
///                     ControlPlaneInstanceType = "dbqfhwaxdzegqxqopkhaevcs",
///                     ControlPlanePlacement = new AzureNative.AwsConnector.Inputs.ControlPlanePlacementResponseArgs
///                     {
///                         GroupName = "qrpyvhb",
///                     },
///                     OutpostArns = new[]
///                     {
///                         "lkvzvf",
///                     },
///                 },
///                 PlatformVersion = "ezmalzlqyiuhsxxdribckieg",
///                 ResourcesVpcConfig = new AzureNative.AwsConnector.Inputs.VpcConfigResponseArgs
///                 {
///                     SecurityGroupIds = new[]
///                     {
///                         "ljodkq",
///                     },
///                     SubnetIds = new[]
///                     {
///                         "pmazpgqowrfoi",
///                     },
///                 },
///                 RoleArn = "uvceqehkmdtkxgakuckm",
///                 Status = new AzureNative.AwsConnector.Inputs.ClusterStatusEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.ClusterStatus.ACTIVE,
///                 },
///                 Tags =
///                 {
///                     { "key783", "hullzzbjeblerbopmncvydtkpcd" },
///                 },
///                 Version = "ngoffoetqqgv",
///             },
///             AwsRegion = "urhi",
///             AwsSourceSchema = "gkfmtslfbglu",
///             AwsTags =
///             {
///                 { "key7789", "hxv" },
///             },
///             PublicCloudConnectorsResourceId = "uadwidkemgzwde",
///             PublicCloudResourceName = "kqeiozkswbnhscn",
///         },
///         ResourceUri = "vutdhhavszx",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	awsconnector "github.com/pulumi/pulumi-azure-native-sdk/awsconnector/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := awsconnector.NewEksCluster(ctx, "eksCluster", &awsconnector.EksClusterArgs{
/// 			Properties: &awsconnector.EksClusterPropertiesArgs{
/// 				Arn:          pulumi.String("xhoylvamhuqnvruh"),
/// 				AwsAccountId: pulumi.String("sebsvgbgzb"),
/// 				AwsProperties: &awsconnector.AwsEksClusterPropertiesArgs{
/// 					AccessConfig: &awsconnector.AccessConfigResponseArgs{
/// 						AuthenticationMode: &awsconnector.AuthenticationModeEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.AuthenticationModeAPI),
/// 						},
/// 						BootstrapClusterCreatorAdminPermissions: pulumi.Bool(true),
/// 					},
/// 					Arn:                  pulumi.String("hcepxlffwylmwulxcktedclqczlia"),
/// 					CertificateAuthority: &awsconnector.CertificateArgs{},
/// 					ClientRequestToken:   pulumi.String("zatyvyitnzgzpclfoxmzocvpc"),
/// 					ConnectorConfig: &awsconnector.ConnectorConfigResponseArgs{
/// 						ActivationCode:   pulumi.String("pay"),
/// 						ActivationExpiry: pulumi.String("2024-10-08T03:50:52.459Z"),
/// 						ActivationId:     pulumi.String("vmvmutvfuygzczgtsutkls"),
/// 						Provider:         pulumi.String("ngrakrrq"),
/// 						RoleArn:          pulumi.String("jcu"),
/// 					},
/// 					CreatedAt: pulumi.String("2024-10-08T03:50:52.460Z"),
/// 					EncryptionConfig: awsconnector.EncryptionConfigArray{
/// 						&awsconnector.EncryptionConfigArgs{
/// 							Provider: &awsconnector.ProviderArgs{
/// 								KeyArn: pulumi.String("ynvyktdadcoepkg"),
/// 							},
/// 							Resources: pulumi.StringArray{
/// 								pulumi.String("luiywwdjzfsrozikidayeump"),
/// 							},
/// 						},
/// 					},
/// 					Endpoint: pulumi.String("bvdvtunxiggcpmncdeflirifck"),
/// 					Health: &awsconnector.ClusterHealthArgs{
/// 						Issues: awsconnector.ClusterIssueArray{
/// 							&awsconnector.ClusterIssueArgs{
/// 								Code: &awsconnector.ClusterIssueCodeEnumValueArgs{
/// 									Value: pulumi.String(awsconnector.ClusterIssueCodeAccessDenied),
/// 								},
/// 								Message: pulumi.String("mwtvogjihbqys"),
/// 								ResourceIds: pulumi.StringArray{
/// 									pulumi.String("gnfkewljeibgooftzbraahnxysx"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Id: pulumi.String("zmnyjrmqynglvrhpkkqkpazfyv"),
/// 					Identity: &awsconnector.IdentityArgs{
/// 						Oidc: &awsconnector.OIDCArgs{
/// 							Issuer: pulumi.String("otiqmbvjucermteuonkxgdftf"),
/// 						},
/// 					},
/// 					KubernetesNetworkConfig: &awsconnector.KubernetesNetworkConfigResponseArgs{
/// 						IpFamily: &awsconnector.IpFamilyEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.IpFamilyIpv4),
/// 						},
/// 						ServiceIpv4Cidr: pulumi.String("llpoqidqkuhvzzwbkiynhrucvgglk"),
/// 						ServiceIpv6Cidr: pulumi.String("nfdslge"),
/// 					},
/// 					Logging: &awsconnector.LoggingArgs{
/// 						ClusterLogging: awsconnector.LogSetupArray{
/// 							&awsconnector.LogSetupArgs{
/// 								Enabled: pulumi.Bool(true),
/// 								Types: pulumi.StringArray{
/// 									pulumi.String(awsconnector.LogTypeApi),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("fjvxhqvmvbshnltkuozc"),
/// 					OutpostConfig: &awsconnector.OutpostConfigResponseArgs{
/// 						ControlPlaneInstanceType: pulumi.String("dbqfhwaxdzegqxqopkhaevcs"),
/// 						ControlPlanePlacement: &awsconnector.ControlPlanePlacementResponseArgs{
/// 							GroupName: pulumi.String("qrpyvhb"),
/// 						},
/// 						OutpostArns: pulumi.StringArray{
/// 							pulumi.String("lkvzvf"),
/// 						},
/// 					},
/// 					PlatformVersion: pulumi.String("ezmalzlqyiuhsxxdribckieg"),
/// 					ResourcesVpcConfig: &awsconnector.VpcConfigResponseArgs{
/// 						SecurityGroupIds: pulumi.StringArray{
/// 							pulumi.String("ljodkq"),
/// 						},
/// 						SubnetIds: pulumi.StringArray{
/// 							pulumi.String("pmazpgqowrfoi"),
/// 						},
/// 					},
/// 					RoleArn: pulumi.String("uvceqehkmdtkxgakuckm"),
/// 					Status: &awsconnector.ClusterStatusEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.ClusterStatusACTIVE),
/// 					},
/// 					Tags: pulumi.StringMap{
/// 						"key783": pulumi.String("hullzzbjeblerbopmncvydtkpcd"),
/// 					},
/// 					Version: pulumi.String("ngoffoetqqgv"),
/// 				},
/// 				AwsRegion:       pulumi.String("urhi"),
/// 				AwsSourceSchema: pulumi.String("gkfmtslfbglu"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key7789": pulumi.String("hxv"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("uadwidkemgzwde"),
/// 				PublicCloudResourceName:         pulumi.String("kqeiozkswbnhscn"),
/// 			},
/// 			ResourceUri: pulumi.String("vutdhhavszx"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.awsconnector.EksCluster;
/// import com.pulumi.azurenative.awsconnector.EksClusterArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EksClusterPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEksClusterPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AccessConfigResponseArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AuthenticationModeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CertificateArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ConnectorConfigResponseArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ClusterHealthArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.IdentityArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.OIDCArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.KubernetesNetworkConfigResponseArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.IpFamilyEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LoggingArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.OutpostConfigResponseArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ControlPlanePlacementResponseArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.VpcConfigResponseArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ClusterStatusEnumValueArgs;
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
///         var eksCluster = new EksCluster("eksCluster", EksClusterArgs.builder()
///             .properties(EksClusterPropertiesArgs.builder()
///                 .arn("xhoylvamhuqnvruh")
///                 .awsAccountId("sebsvgbgzb")
///                 .awsProperties(AwsEksClusterPropertiesArgs.builder()
///                     .accessConfig(AccessConfigResponseArgs.builder()
///                         .authenticationMode(AuthenticationModeEnumValueArgs.builder()
///                             .value("API")
///                             .build())
///                         .bootstrapClusterCreatorAdminPermissions(true)
///                         .build())
///                     .arn("hcepxlffwylmwulxcktedclqczlia")
///                     .certificateAuthority(CertificateArgs.builder()
///                         .build())
///                     .clientRequestToken("zatyvyitnzgzpclfoxmzocvpc")
///                     .connectorConfig(ConnectorConfigResponseArgs.builder()
///                         .activationCode("pay")
///                         .activationExpiry("2024-10-08T03:50:52.459Z")
///                         .activationId("vmvmutvfuygzczgtsutkls")
///                         .provider("ngrakrrq")
///                         .roleArn("jcu")
///                         .build())
///                     .createdAt("2024-10-08T03:50:52.460Z")
///                     .encryptionConfig(EncryptionConfigArgs.builder()
///                         .provider(ProviderArgs.builder()
///                             .keyArn("ynvyktdadcoepkg")
///                             .build())
///                         .resources("luiywwdjzfsrozikidayeump")
///                         .build())
///                     .endpoint("bvdvtunxiggcpmncdeflirifck")
///                     .health(ClusterHealthArgs.builder()
///                         .issues(ClusterIssueArgs.builder()
///                             .code(ClusterIssueCodeEnumValueArgs.builder()
///                                 .value("AccessDenied")
///                                 .build())
///                             .message("mwtvogjihbqys")
///                             .resourceIds("gnfkewljeibgooftzbraahnxysx")
///                             .build())
///                         .build())
///                     .id("zmnyjrmqynglvrhpkkqkpazfyv")
///                     .identity(IdentityArgs.builder()
///                         .oidc(OIDCArgs.builder()
///                             .issuer("otiqmbvjucermteuonkxgdftf")
///                             .build())
///                         .build())
///                     .kubernetesNetworkConfig(KubernetesNetworkConfigResponseArgs.builder()
///                         .ipFamily(IpFamilyEnumValueArgs.builder()
///                             .value("ipv4")
///                             .build())
///                         .serviceIpv4Cidr("llpoqidqkuhvzzwbkiynhrucvgglk")
///                         .serviceIpv6Cidr("nfdslge")
///                         .build())
///                     .logging(LoggingArgs.builder()
///                         .clusterLogging(LogSetupArgs.builder()
///                             .enabled(true)
///                             .types("api")
///                             .build())
///                         .build())
///                     .name("fjvxhqvmvbshnltkuozc")
///                     .outpostConfig(OutpostConfigResponseArgs.builder()
///                         .controlPlaneInstanceType("dbqfhwaxdzegqxqopkhaevcs")
///                         .controlPlanePlacement(ControlPlanePlacementResponseArgs.builder()
///                             .groupName("qrpyvhb")
///                             .build())
///                         .outpostArns("lkvzvf")
///                         .build())
///                     .platformVersion("ezmalzlqyiuhsxxdribckieg")
///                     .resourcesVpcConfig(VpcConfigResponseArgs.builder()
///                         .securityGroupIds("ljodkq")
///                         .subnetIds("pmazpgqowrfoi")
///                         .build())
///                     .roleArn("uvceqehkmdtkxgakuckm")
///                     .status(ClusterStatusEnumValueArgs.builder()
///                         .value("ACTIVE")
///                         .build())
///                     .tags(Map.of("key783", "hullzzbjeblerbopmncvydtkpcd"))
///                     .version("ngoffoetqqgv")
///                     .build())
///                 .awsRegion("urhi")
///                 .awsSourceSchema("gkfmtslfbglu")
///                 .awsTags(Map.of("key7789", "hxv"))
///                 .publicCloudConnectorsResourceId("uadwidkemgzwde")
///                 .publicCloudResourceName("kqeiozkswbnhscn")
///                 .build())
///             .resourceUri("vutdhhavszx")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const eksCluster = new azure_native.awsconnector.EksCluster("eksCluster", {
///     properties: {
///         arn: "xhoylvamhuqnvruh",
///         awsAccountId: "sebsvgbgzb",
///         awsProperties: {
///             accessConfig: {
///                 authenticationMode: {
///                     value: azure_native.awsconnector.AuthenticationMode.API,
///                 },
///                 bootstrapClusterCreatorAdminPermissions: true,
///             },
///             arn: "hcepxlffwylmwulxcktedclqczlia",
///             certificateAuthority: {},
///             clientRequestToken: "zatyvyitnzgzpclfoxmzocvpc",
///             connectorConfig: {
///                 activationCode: "pay",
///                 activationExpiry: "2024-10-08T03:50:52.459Z",
///                 activationId: "vmvmutvfuygzczgtsutkls",
///                 provider: "ngrakrrq",
///                 roleArn: "jcu",
///             },
///             createdAt: "2024-10-08T03:50:52.460Z",
///             encryptionConfig: [{
///                 provider: {
///                     keyArn: "ynvyktdadcoepkg",
///                 },
///                 resources: ["luiywwdjzfsrozikidayeump"],
///             }],
///             endpoint: "bvdvtunxiggcpmncdeflirifck",
///             health: {
///                 issues: [{
///                     code: {
///                         value: azure_native.awsconnector.ClusterIssueCode.AccessDenied,
///                     },
///                     message: "mwtvogjihbqys",
///                     resourceIds: ["gnfkewljeibgooftzbraahnxysx"],
///                 }],
///             },
///             id: "zmnyjrmqynglvrhpkkqkpazfyv",
///             identity: {
///                 oidc: {
///                     issuer: "otiqmbvjucermteuonkxgdftf",
///                 },
///             },
///             kubernetesNetworkConfig: {
///                 ipFamily: {
///                     value: azure_native.awsconnector.IpFamily.Ipv4,
///                 },
///                 serviceIpv4Cidr: "llpoqidqkuhvzzwbkiynhrucvgglk",
///                 serviceIpv6Cidr: "nfdslge",
///             },
///             logging: {
///                 clusterLogging: [{
///                     enabled: true,
///                     types: [azure_native.awsconnector.LogType.Api],
///                 }],
///             },
///             name: "fjvxhqvmvbshnltkuozc",
///             outpostConfig: {
///                 controlPlaneInstanceType: "dbqfhwaxdzegqxqopkhaevcs",
///                 controlPlanePlacement: {
///                     groupName: "qrpyvhb",
///                 },
///                 outpostArns: ["lkvzvf"],
///             },
///             platformVersion: "ezmalzlqyiuhsxxdribckieg",
///             resourcesVpcConfig: {
///                 securityGroupIds: ["ljodkq"],
///                 subnetIds: ["pmazpgqowrfoi"],
///             },
///             roleArn: "uvceqehkmdtkxgakuckm",
///             status: {
///                 value: azure_native.awsconnector.ClusterStatus.ACTIVE,
///             },
///             tags: {
///                 key783: "hullzzbjeblerbopmncvydtkpcd",
///             },
///             version: "ngoffoetqqgv",
///         },
///         awsRegion: "urhi",
///         awsSourceSchema: "gkfmtslfbglu",
///         awsTags: {
///             key7789: "hxv",
///         },
///         publicCloudConnectorsResourceId: "uadwidkemgzwde",
///         publicCloudResourceName: "kqeiozkswbnhscn",
///     },
///     resourceUri: "vutdhhavszx",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// eks_cluster = azure_native.awsconnector.EksCluster("eksCluster",
///     properties={
///         "arn": "xhoylvamhuqnvruh",
///         "aws_account_id": "sebsvgbgzb",
///         "aws_properties": {
///             "access_config": {
///                 "authentication_mode": {
///                     "value": azure_native.awsconnector.AuthenticationMode.API,
///                 },
///                 "bootstrap_cluster_creator_admin_permissions": True,
///             },
///             "arn": "hcepxlffwylmwulxcktedclqczlia",
///             "certificate_authority": {},
///             "client_request_token": "zatyvyitnzgzpclfoxmzocvpc",
///             "connector_config": {
///                 "activation_code": "pay",
///                 "activation_expiry": "2024-10-08T03:50:52.459Z",
///                 "activation_id": "vmvmutvfuygzczgtsutkls",
///                 "provider": "ngrakrrq",
///                 "role_arn": "jcu",
///             },
///             "created_at": "2024-10-08T03:50:52.460Z",
///             "encryption_config": [{
///                 "provider": {
///                     "key_arn": "ynvyktdadcoepkg",
///                 },
///                 "resources": ["luiywwdjzfsrozikidayeump"],
///             }],
///             "endpoint": "bvdvtunxiggcpmncdeflirifck",
///             "health": {
///                 "issues": [{
///                     "code": {
///                         "value": azure_native.awsconnector.ClusterIssueCode.ACCESS_DENIED,
///                     },
///                     "message": "mwtvogjihbqys",
///                     "resource_ids": ["gnfkewljeibgooftzbraahnxysx"],
///                 }],
///             },
///             "id": "zmnyjrmqynglvrhpkkqkpazfyv",
///             "identity": {
///                 "oidc": {
///                     "issuer": "otiqmbvjucermteuonkxgdftf",
///                 },
///             },
///             "kubernetes_network_config": {
///                 "ip_family": {
///                     "value": azure_native.awsconnector.IpFamily.IPV4,
///                 },
///                 "service_ipv4_cidr": "llpoqidqkuhvzzwbkiynhrucvgglk",
///                 "service_ipv6_cidr": "nfdslge",
///             },
///             "logging": {
///                 "cluster_logging": [{
///                     "enabled": True,
///                     "types": [azure_native.awsconnector.LogType.API],
///                 }],
///             },
///             "name": "fjvxhqvmvbshnltkuozc",
///             "outpost_config": {
///                 "control_plane_instance_type": "dbqfhwaxdzegqxqopkhaevcs",
///                 "control_plane_placement": {
///                     "group_name": "qrpyvhb",
///                 },
///                 "outpost_arns": ["lkvzvf"],
///             },
///             "platform_version": "ezmalzlqyiuhsxxdribckieg",
///             "resources_vpc_config": {
///                 "security_group_ids": ["ljodkq"],
///                 "subnet_ids": ["pmazpgqowrfoi"],
///             },
///             "role_arn": "uvceqehkmdtkxgakuckm",
///             "status": {
///                 "value": azure_native.awsconnector.ClusterStatus.ACTIVE,
///             },
///             "tags": {
///                 "key783": "hullzzbjeblerbopmncvydtkpcd",
///             },
///             "version": "ngoffoetqqgv",
///         },
///         "aws_region": "urhi",
///         "aws_source_schema": "gkfmtslfbglu",
///         "aws_tags": {
///             "key7789": "hxv",
///         },
///         "public_cloud_connectors_resource_id": "uadwidkemgzwde",
///         "public_cloud_resource_name": "kqeiozkswbnhscn",
///     },
///     resource_uri="vutdhhavszx")
///
/// ```
///
/// ```yaml
/// resources:
///   eksCluster:
///     type: azure-native:awsconnector:EksCluster
///     properties:
///       properties:
///         arn: xhoylvamhuqnvruh
///         awsAccountId: sebsvgbgzb
///         awsProperties:
///           accessConfig:
///             authenticationMode:
///               value: API
///             bootstrapClusterCreatorAdminPermissions: true
///           arn: hcepxlffwylmwulxcktedclqczlia
///           certificateAuthority: {}
///           clientRequestToken: zatyvyitnzgzpclfoxmzocvpc
///           connectorConfig:
///             activationCode: pay
///             activationExpiry: 2024-10-08T03:50:52.459Z
///             activationId: vmvmutvfuygzczgtsutkls
///             provider: ngrakrrq
///             roleArn: jcu
///           createdAt: 2024-10-08T03:50:52.460Z
///           encryptionConfig:
///             - provider:
///                 keyArn: ynvyktdadcoepkg
///               resources:
///                 - luiywwdjzfsrozikidayeump
///           endpoint: bvdvtunxiggcpmncdeflirifck
///           health:
///             issues:
///               - code:
///                   value: AccessDenied
///                 message: mwtvogjihbqys
///                 resourceIds:
///                   - gnfkewljeibgooftzbraahnxysx
///           id: zmnyjrmqynglvrhpkkqkpazfyv
///           identity:
///             oidc:
///               issuer: otiqmbvjucermteuonkxgdftf
///           kubernetesNetworkConfig:
///             ipFamily:
///               value: ipv4
///             serviceIpv4Cidr: llpoqidqkuhvzzwbkiynhrucvgglk
///             serviceIpv6Cidr: nfdslge
///           logging:
///             clusterLogging:
///               - enabled: true
///                 types:
///                   - api
///           name: fjvxhqvmvbshnltkuozc
///           outpostConfig:
///             controlPlaneInstanceType: dbqfhwaxdzegqxqopkhaevcs
///             controlPlanePlacement:
///               groupName: qrpyvhb
///             outpostArns:
///               - lkvzvf
///           platformVersion: ezmalzlqyiuhsxxdribckieg
///           resourcesVpcConfig:
///             securityGroupIds:
///               - ljodkq
///             subnetIds:
///               - pmazpgqowrfoi
///           roleArn: uvceqehkmdtkxgakuckm
///           status:
///             value: ACTIVE
///           tags:
///             key783: hullzzbjeblerbopmncvydtkpcd
///           version: ngoffoetqqgv
///         awsRegion: urhi
///         awsSourceSchema: gkfmtslfbglu
///         awsTags:
///           key7789: hxv
///         publicCloudConnectorsResourceId: uadwidkemgzwde
///         publicCloudResourceName: kqeiozkswbnhscn
///       resourceUri: vutdhhavszx
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:awsconnector:EksCluster wlhloozwhakfmmafcdu /{resourceUri}/providers/Microsoft.AwsConnector/eksClusters/default
/// ```
class EksCluster extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<EksClusterPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EksCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EksCluster]. {@macro pulumi_awsconnector_eks_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EksCluster(
    String name, {
    EksClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:EksCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EksClusterPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EksClusterPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
