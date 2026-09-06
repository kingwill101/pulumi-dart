import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_scaling_auto_scaling_group_args.dart';
import 'auto_scaling_auto_scaling_group_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AutoScalingAutoScalingGroups_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var autoScalingAutoScalingGroup = new AzureNative.AwsConnector.AutoScalingAutoScalingGroup("autoScalingAutoScalingGroup", new()
///     {
///         Location = "vfitxfllzgknmbaqgpsv",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.AutoScalingAutoScalingGroupPropertiesArgs
///         {
///             Arn = "gsso",
///             AwsAccountId = "eogdcteuaaazi",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsAutoScalingAutoScalingGroupPropertiesArgs
///             {
///                 AutoScalingGroupName = "zvp",
///                 AvailabilityZones = new[]
///                 {
///                     "bvcnltgekeqrzklsnfieubhugr",
///                 },
///                 CapacityRebalance = true,
///                 Context = "dnmovg",
///                 Cooldown = "r",
///                 DefaultInstanceWarmup = 24,
///                 DesiredCapacity = "xtu",
///                 DesiredCapacityType = "wncmimbdveox",
///                 HealthCheckGracePeriod = 9,
///                 HealthCheckType = "ustkoarefpvnhxrtqua",
///                 InstanceId = "noghdbfliygsadtjosovasxq",
///                 InstanceMaintenancePolicy = new AzureNative.AwsConnector.Inputs.InstanceMaintenancePolicyArgs
///                 {
///                     MaxHealthyPercentage = 23,
///                     MinHealthyPercentage = 6,
///                 },
///                 LaunchConfigurationName = "rgadwyrtzaxbfkbsbjaygujtc",
///                 LaunchTemplate = new AzureNative.AwsConnector.Inputs.LaunchTemplateSpecificationArgs
///                 {
///                     LaunchTemplateId = "zpcgiqsftmwjzwqifodopjuvfoxed",
///                     LaunchTemplateName = "jq",
///                     Version = "kdlpart",
///                 },
///                 LifecycleHookSpecificationList = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.LifecycleHookSpecificationArgs
///                     {
///                         DefaultResult = "qbeojpqbpnhst",
///                         HeartbeatTimeout = 14,
///                         LifecycleHookName = "xeqfmdmthyzrdxjbmdkyy",
///                         LifecycleTransition = "xsufodhykhlutvc",
///                         NotificationMetadata = "bknbkafxdozjlnprrlkrqstgwchxl",
///                         NotificationTargetARN = "dkeqhlwuifyfamkufdryfiybxnle",
///                         RoleARN = "bhenujqtabiiryjgl",
///                     },
///                 },
///                 LoadBalancerNames = new[]
///                 {
///                     "qsgaefmtltksmmwswpdfmnlwvovi",
///                 },
///                 MaxInstanceLifetime = 25,
///                 MaxSize = "vqxfpkdyusfijwc",
///                 MetricsCollection = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.MetricsCollectionArgs
///                     {
///                         Granularity = "ygxetadl",
///                         Metrics = new[]
///                         {
///                             "hwukwnkctznjelut",
///                         },
///                     },
///                 },
///                 MinSize = "rfdwflldttnzph",
///                 MixedInstancesPolicy = new AzureNative.AwsConnector.Inputs.MixedInstancesPolicyArgs
///                 {
///                     InstancesDistribution = new AzureNative.AwsConnector.Inputs.InstancesDistributionArgs
///                     {
///                         OnDemandAllocationStrategy = "s",
///                         OnDemandBaseCapacity = 11,
///                         OnDemandPercentageAboveBaseCapacity = 13,
///                         SpotAllocationStrategy = "mdqoylvmdfgnktujkkgcargpzgejts",
///                         SpotInstancePools = 21,
///                         SpotMaxPrice = "civdjpljorkrvqganofneu",
///                     },
///                     LaunchTemplate = new AzureNative.AwsConnector.Inputs.LaunchTemplateArgs
///                     {
///                         LaunchTemplateSpecification = new AzureNative.AwsConnector.Inputs.LaunchTemplateSpecificationArgs
///                         {
///                             LaunchTemplateId = "zpcgiqsftmwjzwqifodopjuvfoxed",
///                             LaunchTemplateName = "jq",
///                             Version = "kdlpart",
///                         },
///                         Overrides = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.LaunchTemplateOverridesArgs
///                             {
///                                 InstanceRequirements = new AzureNative.AwsConnector.Inputs.InstanceRequirementsArgs
///                                 {
///                                     AcceleratorCount = new AzureNative.AwsConnector.Inputs.AcceleratorCountRequestArgs
///                                     {
///                                         Max = 22,
///                                         Min = 12,
///                                     },
///                                     AcceleratorManufacturers = new[]
///                                     {
///                                         "yrnnynorjjxvzppzrgpahymhm",
///                                     },
///                                     AcceleratorNames = new[]
///                                     {
///                                         "iqmentbrnypcxv",
///                                     },
///                                     AcceleratorTotalMemoryMiB = new AzureNative.AwsConnector.Inputs.AcceleratorTotalMemoryMiBRequestArgs
///                                     {
///                                         Max = 7,
///                                         Min = 29,
///                                     },
///                                     AcceleratorTypes = new[]
///                                     {
///                                         "kmvwibkxxklqitqxqqlpvfifvo",
///                                     },
///                                     AllowedInstanceTypes = new[]
///                                     {
///                                         "tzrxlaofwygbqglbwdxnqjy",
///                                     },
///                                     BareMetal = "kugjpzsjreywlvvzkebv",
///                                     BaselineEbsBandwidthMbps = new AzureNative.AwsConnector.Inputs.BaselineEbsBandwidthMbpsRequestArgs
///                                     {
///                                         Max = 2,
///                                         Min = 19,
///                                     },
///                                     BurstablePerformance = "jpwudasuoonf",
///                                     CpuManufacturers = new[]
///                                     {
///                                         "scbxthzijnmur",
///                                     },
///                                     ExcludedInstanceTypes = new[]
///                                     {
///                                         "edadlo",
///                                     },
///                                     InstanceGenerations = new[]
///                                     {
///                                         "f",
///                                     },
///                                     LocalStorage = "wglfmvquwice",
///                                     LocalStorageTypes = new[]
///                                     {
///                                         "talnjrldmventgtzlwpaxfcenp",
///                                     },
///                                     MaxSpotPriceAsPercentageOfOptimalOnDemandPrice = 15,
///                                     MemoryGiBPerVCpu = new AzureNative.AwsConnector.Inputs.MemoryGiBPerVCpuRequestArgs
///                                     {
///                                         Max = 23,
///                                         Min = 29,
///                                     },
///                                     MemoryMiB = new AzureNative.AwsConnector.Inputs.MemoryMiBRequestArgs
///                                     {
///                                         Max = 27,
///                                         Min = 27,
///                                     },
///                                     NetworkBandwidthGbps = new AzureNative.AwsConnector.Inputs.NetworkBandwidthGbpsRequestArgs
///                                     {
///                                         Max = 18,
///                                         Min = 29,
///                                     },
///                                     NetworkInterfaceCount = new AzureNative.AwsConnector.Inputs.NetworkInterfaceCountRequestArgs
///                                     {
///                                         Max = 14,
///                                         Min = 26,
///                                     },
///                                     OnDemandMaxPricePercentageOverLowestPrice = 8,
///                                     RequireHibernateSupport = true,
///                                     SpotMaxPricePercentageOverLowestPrice = 9,
///                                     TotalLocalStorageGB = new AzureNative.AwsConnector.Inputs.TotalLocalStorageGBRequestArgs
///                                     {
///                                         Max = 19,
///                                         Min = 7,
///                                     },
///                                     VCpuCount = new AzureNative.AwsConnector.Inputs.VCpuCountRequestArgs
///                                     {
///                                         Max = 9,
///                                         Min = 26,
///                                     },
///                                 },
///                                 InstanceType = "phudgcnbis",
///                                 LaunchTemplateSpecification = new AzureNative.AwsConnector.Inputs.LaunchTemplateSpecificationArgs
///                                 {
///                                     LaunchTemplateId = "zpcgiqsftmwjzwqifodopjuvfoxed",
///                                     LaunchTemplateName = "jq",
///                                     Version = "kdlpart",
///                                 },
///                                 WeightedCapacity = "iqa",
///                             },
///                         },
///                     },
///                 },
///                 NewInstancesProtectedFromScaleIn = true,
///                 NotificationConfiguration = new AzureNative.AwsConnector.Inputs.AutoScalingGroupNotificationConfigurationArgs
///                 {
///                     NotificationTypes = new[]
///                     {
///                         "jzepnjbwtsw",
///                     },
///                     TopicARN = "hndjrwrlqssgciezop",
///                 },
///                 NotificationConfigurations = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.AutoScalingGroupNotificationConfigurationArgs
///                     {
///                         NotificationTypes = new[]
///                         {
///                             "jzepnjbwtsw",
///                         },
///                         TopicARN = "hndjrwrlqssgciezop",
///                     },
///                 },
///                 PlacementGroup = "pmanetwktlujhykhxtcekv",
///                 ServiceLinkedRoleARN = "ffqtfkdv",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagPropertyArgs
///                     {
///                         Key = "vtmmpdwnenzwsmxgf",
///                         PropagateAtLaunch = true,
///                         Value = "xoncdkvjanxdfklvixodkyg",
///                     },
///                 },
///                 TargetGroupARNs = new[]
///                 {
///                     "ttxjwgboopxrdiqxyqjdujw",
///                 },
///                 TerminationPolicies = new[]
///                 {
///                     "jvwpdujegrgjbdrxbvcjgs",
///                 },
///                 VpcZoneIdentifier = new[]
///                 {
///                     "fmqvstmohqtmjslrnsiuodevi",
///                 },
///             },
///             AwsRegion = "cfqguizvjpckdsvetalwo",
///             AwsSourceSchema = "koleijkwf",
///             AwsTags =
///             {
///                 { "key6990", "lmywyo" },
///             },
///             PublicCloudConnectorsResourceId = "q",
///             PublicCloudResourceName = "blomfowfltqwzdghycehvvdnr",
///         },
///         ResourceGroupName = "rgautoScalingAutoScalingGroup",
///         Tags =
///         {
///             { "key2337", "scybnvsqelp" },
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
/// 		_, err := awsconnector.NewAutoScalingAutoScalingGroup(ctx, "autoScalingAutoScalingGroup", &awsconnector.AutoScalingAutoScalingGroupArgs{
/// 			Location: pulumi.String("vfitxfllzgknmbaqgpsv"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.AutoScalingAutoScalingGroupPropertiesArgs{
/// 				Arn:          pulumi.String("gsso"),
/// 				AwsAccountId: pulumi.String("eogdcteuaaazi"),
/// 				AwsProperties: &awsconnector.AwsAutoScalingAutoScalingGroupPropertiesArgs{
/// 					AutoScalingGroupName: pulumi.String("zvp"),
/// 					AvailabilityZones: pulumi.StringArray{
/// 						pulumi.String("bvcnltgekeqrzklsnfieubhugr"),
/// 					},
/// 					CapacityRebalance:      pulumi.Bool(true),
/// 					Context:                pulumi.String("dnmovg"),
/// 					Cooldown:               pulumi.String("r"),
/// 					DefaultInstanceWarmup:  pulumi.Int(24),
/// 					DesiredCapacity:        pulumi.String("xtu"),
/// 					DesiredCapacityType:    pulumi.String("wncmimbdveox"),
/// 					HealthCheckGracePeriod: pulumi.Int(9),
/// 					HealthCheckType:        pulumi.String("ustkoarefpvnhxrtqua"),
/// 					InstanceId:             pulumi.String("noghdbfliygsadtjosovasxq"),
/// 					InstanceMaintenancePolicy: &awsconnector.InstanceMaintenancePolicyArgs{
/// 						MaxHealthyPercentage: pulumi.Int(23),
/// 						MinHealthyPercentage: pulumi.Int(6),
/// 					},
/// 					LaunchConfigurationName: pulumi.String("rgadwyrtzaxbfkbsbjaygujtc"),
/// 					LaunchTemplate: &awsconnector.LaunchTemplateSpecificationArgs{
/// 						LaunchTemplateId:   pulumi.String("zpcgiqsftmwjzwqifodopjuvfoxed"),
/// 						LaunchTemplateName: pulumi.String("jq"),
/// 						Version:            pulumi.String("kdlpart"),
/// 					},
/// 					LifecycleHookSpecificationList: awsconnector.LifecycleHookSpecificationArray{
/// 						&awsconnector.LifecycleHookSpecificationArgs{
/// 							DefaultResult:         pulumi.String("qbeojpqbpnhst"),
/// 							HeartbeatTimeout:      pulumi.Int(14),
/// 							LifecycleHookName:     pulumi.String("xeqfmdmthyzrdxjbmdkyy"),
/// 							LifecycleTransition:   pulumi.String("xsufodhykhlutvc"),
/// 							NotificationMetadata:  pulumi.String("bknbkafxdozjlnprrlkrqstgwchxl"),
/// 							NotificationTargetARN: pulumi.String("dkeqhlwuifyfamkufdryfiybxnle"),
/// 							RoleARN:               pulumi.String("bhenujqtabiiryjgl"),
/// 						},
/// 					},
/// 					LoadBalancerNames: pulumi.StringArray{
/// 						pulumi.String("qsgaefmtltksmmwswpdfmnlwvovi"),
/// 					},
/// 					MaxInstanceLifetime: pulumi.Int(25),
/// 					MaxSize:             pulumi.String("vqxfpkdyusfijwc"),
/// 					MetricsCollection: awsconnector.MetricsCollectionArray{
/// 						&awsconnector.MetricsCollectionArgs{
/// 							Granularity: pulumi.String("ygxetadl"),
/// 							Metrics: pulumi.StringArray{
/// 								pulumi.String("hwukwnkctznjelut"),
/// 							},
/// 						},
/// 					},
/// 					MinSize: pulumi.String("rfdwflldttnzph"),
/// 					MixedInstancesPolicy: &awsconnector.MixedInstancesPolicyArgs{
/// 						InstancesDistribution: &awsconnector.InstancesDistributionArgs{
/// 							OnDemandAllocationStrategy:          pulumi.String("s"),
/// 							OnDemandBaseCapacity:                pulumi.Int(11),
/// 							OnDemandPercentageAboveBaseCapacity: pulumi.Int(13),
/// 							SpotAllocationStrategy:              pulumi.String("mdqoylvmdfgnktujkkgcargpzgejts"),
/// 							SpotInstancePools:                   pulumi.Int(21),
/// 							SpotMaxPrice:                        pulumi.String("civdjpljorkrvqganofneu"),
/// 						},
/// 						LaunchTemplate: &awsconnector.LaunchTemplateArgs{
/// 							LaunchTemplateSpecification: &awsconnector.LaunchTemplateSpecificationArgs{
/// 								LaunchTemplateId:   pulumi.String("zpcgiqsftmwjzwqifodopjuvfoxed"),
/// 								LaunchTemplateName: pulumi.String("jq"),
/// 								Version:            pulumi.String("kdlpart"),
/// 							},
/// 							Overrides: awsconnector.LaunchTemplateOverridesArray{
/// 								&awsconnector.LaunchTemplateOverridesArgs{
/// 									InstanceRequirements: &awsconnector.InstanceRequirementsArgs{
/// 										AcceleratorCount: &awsconnector.AcceleratorCountRequestArgs{
/// 											Max: pulumi.Int(22),
/// 											Min: pulumi.Int(12),
/// 										},
/// 										AcceleratorManufacturers: pulumi.StringArray{
/// 											pulumi.String("yrnnynorjjxvzppzrgpahymhm"),
/// 										},
/// 										AcceleratorNames: pulumi.StringArray{
/// 											pulumi.String("iqmentbrnypcxv"),
/// 										},
/// 										AcceleratorTotalMemoryMiB: &awsconnector.AcceleratorTotalMemoryMiBRequestArgs{
/// 											Max: pulumi.Int(7),
/// 											Min: pulumi.Int(29),
/// 										},
/// 										AcceleratorTypes: pulumi.StringArray{
/// 											pulumi.String("kmvwibkxxklqitqxqqlpvfifvo"),
/// 										},
/// 										AllowedInstanceTypes: pulumi.StringArray{
/// 											pulumi.String("tzrxlaofwygbqglbwdxnqjy"),
/// 										},
/// 										BareMetal: pulumi.String("kugjpzsjreywlvvzkebv"),
/// 										BaselineEbsBandwidthMbps: &awsconnector.BaselineEbsBandwidthMbpsRequestArgs{
/// 											Max: pulumi.Int(2),
/// 											Min: pulumi.Int(19),
/// 										},
/// 										BurstablePerformance: pulumi.String("jpwudasuoonf"),
/// 										CpuManufacturers: pulumi.StringArray{
/// 											pulumi.String("scbxthzijnmur"),
/// 										},
/// 										ExcludedInstanceTypes: pulumi.StringArray{
/// 											pulumi.String("edadlo"),
/// 										},
/// 										InstanceGenerations: pulumi.StringArray{
/// 											pulumi.String("f"),
/// 										},
/// 										LocalStorage: pulumi.String("wglfmvquwice"),
/// 										LocalStorageTypes: pulumi.StringArray{
/// 											pulumi.String("talnjrldmventgtzlwpaxfcenp"),
/// 										},
/// 										MaxSpotPriceAsPercentageOfOptimalOnDemandPrice: pulumi.Int(15),
/// 										MemoryGiBPerVCpu: &awsconnector.MemoryGiBPerVCpuRequestArgs{
/// 											Max: pulumi.Int(23),
/// 											Min: pulumi.Int(29),
/// 										},
/// 										MemoryMiB: &awsconnector.MemoryMiBRequestArgs{
/// 											Max: pulumi.Int(27),
/// 											Min: pulumi.Int(27),
/// 										},
/// 										NetworkBandwidthGbps: &awsconnector.NetworkBandwidthGbpsRequestArgs{
/// 											Max: pulumi.Int(18),
/// 											Min: pulumi.Int(29),
/// 										},
/// 										NetworkInterfaceCount: &awsconnector.NetworkInterfaceCountRequestArgs{
/// 											Max: pulumi.Int(14),
/// 											Min: pulumi.Int(26),
/// 										},
/// 										OnDemandMaxPricePercentageOverLowestPrice: pulumi.Int(8),
/// 										RequireHibernateSupport:                   pulumi.Bool(true),
/// 										SpotMaxPricePercentageOverLowestPrice:     pulumi.Int(9),
/// 										TotalLocalStorageGB: &awsconnector.TotalLocalStorageGBRequestArgs{
/// 											Max: pulumi.Int(19),
/// 											Min: pulumi.Int(7),
/// 										},
/// 										VCpuCount: &awsconnector.VCpuCountRequestArgs{
/// 											Max: pulumi.Int(9),
/// 											Min: pulumi.Int(26),
/// 										},
/// 									},
/// 									InstanceType: pulumi.String("phudgcnbis"),
/// 									LaunchTemplateSpecification: &awsconnector.LaunchTemplateSpecificationArgs{
/// 										LaunchTemplateId:   pulumi.String("zpcgiqsftmwjzwqifodopjuvfoxed"),
/// 										LaunchTemplateName: pulumi.String("jq"),
/// 										Version:            pulumi.String("kdlpart"),
/// 									},
/// 									WeightedCapacity: pulumi.String("iqa"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					NewInstancesProtectedFromScaleIn: pulumi.Bool(true),
/// 					NotificationConfiguration: &awsconnector.AutoScalingGroupNotificationConfigurationArgs{
/// 						NotificationTypes: pulumi.StringArray{
/// 							pulumi.String("jzepnjbwtsw"),
/// 						},
/// 						TopicARN: pulumi.String("hndjrwrlqssgciezop"),
/// 					},
/// 					NotificationConfigurations: awsconnector.AutoScalingGroupNotificationConfigurationArray{
/// 						&awsconnector.AutoScalingGroupNotificationConfigurationArgs{
/// 							NotificationTypes: pulumi.StringArray{
/// 								pulumi.String("jzepnjbwtsw"),
/// 							},
/// 							TopicARN: pulumi.String("hndjrwrlqssgciezop"),
/// 						},
/// 					},
/// 					PlacementGroup:       pulumi.String("pmanetwktlujhykhxtcekv"),
/// 					ServiceLinkedRoleARN: pulumi.String("ffqtfkdv"),
/// 					Tags: awsconnector.TagPropertyArray{
/// 						&awsconnector.TagPropertyArgs{
/// 							Key:               pulumi.String("vtmmpdwnenzwsmxgf"),
/// 							PropagateAtLaunch: pulumi.Bool(true),
/// 							Value:             pulumi.String("xoncdkvjanxdfklvixodkyg"),
/// 						},
/// 					},
/// 					TargetGroupARNs: pulumi.StringArray{
/// 						pulumi.String("ttxjwgboopxrdiqxyqjdujw"),
/// 					},
/// 					TerminationPolicies: pulumi.StringArray{
/// 						pulumi.String("jvwpdujegrgjbdrxbvcjgs"),
/// 					},
/// 					VpcZoneIdentifier: pulumi.StringArray{
/// 						pulumi.String("fmqvstmohqtmjslrnsiuodevi"),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("cfqguizvjpckdsvetalwo"),
/// 				AwsSourceSchema: pulumi.String("koleijkwf"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key6990": pulumi.String("lmywyo"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("q"),
/// 				PublicCloudResourceName:         pulumi.String("blomfowfltqwzdghycehvvdnr"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgautoScalingAutoScalingGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"key2337": pulumi.String("scybnvsqelp"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_awsconnector_autoscalingautoscalinggroup" "autoScalingAutoScalingGroup" {
///   location = "vfitxfllzgknmbaqgpsv"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "gsso"
///     aws_account_id = "eogdcteuaaazi"
///     aws_properties = {
///       auto_scaling_group_name   = "zvp"
///       availability_zones        = ["bvcnltgekeqrzklsnfieubhugr"]
///       capacity_rebalance        = true
///       context                   = "dnmovg"
///       cooldown                  = "r"
///       default_instance_warmup   = 24
///       desired_capacity          = "xtu"
///       desired_capacity_type     = "wncmimbdveox"
///       health_check_grace_period = 9
///       health_check_type         = "ustkoarefpvnhxrtqua"
///       instance_id               = "noghdbfliygsadtjosovasxq"
///       instance_maintenance_policy = {
///         max_healthy_percentage = 23
///         min_healthy_percentage = 6
///       }
///       launch_configuration_name = "rgadwyrtzaxbfkbsbjaygujtc"
///       launch_template = {
///         launch_template_id   = "zpcgiqsftmwjzwqifodopjuvfoxed"
///         launch_template_name = "jq"
///         version              = "kdlpart"
///       }
///       lifecycle_hook_specification_list = [{
///         "defaultResult"         = "qbeojpqbpnhst"
///         "heartbeatTimeout"      = 14
///         "lifecycleHookName"     = "xeqfmdmthyzrdxjbmdkyy"
///         "lifecycleTransition"   = "xsufodhykhlutvc"
///         "notificationMetadata"  = "bknbkafxdozjlnprrlkrqstgwchxl"
///         "notificationTargetARN" = "dkeqhlwuifyfamkufdryfiybxnle"
///         "roleARN"               = "bhenujqtabiiryjgl"
///       }]
///       load_balancer_names   = ["qsgaefmtltksmmwswpdfmnlwvovi"]
///       max_instance_lifetime = 25
///       max_size              = "vqxfpkdyusfijwc"
///       metrics_collection = [{
///         "granularity" = "ygxetadl"
///         "metrics"     = ["hwukwnkctznjelut"]
///       }]
///       min_size = "rfdwflldttnzph"
///       mixed_instances_policy = {
///         instances_distribution = {
///           on_demand_allocation_strategy            = "s"
///           on_demand_base_capacity                  = 11
///           on_demand_percentage_above_base_capacity = 13
///           spot_allocation_strategy                 = "mdqoylvmdfgnktujkkgcargpzgejts"
///           spot_instance_pools                      = 21
///           spot_max_price                           = "civdjpljorkrvqganofneu"
///         }
///         launch_template = {
///           launch_template_specification = {
///             launch_template_id   = "zpcgiqsftmwjzwqifodopjuvfoxed"
///             launch_template_name = "jq"
///             version              = "kdlpart"
///           }
///           overrides = [{
///             "instanceRequirements" = {
///               "acceleratorCount" = {
///                 "max" = 22
///                 "min" = 12
///               }
///               "acceleratorManufacturers" = ["yrnnynorjjxvzppzrgpahymhm"]
///               "acceleratorNames"         = ["iqmentbrnypcxv"]
///               "acceleratorTotalMemoryMiB" = {
///                 "max" = 7
///                 "min" = 29
///               }
///               "acceleratorTypes"     = ["kmvwibkxxklqitqxqqlpvfifvo"]
///               "allowedInstanceTypes" = ["tzrxlaofwygbqglbwdxnqjy"]
///               "bareMetal"            = "kugjpzsjreywlvvzkebv"
///               "baselineEbsBandwidthMbps" = {
///                 "max" = 2
///                 "min" = 19
///               }
///               "burstablePerformance"                           = "jpwudasuoonf"
///               "cpuManufacturers"                               = ["scbxthzijnmur"]
///               "excludedInstanceTypes"                          = ["edadlo"]
///               "instanceGenerations"                            = ["f"]
///               "localStorage"                                   = "wglfmvquwice"
///               "localStorageTypes"                              = ["talnjrldmventgtzlwpaxfcenp"]
///               "maxSpotPriceAsPercentageOfOptimalOnDemandPrice" = 15
///               "memoryGiBPerVCpu" = {
///                 "max" = 23
///                 "min" = 29
///               }
///               "memoryMiB" = {
///                 "max" = 27
///                 "min" = 27
///               }
///               "networkBandwidthGbps" = {
///                 "max" = 18
///                 "min" = 29
///               }
///               "networkInterfaceCount" = {
///                 "max" = 14
///                 "min" = 26
///               }
///               "onDemandMaxPricePercentageOverLowestPrice" = 8
///               "requireHibernateSupport"                   = true
///               "spotMaxPricePercentageOverLowestPrice"     = 9
///               "totalLocalStorageGB" = {
///                 "max" = 19
///                 "min" = 7
///               }
///               "vCpuCount" = {
///                 "max" = 9
///                 "min" = 26
///               }
///             }
///             "instanceType" = "phudgcnbis"
///             "launchTemplateSpecification" = {
///               "launchTemplateId"   = "zpcgiqsftmwjzwqifodopjuvfoxed"
///               "launchTemplateName" = "jq"
///               "version"            = "kdlpart"
///             }
///             "weightedCapacity" = "iqa"
///           }]
///         }
///       }
///       new_instances_protected_from_scale_in = true
///       notification_configuration = {
///         notification_types = ["jzepnjbwtsw"]
///         topic_arn          = "hndjrwrlqssgciezop"
///       }
///       notification_configurations = [{
///         "notificationTypes" = ["jzepnjbwtsw"]
///         "topicARN"          = "hndjrwrlqssgciezop"
///       }]
///       placement_group         = "pmanetwktlujhykhxtcekv"
///       service_linked_role_arn = "ffqtfkdv"
///       tags = [{
///         "key"               = "vtmmpdwnenzwsmxgf"
///         "propagateAtLaunch" = true
///         "value"             = "xoncdkvjanxdfklvixodkyg"
///       }]
///       target_group_ar_ns   = ["ttxjwgboopxrdiqxyqjdujw"]
///       termination_policies = ["jvwpdujegrgjbdrxbvcjgs"]
///       vpc_zone_identifier  = ["fmqvstmohqtmjslrnsiuodevi"]
///     }
///     aws_region        = "cfqguizvjpckdsvetalwo"
///     aws_source_schema = "koleijkwf"
///     aws_tags = {
///       "key6990" = "lmywyo"
///     }
///     public_cloud_connectors_resource_id = "q"
///     public_cloud_resource_name          = "blomfowfltqwzdghycehvvdnr"
///   }
///   resource_group_name = "rgautoScalingAutoScalingGroup"
///   tags = {
///     "key2337" = "scybnvsqelp"
///   }
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
/// import com.pulumi.azurenative.awsconnector.AutoScalingAutoScalingGroup;
/// import com.pulumi.azurenative.awsconnector.AutoScalingAutoScalingGroupArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AutoScalingAutoScalingGroupPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsAutoScalingAutoScalingGroupPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceMaintenancePolicyArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LaunchTemplateSpecificationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.MixedInstancesPolicyArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstancesDistributionArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LaunchTemplateArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AutoScalingGroupNotificationConfigurationArgs;
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
///         var autoScalingAutoScalingGroup = new AutoScalingAutoScalingGroup("autoScalingAutoScalingGroup", AutoScalingAutoScalingGroupArgs.builder()
///             .location("vfitxfllzgknmbaqgpsv")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(AutoScalingAutoScalingGroupPropertiesArgs.builder()
///                 .arn("gsso")
///                 .awsAccountId("eogdcteuaaazi")
///                 .awsProperties(AwsAutoScalingAutoScalingGroupPropertiesArgs.builder()
///                     .autoScalingGroupName("zvp")
///                     .availabilityZones("bvcnltgekeqrzklsnfieubhugr")
///                     .capacityRebalance(true)
///                     .context("dnmovg")
///                     .cooldown("r")
///                     .defaultInstanceWarmup(24)
///                     .desiredCapacity("xtu")
///                     .desiredCapacityType("wncmimbdveox")
///                     .healthCheckGracePeriod(9)
///                     .healthCheckType("ustkoarefpvnhxrtqua")
///                     .instanceId("noghdbfliygsadtjosovasxq")
///                     .instanceMaintenancePolicy(InstanceMaintenancePolicyArgs.builder()
///                         .maxHealthyPercentage(23)
///                         .minHealthyPercentage(6)
///                         .build())
///                     .launchConfigurationName("rgadwyrtzaxbfkbsbjaygujtc")
///                     .launchTemplate(LaunchTemplateSpecificationArgs.builder()
///                         .launchTemplateId("zpcgiqsftmwjzwqifodopjuvfoxed")
///                         .launchTemplateName("jq")
///                         .version("kdlpart")
///                         .build())
///                     .lifecycleHookSpecificationList(LifecycleHookSpecificationArgs.builder()
///                         .defaultResult("qbeojpqbpnhst")
///                         .heartbeatTimeout(14)
///                         .lifecycleHookName("xeqfmdmthyzrdxjbmdkyy")
///                         .lifecycleTransition("xsufodhykhlutvc")
///                         .notificationMetadata("bknbkafxdozjlnprrlkrqstgwchxl")
///                         .notificationTargetARN("dkeqhlwuifyfamkufdryfiybxnle")
///                         .roleARN("bhenujqtabiiryjgl")
///                         .build())
///                     .loadBalancerNames("qsgaefmtltksmmwswpdfmnlwvovi")
///                     .maxInstanceLifetime(25)
///                     .maxSize("vqxfpkdyusfijwc")
///                     .metricsCollection(MetricsCollectionArgs.builder()
///                         .granularity("ygxetadl")
///                         .metrics("hwukwnkctznjelut")
///                         .build())
///                     .minSize("rfdwflldttnzph")
///                     .mixedInstancesPolicy(MixedInstancesPolicyArgs.builder()
///                         .instancesDistribution(InstancesDistributionArgs.builder()
///                             .onDemandAllocationStrategy("s")
///                             .onDemandBaseCapacity(11)
///                             .onDemandPercentageAboveBaseCapacity(13)
///                             .spotAllocationStrategy("mdqoylvmdfgnktujkkgcargpzgejts")
///                             .spotInstancePools(21)
///                             .spotMaxPrice("civdjpljorkrvqganofneu")
///                             .build())
///                         .launchTemplate(LaunchTemplateArgs.builder()
///                             .launchTemplateSpecification(LaunchTemplateSpecificationArgs.builder()
///                                 .launchTemplateId("zpcgiqsftmwjzwqifodopjuvfoxed")
///                                 .launchTemplateName("jq")
///                                 .version("kdlpart")
///                                 .build())
///                             .overrides(LaunchTemplateOverridesArgs.builder()
///                                 .instanceRequirements(InstanceRequirementsArgs.builder()
///                                     .acceleratorCount(AcceleratorCountRequestArgs.builder()
///                                         .max(22)
///                                         .min(12)
///                                         .build())
///                                     .acceleratorManufacturers("yrnnynorjjxvzppzrgpahymhm")
///                                     .acceleratorNames("iqmentbrnypcxv")
///                                     .acceleratorTotalMemoryMiB(AcceleratorTotalMemoryMiBRequestArgs.builder()
///                                         .max(7)
///                                         .min(29)
///                                         .build())
///                                     .acceleratorTypes("kmvwibkxxklqitqxqqlpvfifvo")
///                                     .allowedInstanceTypes("tzrxlaofwygbqglbwdxnqjy")
///                                     .bareMetal("kugjpzsjreywlvvzkebv")
///                                     .baselineEbsBandwidthMbps(BaselineEbsBandwidthMbpsRequestArgs.builder()
///                                         .max(2)
///                                         .min(19)
///                                         .build())
///                                     .burstablePerformance("jpwudasuoonf")
///                                     .cpuManufacturers("scbxthzijnmur")
///                                     .excludedInstanceTypes("edadlo")
///                                     .instanceGenerations("f")
///                                     .localStorage("wglfmvquwice")
///                                     .localStorageTypes("talnjrldmventgtzlwpaxfcenp")
///                                     .maxSpotPriceAsPercentageOfOptimalOnDemandPrice(15)
///                                     .memoryGiBPerVCpu(MemoryGiBPerVCpuRequestArgs.builder()
///                                         .max(23)
///                                         .min(29)
///                                         .build())
///                                     .memoryMiB(MemoryMiBRequestArgs.builder()
///                                         .max(27)
///                                         .min(27)
///                                         .build())
///                                     .networkBandwidthGbps(NetworkBandwidthGbpsRequestArgs.builder()
///                                         .max(18)
///                                         .min(29)
///                                         .build())
///                                     .networkInterfaceCount(NetworkInterfaceCountRequestArgs.builder()
///                                         .max(14)
///                                         .min(26)
///                                         .build())
///                                     .onDemandMaxPricePercentageOverLowestPrice(8)
///                                     .requireHibernateSupport(true)
///                                     .spotMaxPricePercentageOverLowestPrice(9)
///                                     .totalLocalStorageGB(TotalLocalStorageGBRequestArgs.builder()
///                                         .max(19)
///                                         .min(7)
///                                         .build())
///                                     .vCpuCount(VCpuCountRequestArgs.builder()
///                                         .max(9)
///                                         .min(26)
///                                         .build())
///                                     .build())
///                                 .instanceType("phudgcnbis")
///                                 .launchTemplateSpecification(LaunchTemplateSpecificationArgs.builder()
///                                     .launchTemplateId("zpcgiqsftmwjzwqifodopjuvfoxed")
///                                     .launchTemplateName("jq")
///                                     .version("kdlpart")
///                                     .build())
///                                 .weightedCapacity("iqa")
///                                 .build())
///                             .build())
///                         .build())
///                     .newInstancesProtectedFromScaleIn(true)
///                     .notificationConfiguration(AutoScalingGroupNotificationConfigurationArgs.builder()
///                         .notificationTypes("jzepnjbwtsw")
///                         .topicARN("hndjrwrlqssgciezop")
///                         .build())
///                     .notificationConfigurations(AutoScalingGroupNotificationConfigurationArgs.builder()
///                         .notificationTypes("jzepnjbwtsw")
///                         .topicARN("hndjrwrlqssgciezop")
///                         .build())
///                     .placementGroup("pmanetwktlujhykhxtcekv")
///                     .serviceLinkedRoleARN("ffqtfkdv")
///                     .tags(TagPropertyArgs.builder()
///                         .key("vtmmpdwnenzwsmxgf")
///                         .propagateAtLaunch(true)
///                         .value("xoncdkvjanxdfklvixodkyg")
///                         .build())
///                     .targetGroupARNs("ttxjwgboopxrdiqxyqjdujw")
///                     .terminationPolicies("jvwpdujegrgjbdrxbvcjgs")
///                     .vpcZoneIdentifier("fmqvstmohqtmjslrnsiuodevi")
///                     .build())
///                 .awsRegion("cfqguizvjpckdsvetalwo")
///                 .awsSourceSchema("koleijkwf")
///                 .awsTags(Map.of("key6990", "lmywyo"))
///                 .publicCloudConnectorsResourceId("q")
///                 .publicCloudResourceName("blomfowfltqwzdghycehvvdnr")
///                 .build())
///             .resourceGroupName("rgautoScalingAutoScalingGroup")
///             .tags(Map.of("key2337", "scybnvsqelp"))
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
/// const autoScalingAutoScalingGroup = new azure_native.awsconnector.AutoScalingAutoScalingGroup("autoScalingAutoScalingGroup", {
///     location: "vfitxfllzgknmbaqgpsv",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "gsso",
///         awsAccountId: "eogdcteuaaazi",
///         awsProperties: {
///             autoScalingGroupName: "zvp",
///             availabilityZones: ["bvcnltgekeqrzklsnfieubhugr"],
///             capacityRebalance: true,
///             context: "dnmovg",
///             cooldown: "r",
///             defaultInstanceWarmup: 24,
///             desiredCapacity: "xtu",
///             desiredCapacityType: "wncmimbdveox",
///             healthCheckGracePeriod: 9,
///             healthCheckType: "ustkoarefpvnhxrtqua",
///             instanceId: "noghdbfliygsadtjosovasxq",
///             instanceMaintenancePolicy: {
///                 maxHealthyPercentage: 23,
///                 minHealthyPercentage: 6,
///             },
///             launchConfigurationName: "rgadwyrtzaxbfkbsbjaygujtc",
///             launchTemplate: {
///                 launchTemplateId: "zpcgiqsftmwjzwqifodopjuvfoxed",
///                 launchTemplateName: "jq",
///                 version: "kdlpart",
///             },
///             lifecycleHookSpecificationList: [{
///                 defaultResult: "qbeojpqbpnhst",
///                 heartbeatTimeout: 14,
///                 lifecycleHookName: "xeqfmdmthyzrdxjbmdkyy",
///                 lifecycleTransition: "xsufodhykhlutvc",
///                 notificationMetadata: "bknbkafxdozjlnprrlkrqstgwchxl",
///                 notificationTargetARN: "dkeqhlwuifyfamkufdryfiybxnle",
///                 roleARN: "bhenujqtabiiryjgl",
///             }],
///             loadBalancerNames: ["qsgaefmtltksmmwswpdfmnlwvovi"],
///             maxInstanceLifetime: 25,
///             maxSize: "vqxfpkdyusfijwc",
///             metricsCollection: [{
///                 granularity: "ygxetadl",
///                 metrics: ["hwukwnkctznjelut"],
///             }],
///             minSize: "rfdwflldttnzph",
///             mixedInstancesPolicy: {
///                 instancesDistribution: {
///                     onDemandAllocationStrategy: "s",
///                     onDemandBaseCapacity: 11,
///                     onDemandPercentageAboveBaseCapacity: 13,
///                     spotAllocationStrategy: "mdqoylvmdfgnktujkkgcargpzgejts",
///                     spotInstancePools: 21,
///                     spotMaxPrice: "civdjpljorkrvqganofneu",
///                 },
///                 launchTemplate: {
///                     launchTemplateSpecification: {
///                         launchTemplateId: "zpcgiqsftmwjzwqifodopjuvfoxed",
///                         launchTemplateName: "jq",
///                         version: "kdlpart",
///                     },
///                     overrides: [{
///                         instanceRequirements: {
///                             acceleratorCount: {
///                                 max: 22,
///                                 min: 12,
///                             },
///                             acceleratorManufacturers: ["yrnnynorjjxvzppzrgpahymhm"],
///                             acceleratorNames: ["iqmentbrnypcxv"],
///                             acceleratorTotalMemoryMiB: {
///                                 max: 7,
///                                 min: 29,
///                             },
///                             acceleratorTypes: ["kmvwibkxxklqitqxqqlpvfifvo"],
///                             allowedInstanceTypes: ["tzrxlaofwygbqglbwdxnqjy"],
///                             bareMetal: "kugjpzsjreywlvvzkebv",
///                             baselineEbsBandwidthMbps: {
///                                 max: 2,
///                                 min: 19,
///                             },
///                             burstablePerformance: "jpwudasuoonf",
///                             cpuManufacturers: ["scbxthzijnmur"],
///                             excludedInstanceTypes: ["edadlo"],
///                             instanceGenerations: ["f"],
///                             localStorage: "wglfmvquwice",
///                             localStorageTypes: ["talnjrldmventgtzlwpaxfcenp"],
///                             maxSpotPriceAsPercentageOfOptimalOnDemandPrice: 15,
///                             memoryGiBPerVCpu: {
///                                 max: 23,
///                                 min: 29,
///                             },
///                             memoryMiB: {
///                                 max: 27,
///                                 min: 27,
///                             },
///                             networkBandwidthGbps: {
///                                 max: 18,
///                                 min: 29,
///                             },
///                             networkInterfaceCount: {
///                                 max: 14,
///                                 min: 26,
///                             },
///                             onDemandMaxPricePercentageOverLowestPrice: 8,
///                             requireHibernateSupport: true,
///                             spotMaxPricePercentageOverLowestPrice: 9,
///                             totalLocalStorageGB: {
///                                 max: 19,
///                                 min: 7,
///                             },
///                             vCpuCount: {
///                                 max: 9,
///                                 min: 26,
///                             },
///                         },
///                         instanceType: "phudgcnbis",
///                         launchTemplateSpecification: {
///                             launchTemplateId: "zpcgiqsftmwjzwqifodopjuvfoxed",
///                             launchTemplateName: "jq",
///                             version: "kdlpart",
///                         },
///                         weightedCapacity: "iqa",
///                     }],
///                 },
///             },
///             newInstancesProtectedFromScaleIn: true,
///             notificationConfiguration: {
///                 notificationTypes: ["jzepnjbwtsw"],
///                 topicARN: "hndjrwrlqssgciezop",
///             },
///             notificationConfigurations: [{
///                 notificationTypes: ["jzepnjbwtsw"],
///                 topicARN: "hndjrwrlqssgciezop",
///             }],
///             placementGroup: "pmanetwktlujhykhxtcekv",
///             serviceLinkedRoleARN: "ffqtfkdv",
///             tags: [{
///                 key: "vtmmpdwnenzwsmxgf",
///                 propagateAtLaunch: true,
///                 value: "xoncdkvjanxdfklvixodkyg",
///             }],
///             targetGroupARNs: ["ttxjwgboopxrdiqxyqjdujw"],
///             terminationPolicies: ["jvwpdujegrgjbdrxbvcjgs"],
///             vpcZoneIdentifier: ["fmqvstmohqtmjslrnsiuodevi"],
///         },
///         awsRegion: "cfqguizvjpckdsvetalwo",
///         awsSourceSchema: "koleijkwf",
///         awsTags: {
///             key6990: "lmywyo",
///         },
///         publicCloudConnectorsResourceId: "q",
///         publicCloudResourceName: "blomfowfltqwzdghycehvvdnr",
///     },
///     resourceGroupName: "rgautoScalingAutoScalingGroup",
///     tags: {
///         key2337: "scybnvsqelp",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// auto_scaling_auto_scaling_group = azure_native.awsconnector.AutoScalingAutoScalingGroup("autoScalingAutoScalingGroup",
///     location="vfitxfllzgknmbaqgpsv",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "gsso",
///         "aws_account_id": "eogdcteuaaazi",
///         "aws_properties": {
///             "auto_scaling_group_name": "zvp",
///             "availability_zones": ["bvcnltgekeqrzklsnfieubhugr"],
///             "capacity_rebalance": True,
///             "context": "dnmovg",
///             "cooldown": "r",
///             "default_instance_warmup": 24,
///             "desired_capacity": "xtu",
///             "desired_capacity_type": "wncmimbdveox",
///             "health_check_grace_period": 9,
///             "health_check_type": "ustkoarefpvnhxrtqua",
///             "instance_id": "noghdbfliygsadtjosovasxq",
///             "instance_maintenance_policy": {
///                 "max_healthy_percentage": 23,
///                 "min_healthy_percentage": 6,
///             },
///             "launch_configuration_name": "rgadwyrtzaxbfkbsbjaygujtc",
///             "launch_template": {
///                 "launch_template_id": "zpcgiqsftmwjzwqifodopjuvfoxed",
///                 "launch_template_name": "jq",
///                 "version": "kdlpart",
///             },
///             "lifecycle_hook_specification_list": [{
///                 "default_result": "qbeojpqbpnhst",
///                 "heartbeat_timeout": 14,
///                 "lifecycle_hook_name": "xeqfmdmthyzrdxjbmdkyy",
///                 "lifecycle_transition": "xsufodhykhlutvc",
///                 "notification_metadata": "bknbkafxdozjlnprrlkrqstgwchxl",
///                 "notification_target_arn": "dkeqhlwuifyfamkufdryfiybxnle",
///                 "role_arn": "bhenujqtabiiryjgl",
///             }],
///             "load_balancer_names": ["qsgaefmtltksmmwswpdfmnlwvovi"],
///             "max_instance_lifetime": 25,
///             "max_size": "vqxfpkdyusfijwc",
///             "metrics_collection": [{
///                 "granularity": "ygxetadl",
///                 "metrics": ["hwukwnkctznjelut"],
///             }],
///             "min_size": "rfdwflldttnzph",
///             "mixed_instances_policy": {
///                 "instances_distribution": {
///                     "on_demand_allocation_strategy": "s",
///                     "on_demand_base_capacity": 11,
///                     "on_demand_percentage_above_base_capacity": 13,
///                     "spot_allocation_strategy": "mdqoylvmdfgnktujkkgcargpzgejts",
///                     "spot_instance_pools": 21,
///                     "spot_max_price": "civdjpljorkrvqganofneu",
///                 },
///                 "launch_template": {
///                     "launch_template_specification": {
///                         "launch_template_id": "zpcgiqsftmwjzwqifodopjuvfoxed",
///                         "launch_template_name": "jq",
///                         "version": "kdlpart",
///                     },
///                     "overrides": [{
///                         "instance_requirements": {
///                             "accelerator_count": {
///                                 "max": 22,
///                                 "min": 12,
///                             },
///                             "accelerator_manufacturers": ["yrnnynorjjxvzppzrgpahymhm"],
///                             "accelerator_names": ["iqmentbrnypcxv"],
///                             "accelerator_total_memory_mi_b": {
///                                 "max": 7,
///                                 "min": 29,
///                             },
///                             "accelerator_types": ["kmvwibkxxklqitqxqqlpvfifvo"],
///                             "allowed_instance_types": ["tzrxlaofwygbqglbwdxnqjy"],
///                             "bare_metal": "kugjpzsjreywlvvzkebv",
///                             "baseline_ebs_bandwidth_mbps": {
///                                 "max": 2,
///                                 "min": 19,
///                             },
///                             "burstable_performance": "jpwudasuoonf",
///                             "cpu_manufacturers": ["scbxthzijnmur"],
///                             "excluded_instance_types": ["edadlo"],
///                             "instance_generations": ["f"],
///                             "local_storage": "wglfmvquwice",
///                             "local_storage_types": ["talnjrldmventgtzlwpaxfcenp"],
///                             "max_spot_price_as_percentage_of_optimal_on_demand_price": 15,
///                             "memory_gi_b_per_v_cpu": {
///                                 "max": 23,
///                                 "min": 29,
///                             },
///                             "memory_mi_b": {
///                                 "max": 27,
///                                 "min": 27,
///                             },
///                             "network_bandwidth_gbps": {
///                                 "max": 18,
///                                 "min": 29,
///                             },
///                             "network_interface_count": {
///                                 "max": 14,
///                                 "min": 26,
///                             },
///                             "on_demand_max_price_percentage_over_lowest_price": 8,
///                             "require_hibernate_support": True,
///                             "spot_max_price_percentage_over_lowest_price": 9,
///                             "total_local_storage_gb": {
///                                 "max": 19,
///                                 "min": 7,
///                             },
///                             "v_cpu_count": {
///                                 "max": 9,
///                                 "min": 26,
///                             },
///                         },
///                         "instance_type": "phudgcnbis",
///                         "launch_template_specification": {
///                             "launch_template_id": "zpcgiqsftmwjzwqifodopjuvfoxed",
///                             "launch_template_name": "jq",
///                             "version": "kdlpart",
///                         },
///                         "weighted_capacity": "iqa",
///                     }],
///                 },
///             },
///             "new_instances_protected_from_scale_in": True,
///             "notification_configuration": {
///                 "notification_types": ["jzepnjbwtsw"],
///                 "topic_arn": "hndjrwrlqssgciezop",
///             },
///             "notification_configurations": [{
///                 "notification_types": ["jzepnjbwtsw"],
///                 "topic_arn": "hndjrwrlqssgciezop",
///             }],
///             "placement_group": "pmanetwktlujhykhxtcekv",
///             "service_linked_role_arn": "ffqtfkdv",
///             "tags": [{
///                 "key": "vtmmpdwnenzwsmxgf",
///                 "propagate_at_launch": True,
///                 "value": "xoncdkvjanxdfklvixodkyg",
///             }],
///             "target_group_arns": ["ttxjwgboopxrdiqxyqjdujw"],
///             "termination_policies": ["jvwpdujegrgjbdrxbvcjgs"],
///             "vpc_zone_identifier": ["fmqvstmohqtmjslrnsiuodevi"],
///         },
///         "aws_region": "cfqguizvjpckdsvetalwo",
///         "aws_source_schema": "koleijkwf",
///         "aws_tags": {
///             "key6990": "lmywyo",
///         },
///         "public_cloud_connectors_resource_id": "q",
///         "public_cloud_resource_name": "blomfowfltqwzdghycehvvdnr",
///     },
///     resource_group_name="rgautoScalingAutoScalingGroup",
///     tags={
///         "key2337": "scybnvsqelp",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   autoScalingAutoScalingGroup:
///     type: azure-native:awsconnector:AutoScalingAutoScalingGroup
///     properties:
///       location: vfitxfllzgknmbaqgpsv
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: gsso
///         awsAccountId: eogdcteuaaazi
///         awsProperties:
///           autoScalingGroupName: zvp
///           availabilityZones:
///             - bvcnltgekeqrzklsnfieubhugr
///           capacityRebalance: true
///           context: dnmovg
///           cooldown: r
///           defaultInstanceWarmup: 24
///           desiredCapacity: xtu
///           desiredCapacityType: wncmimbdveox
///           healthCheckGracePeriod: 9
///           healthCheckType: ustkoarefpvnhxrtqua
///           instanceId: noghdbfliygsadtjosovasxq
///           instanceMaintenancePolicy:
///             maxHealthyPercentage: 23
///             minHealthyPercentage: 6
///           launchConfigurationName: rgadwyrtzaxbfkbsbjaygujtc
///           launchTemplate:
///             launchTemplateId: zpcgiqsftmwjzwqifodopjuvfoxed
///             launchTemplateName: jq
///             version: kdlpart
///           lifecycleHookSpecificationList:
///             - defaultResult: qbeojpqbpnhst
///               heartbeatTimeout: 14
///               lifecycleHookName: xeqfmdmthyzrdxjbmdkyy
///               lifecycleTransition: xsufodhykhlutvc
///               notificationMetadata: bknbkafxdozjlnprrlkrqstgwchxl
///               notificationTargetARN: dkeqhlwuifyfamkufdryfiybxnle
///               roleARN: bhenujqtabiiryjgl
///           loadBalancerNames:
///             - qsgaefmtltksmmwswpdfmnlwvovi
///           maxInstanceLifetime: 25
///           maxSize: vqxfpkdyusfijwc
///           metricsCollection:
///             - granularity: ygxetadl
///               metrics:
///                 - hwukwnkctznjelut
///           minSize: rfdwflldttnzph
///           mixedInstancesPolicy:
///             instancesDistribution:
///               onDemandAllocationStrategy: s
///               onDemandBaseCapacity: 11
///               onDemandPercentageAboveBaseCapacity: 13
///               spotAllocationStrategy: mdqoylvmdfgnktujkkgcargpzgejts
///               spotInstancePools: 21
///               spotMaxPrice: civdjpljorkrvqganofneu
///             launchTemplate:
///               launchTemplateSpecification:
///                 launchTemplateId: zpcgiqsftmwjzwqifodopjuvfoxed
///                 launchTemplateName: jq
///                 version: kdlpart
///               overrides:
///                 - instanceRequirements:
///                     acceleratorCount:
///                       max: 22
///                       min: 12
///                     acceleratorManufacturers:
///                       - yrnnynorjjxvzppzrgpahymhm
///                     acceleratorNames:
///                       - iqmentbrnypcxv
///                     acceleratorTotalMemoryMiB:
///                       max: 7
///                       min: 29
///                     acceleratorTypes:
///                       - kmvwibkxxklqitqxqqlpvfifvo
///                     allowedInstanceTypes:
///                       - tzrxlaofwygbqglbwdxnqjy
///                     bareMetal: kugjpzsjreywlvvzkebv
///                     baselineEbsBandwidthMbps:
///                       max: 2
///                       min: 19
///                     burstablePerformance: jpwudasuoonf
///                     cpuManufacturers:
///                       - scbxthzijnmur
///                     excludedInstanceTypes:
///                       - edadlo
///                     instanceGenerations:
///                       - f
///                     localStorage: wglfmvquwice
///                     localStorageTypes:
///                       - talnjrldmventgtzlwpaxfcenp
///                     maxSpotPriceAsPercentageOfOptimalOnDemandPrice: 15
///                     memoryGiBPerVCpu:
///                       max: 23
///                       min: 29
///                     memoryMiB:
///                       max: 27
///                       min: 27
///                     networkBandwidthGbps:
///                       max: 18
///                       min: 29
///                     networkInterfaceCount:
///                       max: 14
///                       min: 26
///                     onDemandMaxPricePercentageOverLowestPrice: 8
///                     requireHibernateSupport: true
///                     spotMaxPricePercentageOverLowestPrice: 9
///                     totalLocalStorageGB:
///                       max: 19
///                       min: 7
///                     vCpuCount:
///                       max: 9
///                       min: 26
///                   instanceType: phudgcnbis
///                   launchTemplateSpecification:
///                     launchTemplateId: zpcgiqsftmwjzwqifodopjuvfoxed
///                     launchTemplateName: jq
///                     version: kdlpart
///                   weightedCapacity: iqa
///           newInstancesProtectedFromScaleIn: true
///           notificationConfiguration:
///             notificationTypes:
///               - jzepnjbwtsw
///             topicARN: hndjrwrlqssgciezop
///           notificationConfigurations:
///             - notificationTypes:
///                 - jzepnjbwtsw
///               topicARN: hndjrwrlqssgciezop
///           placementGroup: pmanetwktlujhykhxtcekv
///           serviceLinkedRoleARN: ffqtfkdv
///           tags:
///             - key: vtmmpdwnenzwsmxgf
///               propagateAtLaunch: true
///               value: xoncdkvjanxdfklvixodkyg
///           targetGroupARNs:
///             - ttxjwgboopxrdiqxyqjdujw
///           terminationPolicies:
///             - jvwpdujegrgjbdrxbvcjgs
///           vpcZoneIdentifier:
///             - fmqvstmohqtmjslrnsiuodevi
///         awsRegion: cfqguizvjpckdsvetalwo
///         awsSourceSchema: koleijkwf
///         awsTags:
///           key6990: lmywyo
///         publicCloudConnectorsResourceId: q
///         publicCloudResourceName: blomfowfltqwzdghycehvvdnr
///       resourceGroupName: rgautoScalingAutoScalingGroup
///       tags:
///         key2337: scybnvsqelp
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
/// $ pulumi import azure-native:awsconnector:AutoScalingAutoScalingGroup vlngqusydiqjbfra /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/autoScalingAutoScalingGroups/{name}
/// ```
class AutoScalingAutoScalingGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<AutoScalingAutoScalingGroupPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AutoScalingAutoScalingGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoScalingAutoScalingGroup]. {@macro pulumi_awsconnector_auto_scaling_auto_scaling_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoScalingAutoScalingGroup(
    String name, {
    AutoScalingAutoScalingGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:AutoScalingAutoScalingGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AutoScalingAutoScalingGroupPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoScalingAutoScalingGroupPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AutoScalingAutoScalingGroup] resource.
  AutoScalingAutoScalingGroup.reference(String urn)
    : super(
        'azure-native:awsconnector:AutoScalingAutoScalingGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AutoScalingAutoScalingGroupPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoScalingAutoScalingGroupPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
