import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_service_args.dart';
import 'ecs_service_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EcsServices_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ecsService = new AzureNative.AwsConnector.EcsService("ecsService", new()
///     {
///         Location = "xqpjwxermnqxbnitxykbnjhw",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.EcsServicePropertiesArgs
///         {
///             Arn = "advapj",
///             AwsAccountId = "egkrtzylfud",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEcsServicePropertiesArgs
///             {
///                 CapacityProviderStrategy = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.CapacityProviderStrategyItemArgs
///                     {
///                         Base = 4,
///                         CapacityProvider = "wlfpynlwozihqvkgynmdqqmojbs",
///                         Weight = 28,
///                     },
///                 },
///                 Cluster = "rdbkmvsugiuvbwkuzagsnrx",
///                 DeploymentConfiguration = new AzureNative.AwsConnector.Inputs.DeploymentConfigurationArgs
///                 {
///                     Alarms = new AzureNative.AwsConnector.Inputs.DeploymentAlarmsArgs
///                     {
///                         AlarmNames = new[]
///                         {
///                             "cibbvixciizruhpdxhpkifpwsaq",
///                         },
///                         Enable = true,
///                         Rollback = true,
///                     },
///                     DeploymentCircuitBreaker = new AzureNative.AwsConnector.Inputs.DeploymentCircuitBreakerArgs
///                     {
///                         Enable = true,
///                         Rollback = true,
///                     },
///                     MaximumPercent = 14,
///                     MinimumHealthyPercent = 21,
///                 },
///                 DeploymentController = new AzureNative.AwsConnector.Inputs.DeploymentControllerArgs
///                 {
///                     Type = AzureNative.AwsConnector.DeploymentControllerType.CODE_DEPLOY,
///                 },
///                 DesiredCount = 21,
///                 EnableECSManagedTags = true,
///                 EnableExecuteCommand = true,
///                 HealthCheckGracePeriodSeconds = 1,
///                 LaunchType = AzureNative.AwsConnector.LaunchType.EC2,
///                 LoadBalancers = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.LoadBalancerArgs
///                     {
///                         ContainerName = "vjvntpnuzyftbm",
///                         ContainerPort = 17,
///                         LoadBalancerName = "eryjxwmbfkms",
///                         TargetGroupArn = "woxbyyccpmqyiy",
///                     },
///                 },
///                 Name = "vo",
///                 NetworkConfiguration = new AzureNative.AwsConnector.Inputs.NetworkConfigurationArgs
///                 {
///                     AwsvpcConfiguration = new AzureNative.AwsConnector.Inputs.AwsVpcConfigurationArgs
///                     {
///                         AssignPublicIp = AzureNative.AwsConnector.AwsVpcConfigurationAssignPublicIp.DISABLED,
///                         SecurityGroups = new[]
///                         {
///                             "uoauevqyxylmvje",
///                         },
///                         Subnets = new[]
///                         {
///                             "gkqxeakxvyw",
///                         },
///                     },
///                 },
///                 PlacementConstraints = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.PlacementConstraintArgs
///                     {
///                         Expression = "hxzfzxbfmqqiwgbpgn",
///                         Type = AzureNative.AwsConnector.PlacementConstraintType.DistinctInstance,
///                     },
///                 },
///                 PlacementStrategies = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.PlacementStrategyArgs
///                     {
///                         Field = "tyrqdzgjrkwfhzwebvqld",
///                         Type = AzureNative.AwsConnector.PlacementStrategyType.Binpack,
///                     },
///                 },
///                 PlatformVersion = "sfsqyvslsustugopfnnzssjli",
///                 PropagateTags = AzureNative.AwsConnector.PropagateTags.SERVICE,
///                 Role = "te",
///                 SchedulingStrategy = AzureNative.AwsConnector.SchedulingStrategy.DAEMON,
///                 ServiceArn = "zuuoanjk",
///                 ServiceConnectConfiguration = new AzureNative.AwsConnector.Inputs.ServiceConnectConfigurationArgs
///                 {
///                     Enabled = true,
///                     LogConfiguration = new AzureNative.AwsConnector.Inputs.LogConfigurationArgs
///                     {
///                         LogDriver = "xwshxwanyuqrfzboxwfv",
///                         SecretOptions = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.SecretArgs
///                             {
///                                 Name = "uxsxwquwbafmsmbyyivhsjrjmfpmim",
///                                 ValueFrom = "jnygsbiroyjlgrhs",
///                             },
///                         },
///                     },
///                     Namespace = "tlewpbulbuguuuvq",
///                     Services = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.ServiceConnectServiceArgs
///                         {
///                             ClientAliases = new[]
///                             {
///                                 new AzureNative.AwsConnector.Inputs.ServiceConnectClientAliasArgs
///                                 {
///                                     DnsName = "hnnavbjclqhbdebomjoqzo",
///                                     Port = 16,
///                                 },
///                             },
///                             DiscoveryName = "zuhijazofg",
///                             IngressPortOverride = 26,
///                             PortName = "q",
///                             Timeout = new AzureNative.AwsConnector.Inputs.TimeoutConfigurationArgs
///                             {
///                                 IdleTimeoutSeconds = 11,
///                                 PerRequestTimeoutSeconds = 22,
///                             },
///                             Tls = new AzureNative.AwsConnector.Inputs.ServiceConnectTlsConfigurationArgs
///                             {
///                                 IssuerCertificateAuthority = new AzureNative.AwsConnector.Inputs.ServiceConnectTlsCertificateAuthorityArgs
///                                 {
///                                     AwsPcaAuthorityArn = "fqrmk",
///                                 },
///                                 KmsKey = "jdjym",
///                                 RoleArn = "stdhwuiylmutipeonkolqjnbqelds",
///                             },
///                         },
///                     },
///                 },
///                 ServiceName = "lyblywxxfszkgaaornuxliolfbft",
///                 ServiceRegistries = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ServiceRegistryArgs
///                     {
///                         ContainerName = "ppbxlxmpdbri",
///                         ContainerPort = 7,
///                         Port = 6,
///                         RegistryArn = "qmfm",
///                     },
///                 },
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "dteknaijsygghfdplikegztgz",
///                         Value = "qukd",
///                     },
///                 },
///                 TaskDefinition = "fozrumijzejhpjxeqkmthsswwuden",
///                 VolumeConfigurations = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ServiceVolumeConfigurationArgs
///                     {
///                         ManagedEBSVolume = new AzureNative.AwsConnector.Inputs.ServiceManagedEBSVolumeConfigurationArgs
///                         {
///                             Encrypted = true,
///                             FilesystemType = "ugwxqcjnrqonyao",
///                             Iops = 10,
///                             KmsKeyId = "oyuobklzhgpvg",
///                             RoleArn = "gdudzczxymgopjjzqubzphgdi",
///                             SizeInGiB = 15,
///                             SnapshotId = "yff",
///                             TagSpecifications = new[]
///                             {
///                                 new AzureNative.AwsConnector.Inputs.EBSTagSpecificationArgs
///                                 {
///                                     PropagateTags = AzureNative.AwsConnector.EBSTagSpecificationPropagateTags.SERVICE,
///                                     ResourceType = "tocxgkuiblcccawaenqv",
///                                     Tags = new[]
///                                     {
///                                         new AzureNative.AwsConnector.Inputs.TagArgs
///                                         {
///                                             Key = "dteknaijsygghfdplikegztgz",
///                                             Value = "qukd",
///                                         },
///                                     },
///                                 },
///                             },
///                             Throughput = 3,
///                             VolumeType = "uwvjfmuzpksfpnfsukbunbuqcwxslx",
///                         },
///                         Name = "zkqnipaoexthwwot",
///                     },
///                 },
///             },
///             AwsRegion = "pwmulwhqhosmbthwzammshywxzaxhi",
///             AwsSourceSchema = "woodigpcfntomkursi",
///             AwsTags =
///             {
///                 { "key3094", "gxbzlhku" },
///             },
///             PublicCloudConnectorsResourceId = "ghyukpeo",
///             PublicCloudResourceName = "jumpzlzalckrkaqg",
///         },
///         ResourceGroupName = "rgecsService",
///         Tags =
///         {
///             { "key8484", "nnsyti" },
///         },
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
/// 		_, err := awsconnector.NewEcsService(ctx, "ecsService", &awsconnector.EcsServiceArgs{
/// 			Location: pulumi.String("xqpjwxermnqxbnitxykbnjhw"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.EcsServicePropertiesArgs{
/// 				Arn:          pulumi.String("advapj"),
/// 				AwsAccountId: pulumi.String("egkrtzylfud"),
/// 				AwsProperties: &awsconnector.AwsEcsServicePropertiesArgs{
/// 					CapacityProviderStrategy: awsconnector.CapacityProviderStrategyItemArray{
/// 						&awsconnector.CapacityProviderStrategyItemArgs{
/// 							Base:             pulumi.Int(4),
/// 							CapacityProvider: pulumi.String("wlfpynlwozihqvkgynmdqqmojbs"),
/// 							Weight:           pulumi.Int(28),
/// 						},
/// 					},
/// 					Cluster: pulumi.String("rdbkmvsugiuvbwkuzagsnrx"),
/// 					DeploymentConfiguration: &awsconnector.DeploymentConfigurationArgs{
/// 						Alarms: &awsconnector.DeploymentAlarmsArgs{
/// 							AlarmNames: pulumi.StringArray{
/// 								pulumi.String("cibbvixciizruhpdxhpkifpwsaq"),
/// 							},
/// 							Enable:   pulumi.Bool(true),
/// 							Rollback: pulumi.Bool(true),
/// 						},
/// 						DeploymentCircuitBreaker: &awsconnector.DeploymentCircuitBreakerArgs{
/// 							Enable:   pulumi.Bool(true),
/// 							Rollback: pulumi.Bool(true),
/// 						},
/// 						MaximumPercent:        pulumi.Int(14),
/// 						MinimumHealthyPercent: pulumi.Int(21),
/// 					},
/// 					DeploymentController: &awsconnector.DeploymentControllerArgs{
/// 						Type: pulumi.String(awsconnector.DeploymentControllerType_CODE_DEPLOY),
/// 					},
/// 					DesiredCount:                  pulumi.Int(21),
/// 					EnableECSManagedTags:          pulumi.Bool(true),
/// 					EnableExecuteCommand:          pulumi.Bool(true),
/// 					HealthCheckGracePeriodSeconds: pulumi.Int(1),
/// 					LaunchType:                    pulumi.String(awsconnector.LaunchTypeEC2),
/// 					LoadBalancers: awsconnector.LoadBalancerArray{
/// 						&awsconnector.LoadBalancerArgs{
/// 							ContainerName:    pulumi.String("vjvntpnuzyftbm"),
/// 							ContainerPort:    pulumi.Int(17),
/// 							LoadBalancerName: pulumi.String("eryjxwmbfkms"),
/// 							TargetGroupArn:   pulumi.String("woxbyyccpmqyiy"),
/// 						},
/// 					},
/// 					Name: pulumi.String("vo"),
/// 					NetworkConfiguration: &awsconnector.NetworkConfigurationArgs{
/// 						AwsvpcConfiguration: &awsconnector.AwsVpcConfigurationArgs{
/// 							AssignPublicIp: pulumi.String(awsconnector.AwsVpcConfigurationAssignPublicIpDISABLED),
/// 							SecurityGroups: pulumi.StringArray{
/// 								pulumi.String("uoauevqyxylmvje"),
/// 							},
/// 							Subnets: pulumi.StringArray{
/// 								pulumi.String("gkqxeakxvyw"),
/// 							},
/// 						},
/// 					},
/// 					PlacementConstraints: awsconnector.PlacementConstraintArray{
/// 						&awsconnector.PlacementConstraintArgs{
/// 							Expression: pulumi.String("hxzfzxbfmqqiwgbpgn"),
/// 							Type:       pulumi.String(awsconnector.PlacementConstraintTypeDistinctInstance),
/// 						},
/// 					},
/// 					PlacementStrategies: awsconnector.PlacementStrategyArray{
/// 						&awsconnector.PlacementStrategyArgs{
/// 							Field: pulumi.String("tyrqdzgjrkwfhzwebvqld"),
/// 							Type:  pulumi.String(awsconnector.PlacementStrategyTypeBinpack),
/// 						},
/// 					},
/// 					PlatformVersion:    pulumi.String("sfsqyvslsustugopfnnzssjli"),
/// 					PropagateTags:      pulumi.String(awsconnector.PropagateTagsSERVICE),
/// 					Role:               pulumi.String("te"),
/// 					SchedulingStrategy: pulumi.String(awsconnector.SchedulingStrategyDAEMON),
/// 					ServiceArn:         pulumi.String("zuuoanjk"),
/// 					ServiceConnectConfiguration: &awsconnector.ServiceConnectConfigurationArgs{
/// 						Enabled: pulumi.Bool(true),
/// 						LogConfiguration: &awsconnector.LogConfigurationArgs{
/// 							LogDriver: pulumi.String("xwshxwanyuqrfzboxwfv"),
/// 							SecretOptions: awsconnector.SecretArray{
/// 								&awsconnector.SecretArgs{
/// 									Name:      pulumi.String("uxsxwquwbafmsmbyyivhsjrjmfpmim"),
/// 									ValueFrom: pulumi.String("jnygsbiroyjlgrhs"),
/// 								},
/// 							},
/// 						},
/// 						Namespace: pulumi.String("tlewpbulbuguuuvq"),
/// 						Services: awsconnector.ServiceConnectServiceArray{
/// 							&awsconnector.ServiceConnectServiceArgs{
/// 								ClientAliases: awsconnector.ServiceConnectClientAliasArray{
/// 									&awsconnector.ServiceConnectClientAliasArgs{
/// 										DnsName: pulumi.String("hnnavbjclqhbdebomjoqzo"),
/// 										Port:    pulumi.Int(16),
/// 									},
/// 								},
/// 								DiscoveryName:       pulumi.String("zuhijazofg"),
/// 								IngressPortOverride: pulumi.Int(26),
/// 								PortName:            pulumi.String("q"),
/// 								Timeout: &awsconnector.TimeoutConfigurationArgs{
/// 									IdleTimeoutSeconds:       pulumi.Int(11),
/// 									PerRequestTimeoutSeconds: pulumi.Int(22),
/// 								},
/// 								Tls: &awsconnector.ServiceConnectTlsConfigurationArgs{
/// 									IssuerCertificateAuthority: &awsconnector.ServiceConnectTlsCertificateAuthorityArgs{
/// 										AwsPcaAuthorityArn: pulumi.String("fqrmk"),
/// 									},
/// 									KmsKey:  pulumi.String("jdjym"),
/// 									RoleArn: pulumi.String("stdhwuiylmutipeonkolqjnbqelds"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					ServiceName: pulumi.String("lyblywxxfszkgaaornuxliolfbft"),
/// 					ServiceRegistries: awsconnector.ServiceRegistryArray{
/// 						&awsconnector.ServiceRegistryArgs{
/// 							ContainerName: pulumi.String("ppbxlxmpdbri"),
/// 							ContainerPort: pulumi.Int(7),
/// 							Port:          pulumi.Int(6),
/// 							RegistryArn:   pulumi.String("qmfm"),
/// 						},
/// 					},
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("dteknaijsygghfdplikegztgz"),
/// 							Value: pulumi.String("qukd"),
/// 						},
/// 					},
/// 					TaskDefinition: pulumi.String("fozrumijzejhpjxeqkmthsswwuden"),
/// 					VolumeConfigurations: awsconnector.ServiceVolumeConfigurationArray{
/// 						&awsconnector.ServiceVolumeConfigurationArgs{
/// 							ManagedEBSVolume: &awsconnector.ServiceManagedEBSVolumeConfigurationArgs{
/// 								Encrypted:      pulumi.Bool(true),
/// 								FilesystemType: pulumi.String("ugwxqcjnrqonyao"),
/// 								Iops:           pulumi.Int(10),
/// 								KmsKeyId:       pulumi.String("oyuobklzhgpvg"),
/// 								RoleArn:        pulumi.String("gdudzczxymgopjjzqubzphgdi"),
/// 								SizeInGiB:      pulumi.Int(15),
/// 								SnapshotId:     pulumi.String("yff"),
/// 								TagSpecifications: awsconnector.EBSTagSpecificationArray{
/// 									&awsconnector.EBSTagSpecificationArgs{
/// 										PropagateTags: pulumi.String(awsconnector.EBSTagSpecificationPropagateTagsSERVICE),
/// 										ResourceType:  pulumi.String("tocxgkuiblcccawaenqv"),
/// 										Tags: awsconnector.TagArray{
/// 											&awsconnector.TagArgs{
/// 												Key:   pulumi.String("dteknaijsygghfdplikegztgz"),
/// 												Value: pulumi.String("qukd"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 								Throughput: pulumi.Int(3),
/// 								VolumeType: pulumi.String("uwvjfmuzpksfpnfsukbunbuqcwxslx"),
/// 							},
/// 							Name: pulumi.String("zkqnipaoexthwwot"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("pwmulwhqhosmbthwzammshywxzaxhi"),
/// 				AwsSourceSchema: pulumi.String("woodigpcfntomkursi"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key3094": pulumi.String("gxbzlhku"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("ghyukpeo"),
/// 				PublicCloudResourceName:         pulumi.String("jumpzlzalckrkaqg"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgecsService"),
/// 			Tags: pulumi.StringMap{
/// 				"key8484": pulumi.String("nnsyti"),
/// 			},
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
/// import com.pulumi.azurenative.awsconnector.EcsService;
/// import com.pulumi.azurenative.awsconnector.EcsServiceArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EcsServicePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEcsServicePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DeploymentConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DeploymentAlarmsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DeploymentCircuitBreakerArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DeploymentControllerArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.NetworkConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsVpcConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ServiceConnectConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LogConfigurationArgs;
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
///         var ecsService = new EcsService("ecsService", EcsServiceArgs.builder()
///             .location("xqpjwxermnqxbnitxykbnjhw")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(EcsServicePropertiesArgs.builder()
///                 .arn("advapj")
///                 .awsAccountId("egkrtzylfud")
///                 .awsProperties(AwsEcsServicePropertiesArgs.builder()
///                     .capacityProviderStrategy(CapacityProviderStrategyItemArgs.builder()
///                         .base(4)
///                         .capacityProvider("wlfpynlwozihqvkgynmdqqmojbs")
///                         .weight(28)
///                         .build())
///                     .cluster("rdbkmvsugiuvbwkuzagsnrx")
///                     .deploymentConfiguration(DeploymentConfigurationArgs.builder()
///                         .alarms(DeploymentAlarmsArgs.builder()
///                             .alarmNames("cibbvixciizruhpdxhpkifpwsaq")
///                             .enable(true)
///                             .rollback(true)
///                             .build())
///                         .deploymentCircuitBreaker(DeploymentCircuitBreakerArgs.builder()
///                             .enable(true)
///                             .rollback(true)
///                             .build())
///                         .maximumPercent(14)
///                         .minimumHealthyPercent(21)
///                         .build())
///                     .deploymentController(DeploymentControllerArgs.builder()
///                         .type("CODE_DEPLOY")
///                         .build())
///                     .desiredCount(21)
///                     .enableECSManagedTags(true)
///                     .enableExecuteCommand(true)
///                     .healthCheckGracePeriodSeconds(1)
///                     .launchType("EC2")
///                     .loadBalancers(LoadBalancerArgs.builder()
///                         .containerName("vjvntpnuzyftbm")
///                         .containerPort(17)
///                         .loadBalancerName("eryjxwmbfkms")
///                         .targetGroupArn("woxbyyccpmqyiy")
///                         .build())
///                     .name("vo")
///                     .networkConfiguration(NetworkConfigurationArgs.builder()
///                         .awsvpcConfiguration(AwsVpcConfigurationArgs.builder()
///                             .assignPublicIp("DISABLED")
///                             .securityGroups("uoauevqyxylmvje")
///                             .subnets("gkqxeakxvyw")
///                             .build())
///                         .build())
///                     .placementConstraints(PlacementConstraintArgs.builder()
///                         .expression("hxzfzxbfmqqiwgbpgn")
///                         .type("distinctInstance")
///                         .build())
///                     .placementStrategies(PlacementStrategyArgs.builder()
///                         .field("tyrqdzgjrkwfhzwebvqld")
///                         .type("binpack")
///                         .build())
///                     .platformVersion("sfsqyvslsustugopfnnzssjli")
///                     .propagateTags("SERVICE")
///                     .role("te")
///                     .schedulingStrategy("DAEMON")
///                     .serviceArn("zuuoanjk")
///                     .serviceConnectConfiguration(ServiceConnectConfigurationArgs.builder()
///                         .enabled(true)
///                         .logConfiguration(LogConfigurationArgs.builder()
///                             .logDriver("xwshxwanyuqrfzboxwfv")
///                             .secretOptions(SecretArgs.builder()
///                                 .name("uxsxwquwbafmsmbyyivhsjrjmfpmim")
///                                 .valueFrom("jnygsbiroyjlgrhs")
///                                 .build())
///                             .build())
///                         .namespace("tlewpbulbuguuuvq")
///                         .services(ServiceConnectServiceArgs.builder()
///                             .clientAliases(ServiceConnectClientAliasArgs.builder()
///                                 .dnsName("hnnavbjclqhbdebomjoqzo")
///                                 .port(16)
///                                 .build())
///                             .discoveryName("zuhijazofg")
///                             .ingressPortOverride(26)
///                             .portName("q")
///                             .timeout(TimeoutConfigurationArgs.builder()
///                                 .idleTimeoutSeconds(11)
///                                 .perRequestTimeoutSeconds(22)
///                                 .build())
///                             .tls(ServiceConnectTlsConfigurationArgs.builder()
///                                 .issuerCertificateAuthority(ServiceConnectTlsCertificateAuthorityArgs.builder()
///                                     .awsPcaAuthorityArn("fqrmk")
///                                     .build())
///                                 .kmsKey("jdjym")
///                                 .roleArn("stdhwuiylmutipeonkolqjnbqelds")
///                                 .build())
///                             .build())
///                         .build())
///                     .serviceName("lyblywxxfszkgaaornuxliolfbft")
///                     .serviceRegistries(ServiceRegistryArgs.builder()
///                         .containerName("ppbxlxmpdbri")
///                         .containerPort(7)
///                         .port(6)
///                         .registryArn("qmfm")
///                         .build())
///                     .tags(TagArgs.builder()
///                         .key("dteknaijsygghfdplikegztgz")
///                         .value("qukd")
///                         .build())
///                     .taskDefinition("fozrumijzejhpjxeqkmthsswwuden")
///                     .volumeConfigurations(ServiceVolumeConfigurationArgs.builder()
///                         .managedEBSVolume(ServiceManagedEBSVolumeConfigurationArgs.builder()
///                             .encrypted(true)
///                             .filesystemType("ugwxqcjnrqonyao")
///                             .iops(10)
///                             .kmsKeyId("oyuobklzhgpvg")
///                             .roleArn("gdudzczxymgopjjzqubzphgdi")
///                             .sizeInGiB(15)
///                             .snapshotId("yff")
///                             .tagSpecifications(EBSTagSpecificationArgs.builder()
///                                 .propagateTags("SERVICE")
///                                 .resourceType("tocxgkuiblcccawaenqv")
///                                 .tags(TagArgs.builder()
///                                     .key("dteknaijsygghfdplikegztgz")
///                                     .value("qukd")
///                                     .build())
///                                 .build())
///                             .throughput(3)
///                             .volumeType("uwvjfmuzpksfpnfsukbunbuqcwxslx")
///                             .build())
///                         .name("zkqnipaoexthwwot")
///                         .build())
///                     .build())
///                 .awsRegion("pwmulwhqhosmbthwzammshywxzaxhi")
///                 .awsSourceSchema("woodigpcfntomkursi")
///                 .awsTags(Map.of("key3094", "gxbzlhku"))
///                 .publicCloudConnectorsResourceId("ghyukpeo")
///                 .publicCloudResourceName("jumpzlzalckrkaqg")
///                 .build())
///             .resourceGroupName("rgecsService")
///             .tags(Map.of("key8484", "nnsyti"))
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
/// const ecsService = new azure_native.awsconnector.EcsService("ecsService", {
///     location: "xqpjwxermnqxbnitxykbnjhw",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "advapj",
///         awsAccountId: "egkrtzylfud",
///         awsProperties: {
///             capacityProviderStrategy: [{
///                 base: 4,
///                 capacityProvider: "wlfpynlwozihqvkgynmdqqmojbs",
///                 weight: 28,
///             }],
///             cluster: "rdbkmvsugiuvbwkuzagsnrx",
///             deploymentConfiguration: {
///                 alarms: {
///                     alarmNames: ["cibbvixciizruhpdxhpkifpwsaq"],
///                     enable: true,
///                     rollback: true,
///                 },
///                 deploymentCircuitBreaker: {
///                     enable: true,
///                     rollback: true,
///                 },
///                 maximumPercent: 14,
///                 minimumHealthyPercent: 21,
///             },
///             deploymentController: {
///                 type: azure_native.awsconnector.DeploymentControllerType.CODE_DEPLOY,
///             },
///             desiredCount: 21,
///             enableECSManagedTags: true,
///             enableExecuteCommand: true,
///             healthCheckGracePeriodSeconds: 1,
///             launchType: azure_native.awsconnector.LaunchType.EC2,
///             loadBalancers: [{
///                 containerName: "vjvntpnuzyftbm",
///                 containerPort: 17,
///                 loadBalancerName: "eryjxwmbfkms",
///                 targetGroupArn: "woxbyyccpmqyiy",
///             }],
///             name: "vo",
///             networkConfiguration: {
///                 awsvpcConfiguration: {
///                     assignPublicIp: azure_native.awsconnector.AwsVpcConfigurationAssignPublicIp.DISABLED,
///                     securityGroups: ["uoauevqyxylmvje"],
///                     subnets: ["gkqxeakxvyw"],
///                 },
///             },
///             placementConstraints: [{
///                 expression: "hxzfzxbfmqqiwgbpgn",
///                 type: azure_native.awsconnector.PlacementConstraintType.DistinctInstance,
///             }],
///             placementStrategies: [{
///                 field: "tyrqdzgjrkwfhzwebvqld",
///                 type: azure_native.awsconnector.PlacementStrategyType.Binpack,
///             }],
///             platformVersion: "sfsqyvslsustugopfnnzssjli",
///             propagateTags: azure_native.awsconnector.PropagateTags.SERVICE,
///             role: "te",
///             schedulingStrategy: azure_native.awsconnector.SchedulingStrategy.DAEMON,
///             serviceArn: "zuuoanjk",
///             serviceConnectConfiguration: {
///                 enabled: true,
///                 logConfiguration: {
///                     logDriver: "xwshxwanyuqrfzboxwfv",
///                     secretOptions: [{
///                         name: "uxsxwquwbafmsmbyyivhsjrjmfpmim",
///                         valueFrom: "jnygsbiroyjlgrhs",
///                     }],
///                 },
///                 namespace: "tlewpbulbuguuuvq",
///                 services: [{
///                     clientAliases: [{
///                         dnsName: "hnnavbjclqhbdebomjoqzo",
///                         port: 16,
///                     }],
///                     discoveryName: "zuhijazofg",
///                     ingressPortOverride: 26,
///                     portName: "q",
///                     timeout: {
///                         idleTimeoutSeconds: 11,
///                         perRequestTimeoutSeconds: 22,
///                     },
///                     tls: {
///                         issuerCertificateAuthority: {
///                             awsPcaAuthorityArn: "fqrmk",
///                         },
///                         kmsKey: "jdjym",
///                         roleArn: "stdhwuiylmutipeonkolqjnbqelds",
///                     },
///                 }],
///             },
///             serviceName: "lyblywxxfszkgaaornuxliolfbft",
///             serviceRegistries: [{
///                 containerName: "ppbxlxmpdbri",
///                 containerPort: 7,
///                 port: 6,
///                 registryArn: "qmfm",
///             }],
///             tags: [{
///                 key: "dteknaijsygghfdplikegztgz",
///                 value: "qukd",
///             }],
///             taskDefinition: "fozrumijzejhpjxeqkmthsswwuden",
///             volumeConfigurations: [{
///                 managedEBSVolume: {
///                     encrypted: true,
///                     filesystemType: "ugwxqcjnrqonyao",
///                     iops: 10,
///                     kmsKeyId: "oyuobklzhgpvg",
///                     roleArn: "gdudzczxymgopjjzqubzphgdi",
///                     sizeInGiB: 15,
///                     snapshotId: "yff",
///                     tagSpecifications: [{
///                         propagateTags: azure_native.awsconnector.EBSTagSpecificationPropagateTags.SERVICE,
///                         resourceType: "tocxgkuiblcccawaenqv",
///                         tags: [{
///                             key: "dteknaijsygghfdplikegztgz",
///                             value: "qukd",
///                         }],
///                     }],
///                     throughput: 3,
///                     volumeType: "uwvjfmuzpksfpnfsukbunbuqcwxslx",
///                 },
///                 name: "zkqnipaoexthwwot",
///             }],
///         },
///         awsRegion: "pwmulwhqhosmbthwzammshywxzaxhi",
///         awsSourceSchema: "woodigpcfntomkursi",
///         awsTags: {
///             key3094: "gxbzlhku",
///         },
///         publicCloudConnectorsResourceId: "ghyukpeo",
///         publicCloudResourceName: "jumpzlzalckrkaqg",
///     },
///     resourceGroupName: "rgecsService",
///     tags: {
///         key8484: "nnsyti",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ecs_service = azure_native.awsconnector.EcsService("ecsService",
///     location="xqpjwxermnqxbnitxykbnjhw",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "advapj",
///         "aws_account_id": "egkrtzylfud",
///         "aws_properties": {
///             "capacity_provider_strategy": [{
///                 "base": 4,
///                 "capacity_provider": "wlfpynlwozihqvkgynmdqqmojbs",
///                 "weight": 28,
///             }],
///             "cluster": "rdbkmvsugiuvbwkuzagsnrx",
///             "deployment_configuration": {
///                 "alarms": {
///                     "alarm_names": ["cibbvixciizruhpdxhpkifpwsaq"],
///                     "enable": True,
///                     "rollback": True,
///                 },
///                 "deployment_circuit_breaker": {
///                     "enable": True,
///                     "rollback": True,
///                 },
///                 "maximum_percent": 14,
///                 "minimum_healthy_percent": 21,
///             },
///             "deployment_controller": {
///                 "type": azure_native.awsconnector.DeploymentControllerType.COD_E_DEPLOY,
///             },
///             "desired_count": 21,
///             "enable_ecs_managed_tags": True,
///             "enable_execute_command": True,
///             "health_check_grace_period_seconds": 1,
///             "launch_type": azure_native.awsconnector.LaunchType.EC2,
///             "load_balancers": [{
///                 "container_name": "vjvntpnuzyftbm",
///                 "container_port": 17,
///                 "load_balancer_name": "eryjxwmbfkms",
///                 "target_group_arn": "woxbyyccpmqyiy",
///             }],
///             "name": "vo",
///             "network_configuration": {
///                 "awsvpc_configuration": {
///                     "assign_public_ip": azure_native.awsconnector.AwsVpcConfigurationAssignPublicIp.DISABLED,
///                     "security_groups": ["uoauevqyxylmvje"],
///                     "subnets": ["gkqxeakxvyw"],
///                 },
///             },
///             "placement_constraints": [{
///                 "expression": "hxzfzxbfmqqiwgbpgn",
///                 "type": azure_native.awsconnector.PlacementConstraintType.DISTINCT_INSTANCE,
///             }],
///             "placement_strategies": [{
///                 "field": "tyrqdzgjrkwfhzwebvqld",
///                 "type": azure_native.awsconnector.PlacementStrategyType.BINPACK,
///             }],
///             "platform_version": "sfsqyvslsustugopfnnzssjli",
///             "propagate_tags": azure_native.awsconnector.PropagateTags.SERVICE,
///             "role": "te",
///             "scheduling_strategy": azure_native.awsconnector.SchedulingStrategy.DAEMON,
///             "service_arn": "zuuoanjk",
///             "service_connect_configuration": {
///                 "enabled": True,
///                 "log_configuration": {
///                     "log_driver": "xwshxwanyuqrfzboxwfv",
///                     "secret_options": [{
///                         "name": "uxsxwquwbafmsmbyyivhsjrjmfpmim",
///                         "value_from": "jnygsbiroyjlgrhs",
///                     }],
///                 },
///                 "namespace": "tlewpbulbuguuuvq",
///                 "services": [{
///                     "client_aliases": [{
///                         "dns_name": "hnnavbjclqhbdebomjoqzo",
///                         "port": 16,
///                     }],
///                     "discovery_name": "zuhijazofg",
///                     "ingress_port_override": 26,
///                     "port_name": "q",
///                     "timeout": {
///                         "idle_timeout_seconds": 11,
///                         "per_request_timeout_seconds": 22,
///                     },
///                     "tls": {
///                         "issuer_certificate_authority": {
///                             "aws_pca_authority_arn": "fqrmk",
///                         },
///                         "kms_key": "jdjym",
///                         "role_arn": "stdhwuiylmutipeonkolqjnbqelds",
///                     },
///                 }],
///             },
///             "service_name": "lyblywxxfszkgaaornuxliolfbft",
///             "service_registries": [{
///                 "container_name": "ppbxlxmpdbri",
///                 "container_port": 7,
///                 "port": 6,
///                 "registry_arn": "qmfm",
///             }],
///             "tags": [{
///                 "key": "dteknaijsygghfdplikegztgz",
///                 "value": "qukd",
///             }],
///             "task_definition": "fozrumijzejhpjxeqkmthsswwuden",
///             "volume_configurations": [{
///                 "managed_ebs_volume": {
///                     "encrypted": True,
///                     "filesystem_type": "ugwxqcjnrqonyao",
///                     "iops": 10,
///                     "kms_key_id": "oyuobklzhgpvg",
///                     "role_arn": "gdudzczxymgopjjzqubzphgdi",
///                     "size_in_gi_b": 15,
///                     "snapshot_id": "yff",
///                     "tag_specifications": [{
///                         "propagate_tags": azure_native.awsconnector.EBSTagSpecificationPropagateTags.SERVICE,
///                         "resource_type": "tocxgkuiblcccawaenqv",
///                         "tags": [{
///                             "key": "dteknaijsygghfdplikegztgz",
///                             "value": "qukd",
///                         }],
///                     }],
///                     "throughput": 3,
///                     "volume_type": "uwvjfmuzpksfpnfsukbunbuqcwxslx",
///                 },
///                 "name": "zkqnipaoexthwwot",
///             }],
///         },
///         "aws_region": "pwmulwhqhosmbthwzammshywxzaxhi",
///         "aws_source_schema": "woodigpcfntomkursi",
///         "aws_tags": {
///             "key3094": "gxbzlhku",
///         },
///         "public_cloud_connectors_resource_id": "ghyukpeo",
///         "public_cloud_resource_name": "jumpzlzalckrkaqg",
///     },
///     resource_group_name="rgecsService",
///     tags={
///         "key8484": "nnsyti",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ecsService:
///     type: azure-native:awsconnector:EcsService
///     properties:
///       location: xqpjwxermnqxbnitxykbnjhw
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: advapj
///         awsAccountId: egkrtzylfud
///         awsProperties:
///           capacityProviderStrategy:
///             - base: 4
///               capacityProvider: wlfpynlwozihqvkgynmdqqmojbs
///               weight: 28
///           cluster: rdbkmvsugiuvbwkuzagsnrx
///           deploymentConfiguration:
///             alarms:
///               alarmNames:
///                 - cibbvixciizruhpdxhpkifpwsaq
///               enable: true
///               rollback: true
///             deploymentCircuitBreaker:
///               enable: true
///               rollback: true
///             maximumPercent: 14
///             minimumHealthyPercent: 21
///           deploymentController:
///             type: CODE_DEPLOY
///           desiredCount: 21
///           enableECSManagedTags: true
///           enableExecuteCommand: true
///           healthCheckGracePeriodSeconds: 1
///           launchType: EC2
///           loadBalancers:
///             - containerName: vjvntpnuzyftbm
///               containerPort: 17
///               loadBalancerName: eryjxwmbfkms
///               targetGroupArn: woxbyyccpmqyiy
///           name: vo
///           networkConfiguration:
///             awsvpcConfiguration:
///               assignPublicIp: DISABLED
///               securityGroups:
///                 - uoauevqyxylmvje
///               subnets:
///                 - gkqxeakxvyw
///           placementConstraints:
///             - expression: hxzfzxbfmqqiwgbpgn
///               type: distinctInstance
///           placementStrategies:
///             - field: tyrqdzgjrkwfhzwebvqld
///               type: binpack
///           platformVersion: sfsqyvslsustugopfnnzssjli
///           propagateTags: SERVICE
///           role: te
///           schedulingStrategy: DAEMON
///           serviceArn: zuuoanjk
///           serviceConnectConfiguration:
///             enabled: true
///             logConfiguration:
///               logDriver: xwshxwanyuqrfzboxwfv
///               secretOptions:
///                 - name: uxsxwquwbafmsmbyyivhsjrjmfpmim
///                   valueFrom: jnygsbiroyjlgrhs
///             namespace: tlewpbulbuguuuvq
///             services:
///               - clientAliases:
///                   - dnsName: hnnavbjclqhbdebomjoqzo
///                     port: 16
///                 discoveryName: zuhijazofg
///                 ingressPortOverride: 26
///                 portName: q
///                 timeout:
///                   idleTimeoutSeconds: 11
///                   perRequestTimeoutSeconds: 22
///                 tls:
///                   issuerCertificateAuthority:
///                     awsPcaAuthorityArn: fqrmk
///                   kmsKey: jdjym
///                   roleArn: stdhwuiylmutipeonkolqjnbqelds
///           serviceName: lyblywxxfszkgaaornuxliolfbft
///           serviceRegistries:
///             - containerName: ppbxlxmpdbri
///               containerPort: 7
///               port: 6
///               registryArn: qmfm
///           tags:
///             - key: dteknaijsygghfdplikegztgz
///               value: qukd
///           taskDefinition: fozrumijzejhpjxeqkmthsswwuden
///           volumeConfigurations:
///             - managedEBSVolume:
///                 encrypted: true
///                 filesystemType: ugwxqcjnrqonyao
///                 iops: 10
///                 kmsKeyId: oyuobklzhgpvg
///                 roleArn: gdudzczxymgopjjzqubzphgdi
///                 sizeInGiB: 15
///                 snapshotId: yff
///                 tagSpecifications:
///                   - propagateTags: SERVICE
///                     resourceType: tocxgkuiblcccawaenqv
///                     tags:
///                       - key: dteknaijsygghfdplikegztgz
///                         value: qukd
///                 throughput: 3
///                 volumeType: uwvjfmuzpksfpnfsukbunbuqcwxslx
///               name: zkqnipaoexthwwot
///         awsRegion: pwmulwhqhosmbthwzammshywxzaxhi
///         awsSourceSchema: woodigpcfntomkursi
///         awsTags:
///           key3094: gxbzlhku
///         publicCloudConnectorsResourceId: ghyukpeo
///         publicCloudResourceName: jumpzlzalckrkaqg
///       resourceGroupName: rgecsService
///       tags:
///         key8484: nnsyti
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
/// $ pulumi import azure-native:awsconnector:EcsService meuyovtzgqj /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ecsServices/{name}
/// ```
class EcsService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<EcsServicePropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EcsService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsService]. {@macro pulumi_awsconnector_ecs_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsService(
    String name, {
    EcsServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:EcsService',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EcsServicePropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
