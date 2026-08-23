import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_auto_termination_policy.dart';
import 'cluster_core_instance_fleet.dart';
import 'cluster_core_instance_group.dart';
import 'cluster_ec2_attributes.dart';
import 'cluster_kerberos_attributes.dart';
import 'cluster_master_instance_fleet.dart';
import 'cluster_master_instance_group.dart';
import 'cluster_state.dart';

/// Provides an Elastic MapReduce Cluster, a web service that makes it easy to process large amounts of data efficiently. See [Amazon Elastic MapReduce Documentation](https://aws.amazon.com/documentation/elastic-mapreduce/) for more information.
///
/// To configure [Instance Groups](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-group-configuration.html#emr-plan-instance-groups) for [task nodes](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-master-core-task-nodes.html#emr-plan-task), see the `aws.emr.InstanceGroup` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const cluster = new aws.emr.Cluster("cluster", {
///     name: "emr-test-arn",
///     releaseLabel: "emr-4.6.0",
///     applications: ["Spark"],
///     additionalInfo: `{
///   \\"instanceAwsClientConfiguration\\": {
///     \\"proxyPort\\": 8099,
///     \\"proxyHost\\": \\"myproxy.example.com\\"
///   }
/// }
/// `,
///     terminationProtection: false,
///     keepJobFlowAliveWhenNoSteps: true,
///     ec2Attributes: {
///         subnetId: main.id,
///         emrManagedMasterSecurityGroup: sg.id,
///         emrManagedSlaveSecurityGroup: sg.id,
///         instanceProfile: emrProfile.arn,
///     },
///     masterInstanceGroup: {
///         instanceType: "m4.large",
///     },
///     coreInstanceGroup: {
///         instanceType: "c4.large",
///         instanceCount: 1,
///         ebsConfigs: [{
///             size: 40,
///             type: "gp2",
///             volumesPerInstance: 1,
///         }],
///         bidPrice: "0.30",
///         autoscalingPolicy: `{
/// \\"Constraints\\": {
///   \\"MinCapacity\\": 1,
///   \\"MaxCapacity\\": 2
/// },
/// \\"Rules\\": [
///   {
///     \\"Name\\": \\"ScaleOutMemoryPercentage\\",
///     \\"Description\\": \\"Scale out if YARNMemoryAvailablePercentage is less than 15\\",
///     \\"Action\\": {
///       \\"SimpleScalingPolicyConfiguration\\": {
///         \\"AdjustmentType\\": \\"CHANGE_IN_CAPACITY\\",
///         \\"ScalingAdjustment\\": 1,
///         \\"CoolDown\\": 300
///       }
///     },
///     \\"Trigger\\": {
///       \\"CloudWatchAlarmDefinition\\": {
///         \\"ComparisonOperator\\": \\"LESS_THAN\\",
///         \\"EvaluationPeriods\\": 1,
///         \\"MetricName\\": \\"YARNMemoryAvailablePercentage\\",
///         \\"Namespace\\": \\"AWS/ElasticMapReduce\\",
///         \\"Period\\": 300,
///         \\"Statistic\\": \\"AVERAGE\\",
///         \\"Threshold\\": 15.0,
///         \\"Unit\\": \\"PERCENT\\"
///       }
///     }
///   }
/// ]
/// }
/// `,
///     },
///     ebsRootVolumeSize: 100,
///     tags: {
///         role: "rolename",
///         env: "env",
///     },
///     bootstrapActions: [{
///         path: "s3://elasticmapreduce/bootstrap-actions/run-if",
///         name: "runif",
///         args: [
///             "instance.isMaster=true",
///             "echo running on master node",
///         ],
///     }],
///     configurationsJson: `  [
///     {
///       \\"Classification\\": \\"hadoop-env\\",
///       \\"Configurations\\": [
///         {
///           \\"Classification\\": \\"export\\",
///           \\"Properties\\": {
///             \\"JAVA_HOME\\": \\"/usr/lib/jvm/java-1.8.0\\"
///           }
///         }
///       ],
///       \\"Properties\\": {}
///     },
///     {
///       \\"Classification\\": \\"spark-env\\",
///       \\"Configurations\\": [
///         {
///           \\"Classification\\": \\"export\\",
///           \\"Properties\\": {
///             \\"JAVA_HOME\\": \\"/usr/lib/jvm/java-1.8.0\\"
///           }
///         }
///       ],
///       \\"Properties\\": {}
///     }
///   ]
/// `,
///     serviceRole: iamEmrServiceRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cluster = aws.emr.Cluster("cluster",
///     name="emr-test-arn",
///     release_label="emr-4.6.0",
///     applications=["Spark"],
///     additional_info="""{
///   \"instanceAwsClientConfiguration\": {
///     \"proxyPort\": 8099,
///     \"proxyHost\": \"myproxy.example.com\"
///   }
/// }
/// """,
///     termination_protection=False,
///     keep_job_flow_alive_when_no_steps=True,
///     ec2_attributes={
///         "subnet_id": main["id"],
///         "emr_managed_master_security_group": sg["id"],
///         "emr_managed_slave_security_group": sg["id"],
///         "instance_profile": emr_profile["arn"],
///     },
///     master_instance_group={
///         "instance_type": "m4.large",
///     },
///     core_instance_group={
///         "instance_type": "c4.large",
///         "instance_count": 1,
///         "ebs_configs": [{
///             "size": 40,
///             "type": "gp2",
///             "volumes_per_instance": 1,
///         }],
///         "bid_price": "0.30",
///         "autoscaling_policy": """{
/// \"Constraints\": {
///   \"MinCapacity\": 1,
///   \"MaxCapacity\": 2
/// },
/// \"Rules\": [
///   {
///     \"Name\": \"ScaleOutMemoryPercentage\",
///     \"Description\": \"Scale out if YARNMemoryAvailablePercentage is less than 15\",
///     \"Action\": {
///       \"SimpleScalingPolicyConfiguration\": {
///         \"AdjustmentType\": \"CHANGE_IN_CAPACITY\",
///         \"ScalingAdjustment\": 1,
///         \"CoolDown\": 300
///       }
///     },
///     \"Trigger\": {
///       \"CloudWatchAlarmDefinition\": {
///         \"ComparisonOperator\": \"LESS_THAN\",
///         \"EvaluationPeriods\": 1,
///         \"MetricName\": \"YARNMemoryAvailablePercentage\",
///         \"Namespace\": \"AWS/ElasticMapReduce\",
///         \"Period\": 300,
///         \"Statistic\": \"AVERAGE\",
///         \"Threshold\": 15.0,
///         \"Unit\": \"PERCENT\"
///       }
///     }
///   }
/// ]
/// }
/// """,
///     },
///     ebs_root_volume_size=100,
///     tags={
///         "role": "rolename",
///         "env": "env",
///     },
///     bootstrap_actions=[{
///         "path": "s3://elasticmapreduce/bootstrap-actions/run-if",
///         "name": "runif",
///         "args": [
///             "instance.isMaster=true",
///             "echo running on master node",
///         ],
///     }],
///     configurations_json="""  [
///     {
///       \"Classification\": \"hadoop-env\",
///       \"Configurations\": [
///         {
///           \"Classification\": \"export\",
///           \"Properties\": {
///             \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
///           }
///         }
///       ],
///       \"Properties\": {}
///     },
///     {
///       \"Classification\": \"spark-env\",
///       \"Configurations\": [
///         {
///           \"Classification\": \"export\",
///           \"Properties\": {
///             \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
///           }
///         }
///       ],
///       \"Properties\": {}
///     }
///   ]
/// """,
///     service_role=iam_emr_service_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new Aws.Emr.Cluster("cluster", new()
///     {
///         Name = "emr-test-arn",
///         ReleaseLabel = "emr-4.6.0",
///         Applications = new[]
///         {
///             "Spark",
///         },
///         AdditionalInfo = @"{
///   \""instanceAwsClientConfiguration\"": {
///     \""proxyPort\"": 8099,
///     \""proxyHost\"": \""myproxy.example.com\""
///   }
/// }
/// ",
///         TerminationProtection = false,
///         KeepJobFlowAliveWhenNoSteps = true,
///         Ec2Attributes = new Aws.Emr.Inputs.ClusterEc2AttributesArgs
///         {
///             SubnetId = main.Id,
///             EmrManagedMasterSecurityGroup = sg.Id,
///             EmrManagedSlaveSecurityGroup = sg.Id,
///             InstanceProfile = emrProfile.Arn,
///         },
///         MasterInstanceGroup = new Aws.Emr.Inputs.ClusterMasterInstanceGroupArgs
///         {
///             InstanceType = "m4.large",
///         },
///         CoreInstanceGroup = new Aws.Emr.Inputs.ClusterCoreInstanceGroupArgs
///         {
///             InstanceType = "c4.large",
///             InstanceCount = 1,
///             EbsConfigs = new[]
///             {
///                 new Aws.Emr.Inputs.ClusterCoreInstanceGroupEbsConfigArgs
///                 {
///                     Size = 40,
///                     Type = "gp2",
///                     VolumesPerInstance = 1,
///                 },
///             },
///             BidPrice = "0.30",
///             AutoscalingPolicy = @"{
/// \""Constraints\"": {
///   \""MinCapacity\"": 1,
///   \""MaxCapacity\"": 2
/// },
/// \""Rules\"": [
///   {
///     \""Name\"": \""ScaleOutMemoryPercentage\"",
///     \""Description\"": \""Scale out if YARNMemoryAvailablePercentage is less than 15\"",
///     \""Action\"": {
///       \""SimpleScalingPolicyConfiguration\"": {
///         \""AdjustmentType\"": \""CHANGE_IN_CAPACITY\"",
///         \""ScalingAdjustment\"": 1,
///         \""CoolDown\"": 300
///       }
///     },
///     \""Trigger\"": {
///       \""CloudWatchAlarmDefinition\"": {
///         \""ComparisonOperator\"": \""LESS_THAN\"",
///         \""EvaluationPeriods\"": 1,
///         \""MetricName\"": \""YARNMemoryAvailablePercentage\"",
///         \""Namespace\"": \""AWS/ElasticMapReduce\"",
///         \""Period\"": 300,
///         \""Statistic\"": \""AVERAGE\"",
///         \""Threshold\"": 15.0,
///         \""Unit\"": \""PERCENT\""
///       }
///     }
///   }
/// ]
/// }
/// ",
///         },
///         EbsRootVolumeSize = 100,
///         Tags =
///         {
///             { "role", "rolename" },
///             { "env", "env" },
///         },
///         BootstrapActions = new[]
///         {
///             new Aws.Emr.Inputs.ClusterBootstrapActionArgs
///             {
///                 Path = "s3://elasticmapreduce/bootstrap-actions/run-if",
///                 Name = "runif",
///                 Args = new[]
///                 {
///                     "instance.isMaster=true",
///                     "echo running on master node",
///                 },
///             },
///         },
///         ConfigurationsJson = @"  [
///     {
///       \""Classification\"": \""hadoop-env\"",
///       \""Configurations\"": [
///         {
///           \""Classification\"": \""export\"",
///           \""Properties\"": {
///             \""JAVA_HOME\"": \""/usr/lib/jvm/java-1.8.0\""
///           }
///         }
///       ],
///       \""Properties\"": {}
///     },
///     {
///       \""Classification\"": \""spark-env\"",
///       \""Configurations\"": [
///         {
///           \""Classification\"": \""export\"",
///           \""Properties\"": {
///             \""JAVA_HOME\"": \""/usr/lib/jvm/java-1.8.0\""
///           }
///         }
///       ],
///       \""Properties\"": {}
///     }
///   ]
/// ",
///         ServiceRole = iamEmrServiceRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emr.NewCluster(ctx, "cluster", &emr.ClusterArgs{
/// 			Name:         pulumi.String("emr-test-arn"),
/// 			ReleaseLabel: pulumi.String("emr-4.6.0"),
/// 			Applications: pulumi.StringArray{
/// 				pulumi.String("Spark"),
/// 			},
/// 			AdditionalInfo: pulumi.String(`{
///   \"instanceAwsClientConfiguration\": {
///     \"proxyPort\": 8099,
///     \"proxyHost\": \"myproxy.example.com\"
///   }
/// }
/// `),
/// 			TerminationProtection:       pulumi.Bool(false),
/// 			KeepJobFlowAliveWhenNoSteps: pulumi.Bool(true),
/// 			Ec2Attributes: &emr.ClusterEc2AttributesArgs{
/// 				SubnetId:                      pulumi.Any(main.Id),
/// 				EmrManagedMasterSecurityGroup: pulumi.Any(sg.Id),
/// 				EmrManagedSlaveSecurityGroup:  pulumi.Any(sg.Id),
/// 				InstanceProfile:               pulumi.Any(emrProfile.Arn),
/// 			},
/// 			MasterInstanceGroup: &emr.ClusterMasterInstanceGroupArgs{
/// 				InstanceType: pulumi.String("m4.large"),
/// 			},
/// 			CoreInstanceGroup: &emr.ClusterCoreInstanceGroupArgs{
/// 				InstanceType:  pulumi.String("c4.large"),
/// 				InstanceCount: pulumi.Int(1),
/// 				EbsConfigs: emr.ClusterCoreInstanceGroupEbsConfigArray{
/// 					&emr.ClusterCoreInstanceGroupEbsConfigArgs{
/// 						Size:               pulumi.Int(40),
/// 						Type:               pulumi.String("gp2"),
/// 						VolumesPerInstance: pulumi.Int(1),
/// 					},
/// 				},
/// 				BidPrice: pulumi.String("0.30"),
/// 				AutoscalingPolicy: pulumi.String(`{
/// \"Constraints\": {
///   \"MinCapacity\": 1,
///   \"MaxCapacity\": 2
/// },
/// \"Rules\": [
///   {
///     \"Name\": \"ScaleOutMemoryPercentage\",
///     \"Description\": \"Scale out if YARNMemoryAvailablePercentage is less than 15\",
///     \"Action\": {
///       \"SimpleScalingPolicyConfiguration\": {
///         \"AdjustmentType\": \"CHANGE_IN_CAPACITY\",
///         \"ScalingAdjustment\": 1,
///         \"CoolDown\": 300
///       }
///     },
///     \"Trigger\": {
///       \"CloudWatchAlarmDefinition\": {
///         \"ComparisonOperator\": \"LESS_THAN\",
///         \"EvaluationPeriods\": 1,
///         \"MetricName\": \"YARNMemoryAvailablePercentage\",
///         \"Namespace\": \"AWS/ElasticMapReduce\",
///         \"Period\": 300,
///         \"Statistic\": \"AVERAGE\",
///         \"Threshold\": 15.0,
///         \"Unit\": \"PERCENT\"
///       }
///     }
///   }
/// ]
/// }
/// `),
/// 			},
/// 			EbsRootVolumeSize: pulumi.Int(100),
/// 			Tags: pulumi.StringMap{
/// 				"role": pulumi.String("rolename"),
/// 				"env":  pulumi.String("env"),
/// 			},
/// 			BootstrapActions: emr.ClusterBootstrapActionArray{
/// 				&emr.ClusterBootstrapActionArgs{
/// 					Path: pulumi.String("s3://elasticmapreduce/bootstrap-actions/run-if"),
/// 					Name: pulumi.String("runif"),
/// 					Args: pulumi.StringArray{
/// 						pulumi.String("instance.isMaster=true"),
/// 						pulumi.String("echo running on master node"),
/// 					},
/// 				},
/// 			},
/// 			ConfigurationsJson: pulumi.String(`  [
///     {
///       \"Classification\": \"hadoop-env\",
///       \"Configurations\": [
///         {
///           \"Classification\": \"export\",
///           \"Properties\": {
///             \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
///           }
///         }
///       ],
///       \"Properties\": {}
///     },
///     {
///       \"Classification\": \"spark-env\",
///       \"Configurations\": [
///         {
///           \"Classification\": \"export\",
///           \"Properties\": {
///             \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
///           }
///         }
///       ],
///       \"Properties\": {}
///     }
///   ]
/// `),
/// 			ServiceRole: pulumi.Any(iamEmrServiceRole.Arn),
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
/// resource "aws_emr_cluster" "cluster" {
///   name                              = "emr-test-arn"
///   release_label                     = "emr-4.6.0"
///   applications                      = ["Spark"]
///   additional_info                   = "{\n  \\\"instanceAwsClientConfiguration\\\": {\n    \\\"proxyPort\\\": 8099,\n    \\\"proxyHost\\\": \\\"myproxy.example.com\\\"\n  }\n}\n"
///   termination_protection            = false
///   keep_job_flow_alive_when_no_steps = true
///   ec2_attributes = {
///     subnet_id                         = main.id
///     emr_managed_master_security_group = sg.id
///     emr_managed_slave_security_group  = sg.id
///     instance_profile                  = emrProfile.arn
///   }
///   master_instance_group = {
///     instance_type = "m4.large"
///   }
///   core_instance_group = {
///     instance_type  = "c4.large"
///     instance_count = 1
///     ebs_configs = [{
///       "size"               = "40"
///       "type"               = "gp2"
///       "volumesPerInstance" = 1
///     }]
///     bid_price          = "0.30"
///     autoscaling_policy = "{\n\\\"Constraints\\\": {\n  \\\"MinCapacity\\\": 1,\n  \\\"MaxCapacity\\\": 2\n},\n\\\"Rules\\\": [\n  {\n    \\\"Name\\\": \\\"ScaleOutMemoryPercentage\\\",\n    \\\"Description\\\": \\\"Scale out if YARNMemoryAvailablePercentage is less than 15\\\",\n    \\\"Action\\\": {\n      \\\"SimpleScalingPolicyConfiguration\\\": {\n        \\\"AdjustmentType\\\": \\\"CHANGE_IN_CAPACITY\\\",\n        \\\"ScalingAdjustment\\\": 1,\n        \\\"CoolDown\\\": 300\n      }\n    },\n    \\\"Trigger\\\": {\n      \\\"CloudWatchAlarmDefinition\\\": {\n        \\\"ComparisonOperator\\\": \\\"LESS_THAN\\\",\n        \\\"EvaluationPeriods\\\": 1,\n        \\\"MetricName\\\": \\\"YARNMemoryAvailablePercentage\\\",\n        \\\"Namespace\\\": \\\"AWS/ElasticMapReduce\\\",\n        \\\"Period\\\": 300,\n        \\\"Statistic\\\": \\\"AVERAGE\\\",\n        \\\"Threshold\\\": 15.0,\n        \\\"Unit\\\": \\\"PERCENT\\\"\n      }\n    }\n  }\n]\n}\n"
///   }
///   ebs_root_volume_size = 100
///   tags = {
///     "role" = "rolename"
///     "env"  = "env"
///   }
///   bootstrap_actions {
///     path = "s3://elasticmapreduce/bootstrap-actions/run-if"
///     name = "runif"
///     args = ["instance.isMaster=true", "echo running on master node"]
///   }
///   configurations_json = "  [\n    {\n      \\\"Classification\\\": \\\"hadoop-env\\\",\n      \\\"Configurations\\\": [\n        {\n          \\\"Classification\\\": \\\"export\\\",\n          \\\"Properties\\\": {\n            \\\"JAVA_HOME\\\": \\\"/usr/lib/jvm/java-1.8.0\\\"\n          }\n        }\n      ],\n      \\\"Properties\\\": {}\n    },\n    {\n      \\\"Classification\\\": \\\"spark-env\\\",\n      \\\"Configurations\\\": [\n        {\n          \\\"Classification\\\": \\\"export\\\",\n          \\\"Properties\\\": {\n            \\\"JAVA_HOME\\\": \\\"/usr/lib/jvm/java-1.8.0\\\"\n          }\n        }\n      ],\n      \\\"Properties\\\": {}\n    }\n  ]\n"
///   service_role        = iamEmrServiceRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.emr.Cluster;
/// import com.pulumi.aws.emr.ClusterArgs;
/// import com.pulumi.aws.emr.inputs.ClusterEc2AttributesArgs;
/// import com.pulumi.aws.emr.inputs.ClusterMasterInstanceGroupArgs;
/// import com.pulumi.aws.emr.inputs.ClusterCoreInstanceGroupArgs;
/// import com.pulumi.aws.emr.inputs.ClusterCoreInstanceGroupEbsConfigArgs;
/// import com.pulumi.aws.emr.inputs.ClusterBootstrapActionArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .name("emr-test-arn")
///             .releaseLabel("emr-4.6.0")
///             .applications("Spark")
///             .additionalInfo("""
/// {
///   \"instanceAwsClientConfiguration\": {
///     \"proxyPort\": 8099,
///     \"proxyHost\": \"myproxy.example.com\"
///   }
/// }
///             """)
///             .terminationProtection(false)
///             .keepJobFlowAliveWhenNoSteps(true)
///             .ec2Attributes(ClusterEc2AttributesArgs.builder()
///                 .subnetId(main.id())
///                 .emrManagedMasterSecurityGroup(sg.id())
///                 .emrManagedSlaveSecurityGroup(sg.id())
///                 .instanceProfile(emrProfile.arn())
///                 .build())
///             .masterInstanceGroup(ClusterMasterInstanceGroupArgs.builder()
///                 .instanceType("m4.large")
///                 .build())
///             .coreInstanceGroup(ClusterCoreInstanceGroupArgs.builder()
///                 .instanceType("c4.large")
///                 .instanceCount(1)
///                 .ebsConfigs(ClusterCoreInstanceGroupEbsConfigArgs.builder()
///                     .size(40)
///                     .type("gp2")
///                     .volumesPerInstance(1)
///                     .build())
///                 .bidPrice("0.30")
///                 .autoscalingPolicy("""
/// {
/// \"Constraints\": {
///   \"MinCapacity\": 1,
///   \"MaxCapacity\": 2
/// },
/// \"Rules\": [
///   {
///     \"Name\": \"ScaleOutMemoryPercentage\",
///     \"Description\": \"Scale out if YARNMemoryAvailablePercentage is less than 15\",
///     \"Action\": {
///       \"SimpleScalingPolicyConfiguration\": {
///         \"AdjustmentType\": \"CHANGE_IN_CAPACITY\",
///         \"ScalingAdjustment\": 1,
///         \"CoolDown\": 300
///       }
///     },
///     \"Trigger\": {
///       \"CloudWatchAlarmDefinition\": {
///         \"ComparisonOperator\": \"LESS_THAN\",
///         \"EvaluationPeriods\": 1,
///         \"MetricName\": \"YARNMemoryAvailablePercentage\",
///         \"Namespace\": \"AWS/ElasticMapReduce\",
///         \"Period\": 300,
///         \"Statistic\": \"AVERAGE\",
///         \"Threshold\": 15.0,
///         \"Unit\": \"PERCENT\"
///       }
///     }
///   }
/// ]
/// }
///                 """)
///                 .build())
///             .ebsRootVolumeSize(100)
///             .tags(Map.ofEntries(
///                 Map.entry("role", "rolename"),
///                 Map.entry("env", "env")
///             ))
///             .bootstrapActions(ClusterBootstrapActionArgs.builder()
///                 .path("s3://elasticmapreduce/bootstrap-actions/run-if")
///                 .name("runif")
///                 .args(
///                     "instance.isMaster=true",
///                     "echo running on master node")
///                 .build())
///             .configurationsJson("""
///   [
///     {
///       \"Classification\": \"hadoop-env\",
///       \"Configurations\": [
///         {
///           \"Classification\": \"export\",
///           \"Properties\": {
///             \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
///           }
///         }
///       ],
///       \"Properties\": {}
///     },
///     {
///       \"Classification\": \"spark-env\",
///       \"Configurations\": [
///         {
///           \"Classification\": \"export\",
///           \"Properties\": {
///             \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
///           }
///         }
///       ],
///       \"Properties\": {}
///     }
///   ]
///             """)
///             .serviceRole(iamEmrServiceRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cluster:
///     type: aws:emr:Cluster
///     properties:
///       name: emr-test-arn
///       releaseLabel: emr-4.6.0
///       applications:
///         - Spark
///       additionalInfo: |
///         {
///           \"instanceAwsClientConfiguration\": {
///             \"proxyPort\": 8099,
///             \"proxyHost\": \"myproxy.example.com\"
///           }
///         }
///       terminationProtection: false
///       keepJobFlowAliveWhenNoSteps: true
///       ec2Attributes:
///         subnetId: ${main.id}
///         emrManagedMasterSecurityGroup: ${sg.id}
///         emrManagedSlaveSecurityGroup: ${sg.id}
///         instanceProfile: ${emrProfile.arn}
///       masterInstanceGroup:
///         instanceType: m4.large
///       coreInstanceGroup:
///         instanceType: c4.large
///         instanceCount: 1
///         ebsConfigs:
///           - size: '40'
///             type: gp2
///             volumesPerInstance: 1
///         bidPrice: '0.30'
///         autoscalingPolicy: |
///           {
///           \"Constraints\": {
///             \"MinCapacity\": 1,
///             \"MaxCapacity\": 2
///           },
///           \"Rules\": [
///             {
///               \"Name\": \"ScaleOutMemoryPercentage\",
///               \"Description\": \"Scale out if YARNMemoryAvailablePercentage is less than 15\",
///               \"Action\": {
///                 \"SimpleScalingPolicyConfiguration\": {
///                   \"AdjustmentType\": \"CHANGE_IN_CAPACITY\",
///                   \"ScalingAdjustment\": 1,
///                   \"CoolDown\": 300
///                 }
///               },
///               \"Trigger\": {
///                 \"CloudWatchAlarmDefinition\": {
///                   \"ComparisonOperator\": \"LESS_THAN\",
///                   \"EvaluationPeriods\": 1,
///                   \"MetricName\": \"YARNMemoryAvailablePercentage\",
///                   \"Namespace\": \"AWS/ElasticMapReduce\",
///                   \"Period\": 300,
///                   \"Statistic\": \"AVERAGE\",
///                   \"Threshold\": 15.0,
///                   \"Unit\": \"PERCENT\"
///                 }
///               }
///             }
///           ]
///           }
///       ebsRootVolumeSize: 100
///       tags:
///         role: rolename
///         env: env
///       bootstrapActions:
///         - path: s3://elasticmapreduce/bootstrap-actions/run-if
///           name: runif
///           args:
///             - instance.isMaster=true
///             - echo running on master node
///       configurationsJson: |2
///           [
///             {
///               \"Classification\": \"hadoop-env\",
///               \"Configurations\": [
///                 {
///                   \"Classification\": \"export\",
///                   \"Properties\": {
///                     \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
///                   }
///                 }
///               ],
///               \"Properties\": {}
///             },
///             {
///               \"Classification\": \"spark-env\",
///               \"Configurations\": [
///                 {
///                   \"Classification\": \"export\",
///                   \"Properties\": {
///                     \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
///                   }
///                 }
///               ],
///               \"Properties\": {}
///             }
///           ]
///       serviceRole: ${iamEmrServiceRole.arn}
/// ```
///
///
/// The `aws.emr.Cluster` resource typically requires two IAM roles, one for the EMR Cluster to use as a service role, and another is assigned to every EC2 instance in a cluster and each application process that runs on a cluster assumes this role for permissions to interact with other AWS services. An additional role, the Auto Scaling role, is required if your cluster uses automatic scaling in Amazon EMR.
///
/// The default AWS managed EMR service role is called `EMR_DefaultRole` with Amazon managed policy `AmazonEMRServicePolicy_v2` attached. The name of default instance profile role is `EMR_EC2_DefaultRole` with default managed policy `AmazonElasticMapReduceforEC2Role` attached, but it is on the path to deprecation and will not be replaced with another default managed policy. You'll need to create and specify an instance profile to replace the deprecated role and default policy. See the [Configure IAM service roles for Amazon EMR](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-iam-roles.html) guide for more information on these IAM roles. There is also a fully-bootable example Pulumi configuration at the bottom of this page.
///
/// ### Instance Fleet
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.emr.Cluster("example", {
///     masterInstanceFleet: {
///         instanceTypeConfigs: [{
///             instanceType: "m4.xlarge",
///         }],
///         targetOnDemandCapacity: 1,
///     },
///     coreInstanceFleet: {
///         instanceTypeConfigs: [
///             {
///                 bidPriceAsPercentageOfOnDemandPrice: 80,
///                 ebsConfigs: [{
///                     size: 100,
///                     type: "gp2",
///                     volumesPerInstance: 1,
///                 }],
///                 instanceType: "m3.xlarge",
///                 weightedCapacity: 1,
///             },
///             {
///                 bidPriceAsPercentageOfOnDemandPrice: 100,
///                 ebsConfigs: [{
///                     size: 100,
///                     type: "gp2",
///                     volumesPerInstance: 1,
///                 }],
///                 instanceType: "m4.xlarge",
///                 weightedCapacity: 1,
///             },
///             {
///                 bidPriceAsPercentageOfOnDemandPrice: 100,
///                 ebsConfigs: [{
///                     size: 100,
///                     type: "gp2",
///                     volumesPerInstance: 1,
///                 }],
///                 instanceType: "m4.2xlarge",
///                 weightedCapacity: 2,
///             },
///         ],
///         launchSpecifications: {
///             spotSpecifications: [{
///                 allocationStrategy: "capacity-optimized",
///                 blockDurationMinutes: 0,
///                 timeoutAction: "SWITCH_TO_ON_DEMAND",
///                 timeoutDurationMinutes: 10,
///             }],
///         },
///         name: "core fleet",
///         targetOnDemandCapacity: 2,
///         targetSpotCapacity: 2,
///     },
/// });
/// const task = new aws.emr.InstanceFleet("task", {
///     clusterId: example.id,
///     instanceTypeConfigs: [
///         {
///             bidPriceAsPercentageOfOnDemandPrice: 100,
///             ebsConfigs: [{
///                 size: 100,
///                 type: "gp2",
///                 volumesPerInstance: 1,
///             }],
///             instanceType: "m4.xlarge",
///             weightedCapacity: 1,
///         },
///         {
///             bidPriceAsPercentageOfOnDemandPrice: 100,
///             ebsConfigs: [{
///                 size: 100,
///                 type: "gp2",
///                 volumesPerInstance: 1,
///             }],
///             instanceType: "m4.2xlarge",
///             weightedCapacity: 2,
///         },
///     ],
///     launchSpecifications: {
///         spotSpecifications: [{
///             allocationStrategy: "capacity-optimized",
///             blockDurationMinutes: 0,
///             timeoutAction: "TERMINATE_CLUSTER",
///             timeoutDurationMinutes: 10,
///         }],
///     },
///     name: "task fleet",
///     targetOnDemandCapacity: 1,
///     targetSpotCapacity: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emr.Cluster("example",
///     master_instance_fleet={
///         "instance_type_configs": [{
///             "instance_type": "m4.xlarge",
///         }],
///         "target_on_demand_capacity": 1,
///     },
///     core_instance_fleet={
///         "instance_type_configs": [
///             {
///                 "bid_price_as_percentage_of_on_demand_price": float(80),
///                 "ebs_configs": [{
///                     "size": 100,
///                     "type": "gp2",
///                     "volumes_per_instance": 1,
///                 }],
///                 "instance_type": "m3.xlarge",
///                 "weighted_capacity": 1,
///             },
///             {
///                 "bid_price_as_percentage_of_on_demand_price": float(100),
///                 "ebs_configs": [{
///                     "size": 100,
///                     "type": "gp2",
///                     "volumes_per_instance": 1,
///                 }],
///                 "instance_type": "m4.xlarge",
///                 "weighted_capacity": 1,
///             },
///             {
///                 "bid_price_as_percentage_of_on_demand_price": float(100),
///                 "ebs_configs": [{
///                     "size": 100,
///                     "type": "gp2",
///                     "volumes_per_instance": 1,
///                 }],
///                 "instance_type": "m4.2xlarge",
///                 "weighted_capacity": 2,
///             },
///         ],
///         "launch_specifications": {
///             "spot_specifications": [{
///                 "allocation_strategy": "capacity-optimized",
///                 "block_duration_minutes": 0,
///                 "timeout_action": "SWITCH_TO_ON_DEMAND",
///                 "timeout_duration_minutes": 10,
///             }],
///         },
///         "name": "core fleet",
///         "target_on_demand_capacity": 2,
///         "target_spot_capacity": 2,
///     })
/// task = aws.emr.InstanceFleet("task",
///     cluster_id=example.id,
///     instance_type_configs=[
///         {
///             "bid_price_as_percentage_of_on_demand_price": float(100),
///             "ebs_configs": [{
///                 "size": 100,
///                 "type": "gp2",
///                 "volumes_per_instance": 1,
///             }],
///             "instance_type": "m4.xlarge",
///             "weighted_capacity": 1,
///         },
///         {
///             "bid_price_as_percentage_of_on_demand_price": float(100),
///             "ebs_configs": [{
///                 "size": 100,
///                 "type": "gp2",
///                 "volumes_per_instance": 1,
///             }],
///             "instance_type": "m4.2xlarge",
///             "weighted_capacity": 2,
///         },
///     ],
///     launch_specifications={
///         "spot_specifications": [{
///             "allocation_strategy": "capacity-optimized",
///             "block_duration_minutes": 0,
///             "timeout_action": "TERMINATE_CLUSTER",
///             "timeout_duration_minutes": 10,
///         }],
///     },
///     name="task fleet",
///     target_on_demand_capacity=1,
///     target_spot_capacity=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Emr.Cluster("example", new()
///     {
///         MasterInstanceFleet = new Aws.Emr.Inputs.ClusterMasterInstanceFleetArgs
///         {
///             InstanceTypeConfigs = new[]
///             {
///                 new Aws.Emr.Inputs.ClusterMasterInstanceFleetInstanceTypeConfigArgs
///                 {
///                     InstanceType = "m4.xlarge",
///                 },
///             },
///             TargetOnDemandCapacity = 1,
///         },
///         CoreInstanceFleet = new Aws.Emr.Inputs.ClusterCoreInstanceFleetArgs
///         {
///             InstanceTypeConfigs = new[]
///             {
///                 new Aws.Emr.Inputs.ClusterCoreInstanceFleetInstanceTypeConfigArgs
///                 {
///                     BidPriceAsPercentageOfOnDemandPrice = 80,
///                     EbsConfigs = new[]
///                     {
///                         new Aws.Emr.Inputs.ClusterCoreInstanceFleetInstanceTypeConfigEbsConfigArgs
///                         {
///                             Size = 100,
///                             Type = "gp2",
///                             VolumesPerInstance = 1,
///                         },
///                     },
///                     InstanceType = "m3.xlarge",
///                     WeightedCapacity = 1,
///                 },
///                 new Aws.Emr.Inputs.ClusterCoreInstanceFleetInstanceTypeConfigArgs
///                 {
///                     BidPriceAsPercentageOfOnDemandPrice = 100,
///                     EbsConfigs = new[]
///                     {
///                         new Aws.Emr.Inputs.ClusterCoreInstanceFleetInstanceTypeConfigEbsConfigArgs
///                         {
///                             Size = 100,
///                             Type = "gp2",
///                             VolumesPerInstance = 1,
///                         },
///                     },
///                     InstanceType = "m4.xlarge",
///                     WeightedCapacity = 1,
///                 },
///                 new Aws.Emr.Inputs.ClusterCoreInstanceFleetInstanceTypeConfigArgs
///                 {
///                     BidPriceAsPercentageOfOnDemandPrice = 100,
///                     EbsConfigs = new[]
///                     {
///                         new Aws.Emr.Inputs.ClusterCoreInstanceFleetInstanceTypeConfigEbsConfigArgs
///                         {
///                             Size = 100,
///                             Type = "gp2",
///                             VolumesPerInstance = 1,
///                         },
///                     },
///                     InstanceType = "m4.2xlarge",
///                     WeightedCapacity = 2,
///                 },
///             },
///             LaunchSpecifications = new Aws.Emr.Inputs.ClusterCoreInstanceFleetLaunchSpecificationsArgs
///             {
///                 SpotSpecifications = new[]
///                 {
///                     new Aws.Emr.Inputs.ClusterCoreInstanceFleetLaunchSpecificationsSpotSpecificationArgs
///                     {
///                         AllocationStrategy = "capacity-optimized",
///                         BlockDurationMinutes = 0,
///                         TimeoutAction = "SWITCH_TO_ON_DEMAND",
///                         TimeoutDurationMinutes = 10,
///                     },
///                 },
///             },
///             Name = "core fleet",
///             TargetOnDemandCapacity = 2,
///             TargetSpotCapacity = 2,
///         },
///     });
///
///     var task = new Aws.Emr.InstanceFleet("task", new()
///     {
///         ClusterId = example.Id,
///         InstanceTypeConfigs = new[]
///         {
///             new Aws.Emr.Inputs.InstanceFleetInstanceTypeConfigArgs
///             {
///                 BidPriceAsPercentageOfOnDemandPrice = 100,
///                 EbsConfigs = new[]
///                 {
///                     new Aws.Emr.Inputs.InstanceFleetInstanceTypeConfigEbsConfigArgs
///                     {
///                         Size = 100,
///                         Type = "gp2",
///                         VolumesPerInstance = 1,
///                     },
///                 },
///                 InstanceType = "m4.xlarge",
///                 WeightedCapacity = 1,
///             },
///             new Aws.Emr.Inputs.InstanceFleetInstanceTypeConfigArgs
///             {
///                 BidPriceAsPercentageOfOnDemandPrice = 100,
///                 EbsConfigs = new[]
///                 {
///                     new Aws.Emr.Inputs.InstanceFleetInstanceTypeConfigEbsConfigArgs
///                     {
///                         Size = 100,
///                         Type = "gp2",
///                         VolumesPerInstance = 1,
///                     },
///                 },
///                 InstanceType = "m4.2xlarge",
///                 WeightedCapacity = 2,
///             },
///         },
///         LaunchSpecifications = new Aws.Emr.Inputs.InstanceFleetLaunchSpecificationsArgs
///         {
///             SpotSpecifications = new[]
///             {
///                 new Aws.Emr.Inputs.InstanceFleetLaunchSpecificationsSpotSpecificationArgs
///                 {
///                     AllocationStrategy = "capacity-optimized",
///                     BlockDurationMinutes = 0,
///                     TimeoutAction = "TERMINATE_CLUSTER",
///                     TimeoutDurationMinutes = 10,
///                 },
///             },
///         },
///         Name = "task fleet",
///         TargetOnDemandCapacity = 1,
///         TargetSpotCapacity = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := emr.NewCluster(ctx, "example", &emr.ClusterArgs{
/// 			MasterInstanceFleet: &emr.ClusterMasterInstanceFleetArgs{
/// 				InstanceTypeConfigs: emr.ClusterMasterInstanceFleetInstanceTypeConfigArray{
/// 					&emr.ClusterMasterInstanceFleetInstanceTypeConfigArgs{
/// 						InstanceType: pulumi.String("m4.xlarge"),
/// 					},
/// 				},
/// 				TargetOnDemandCapacity: pulumi.Int(1),
/// 			},
/// 			CoreInstanceFleet: &emr.ClusterCoreInstanceFleetArgs{
/// 				InstanceTypeConfigs: emr.ClusterCoreInstanceFleetInstanceTypeConfigArray{
/// 					&emr.ClusterCoreInstanceFleetInstanceTypeConfigArgs{
/// 						BidPriceAsPercentageOfOnDemandPrice: pulumi.Float64(80),
/// 						EbsConfigs: emr.ClusterCoreInstanceFleetInstanceTypeConfigEbsConfigArray{
/// 							&emr.ClusterCoreInstanceFleetInstanceTypeConfigEbsConfigArgs{
/// 								Size:               pulumi.Int(100),
/// 								Type:               pulumi.String("gp2"),
/// 								VolumesPerInstance: pulumi.Int(1),
/// 							},
/// 						},
/// 						InstanceType:     pulumi.String("m3.xlarge"),
/// 						WeightedCapacity: pulumi.Int(1),
/// 					},
/// 					&emr.ClusterCoreInstanceFleetInstanceTypeConfigArgs{
/// 						BidPriceAsPercentageOfOnDemandPrice: pulumi.Float64(100),
/// 						EbsConfigs: emr.ClusterCoreInstanceFleetInstanceTypeConfigEbsConfigArray{
/// 							&emr.ClusterCoreInstanceFleetInstanceTypeConfigEbsConfigArgs{
/// 								Size:               pulumi.Int(100),
/// 								Type:               pulumi.String("gp2"),
/// 								VolumesPerInstance: pulumi.Int(1),
/// 							},
/// 						},
/// 						InstanceType:     pulumi.String("m4.xlarge"),
/// 						WeightedCapacity: pulumi.Int(1),
/// 					},
/// 					&emr.ClusterCoreInstanceFleetInstanceTypeConfigArgs{
/// 						BidPriceAsPercentageOfOnDemandPrice: pulumi.Float64(100),
/// 						EbsConfigs: emr.ClusterCoreInstanceFleetInstanceTypeConfigEbsConfigArray{
/// 							&emr.ClusterCoreInstanceFleetInstanceTypeConfigEbsConfigArgs{
/// 								Size:               pulumi.Int(100),
/// 								Type:               pulumi.String("gp2"),
/// 								VolumesPerInstance: pulumi.Int(1),
/// 							},
/// 						},
/// 						InstanceType:     pulumi.String("m4.2xlarge"),
/// 						WeightedCapacity: pulumi.Int(2),
/// 					},
/// 				},
/// 				LaunchSpecifications: &emr.ClusterCoreInstanceFleetLaunchSpecificationsArgs{
/// 					SpotSpecifications: emr.ClusterCoreInstanceFleetLaunchSpecificationsSpotSpecificationArray{
/// 						&emr.ClusterCoreInstanceFleetLaunchSpecificationsSpotSpecificationArgs{
/// 							AllocationStrategy:     pulumi.String("capacity-optimized"),
/// 							BlockDurationMinutes:   pulumi.Int(0),
/// 							TimeoutAction:          pulumi.String("SWITCH_TO_ON_DEMAND"),
/// 							TimeoutDurationMinutes: pulumi.Int(10),
/// 						},
/// 					},
/// 				},
/// 				Name:                   pulumi.String("core fleet"),
/// 				TargetOnDemandCapacity: pulumi.Int(2),
/// 				TargetSpotCapacity:     pulumi.Int(2),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = emr.NewInstanceFleet(ctx, "task", &emr.InstanceFleetArgs{
/// 			ClusterId: example.ID().ToIDOutput().ToStringOutput(),
/// 			InstanceTypeConfigs: emr.InstanceFleetInstanceTypeConfigArray{
/// 				&emr.InstanceFleetInstanceTypeConfigArgs{
/// 					BidPriceAsPercentageOfOnDemandPrice: pulumi.Float64(100),
/// 					EbsConfigs: emr.InstanceFleetInstanceTypeConfigEbsConfigArray{
/// 						&emr.InstanceFleetInstanceTypeConfigEbsConfigArgs{
/// 							Size:               pulumi.Int(100),
/// 							Type:               pulumi.String("gp2"),
/// 							VolumesPerInstance: pulumi.Int(1),
/// 						},
/// 					},
/// 					InstanceType:     pulumi.String("m4.xlarge"),
/// 					WeightedCapacity: pulumi.Int(1),
/// 				},
/// 				&emr.InstanceFleetInstanceTypeConfigArgs{
/// 					BidPriceAsPercentageOfOnDemandPrice: pulumi.Float64(100),
/// 					EbsConfigs: emr.InstanceFleetInstanceTypeConfigEbsConfigArray{
/// 						&emr.InstanceFleetInstanceTypeConfigEbsConfigArgs{
/// 							Size:               pulumi.Int(100),
/// 							Type:               pulumi.String("gp2"),
/// 							VolumesPerInstance: pulumi.Int(1),
/// 						},
/// 					},
/// 					InstanceType:     pulumi.String("m4.2xlarge"),
/// 					WeightedCapacity: pulumi.Int(2),
/// 				},
/// 			},
/// 			LaunchSpecifications: &emr.InstanceFleetLaunchSpecificationsArgs{
/// 				SpotSpecifications: emr.InstanceFleetLaunchSpecificationsSpotSpecificationArray{
/// 					&emr.InstanceFleetLaunchSpecificationsSpotSpecificationArgs{
/// 						AllocationStrategy:     pulumi.String("capacity-optimized"),
/// 						BlockDurationMinutes:   pulumi.Int(0),
/// 						TimeoutAction:          pulumi.String("TERMINATE_CLUSTER"),
/// 						TimeoutDurationMinutes: pulumi.Int(10),
/// 					},
/// 				},
/// 			},
/// 			Name:                   pulumi.String("task fleet"),
/// 			TargetOnDemandCapacity: pulumi.Int(1),
/// 			TargetSpotCapacity:     pulumi.Int(1),
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
/// resource "aws_emr_cluster" "example" {
///   master_instance_fleet = {
///     instance_type_configs = [{
///       "instanceType" = "m4.xlarge"
///     }]
///     target_on_demand_capacity = 1
///   }
///   core_instance_fleet = {
///     instance_type_configs = [{
///       "bidPriceAsPercentageOfOnDemandPrice" = 80
///       "ebsConfigs" = [{
///         "size"               = 100
///         "type"               = "gp2"
///         "volumesPerInstance" = 1
///       }]
///       "instanceType"     = "m3.xlarge"
///       "weightedCapacity" = 1
///       }, {
///       "bidPriceAsPercentageOfOnDemandPrice" = 100
///       "ebsConfigs" = [{
///         "size"               = 100
///         "type"               = "gp2"
///         "volumesPerInstance" = 1
///       }]
///       "instanceType"     = "m4.xlarge"
///       "weightedCapacity" = 1
///       }, {
///       "bidPriceAsPercentageOfOnDemandPrice" = 100
///       "ebsConfigs" = [{
///         "size"               = 100
///         "type"               = "gp2"
///         "volumesPerInstance" = 1
///       }]
///       "instanceType"     = "m4.2xlarge"
///       "weightedCapacity" = 2
///     }]
///     launch_specifications = {
///       spot_specifications = [{
///         "allocationStrategy"     = "capacity-optimized"
///         "blockDurationMinutes"   = 0
///         "timeoutAction"          = "SWITCH_TO_ON_DEMAND"
///         "timeoutDurationMinutes" = 10
///       }]
///     }
///     name                      = "core fleet"
///     target_on_demand_capacity = 2
///     target_spot_capacity      = 2
///   }
/// }
/// resource "aws_emr_instancefleet" "task" {
///   cluster_id = aws_emr_cluster.example.id
///   instance_type_configs {
///     bid_price_as_percentage_of_on_demand_price = 100
///     ebs_configs {
///       size                 = 100
///       type                 = "gp2"
///       volumes_per_instance = 1
///     }
///     instance_type     = "m4.xlarge"
///     weighted_capacity = 1
///   }
///   instance_type_configs {
///     bid_price_as_percentage_of_on_demand_price = 100
///     ebs_configs {
///       size                 = 100
///       type                 = "gp2"
///       volumes_per_instance = 1
///     }
///     instance_type     = "m4.2xlarge"
///     weighted_capacity = 2
///   }
///   launch_specifications = {
///     spot_specifications = [{
///       "allocationStrategy"     = "capacity-optimized"
///       "blockDurationMinutes"   = 0
///       "timeoutAction"          = "TERMINATE_CLUSTER"
///       "timeoutDurationMinutes" = 10
///     }]
///   }
///   name                      = "task fleet"
///   target_on_demand_capacity = 1
///   target_spot_capacity      = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.emr.Cluster;
/// import com.pulumi.aws.emr.ClusterArgs;
/// import com.pulumi.aws.emr.inputs.ClusterMasterInstanceFleetArgs;
/// import com.pulumi.aws.emr.inputs.ClusterMasterInstanceFleetInstanceTypeConfigArgs;
/// import com.pulumi.aws.emr.inputs.ClusterCoreInstanceFleetArgs;
/// import com.pulumi.aws.emr.inputs.ClusterCoreInstanceFleetInstanceTypeConfigArgs;
/// import com.pulumi.aws.emr.inputs.ClusterCoreInstanceFleetInstanceTypeConfigEbsConfigArgs;
/// import com.pulumi.aws.emr.inputs.ClusterCoreInstanceFleetLaunchSpecificationsArgs;
/// import com.pulumi.aws.emr.inputs.ClusterCoreInstanceFleetLaunchSpecificationsSpotSpecificationArgs;
/// import com.pulumi.aws.emr.InstanceFleet;
/// import com.pulumi.aws.emr.InstanceFleetArgs;
/// import com.pulumi.aws.emr.inputs.InstanceFleetInstanceTypeConfigArgs;
/// import com.pulumi.aws.emr.inputs.InstanceFleetInstanceTypeConfigEbsConfigArgs;
/// import com.pulumi.aws.emr.inputs.InstanceFleetLaunchSpecificationsArgs;
/// import com.pulumi.aws.emr.inputs.InstanceFleetLaunchSpecificationsSpotSpecificationArgs;
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
///             .masterInstanceFleet(ClusterMasterInstanceFleetArgs.builder()
///                 .instanceTypeConfigs(ClusterMasterInstanceFleetInstanceTypeConfigArgs.builder()
///                     .instanceType("m4.xlarge")
///                     .build())
///                 .targetOnDemandCapacity(1)
///                 .build())
///             .coreInstanceFleet(ClusterCoreInstanceFleetArgs.builder()
///                 .instanceTypeConfigs(
///                     ClusterCoreInstanceFleetInstanceTypeConfigArgs.builder()
///                         .bidPriceAsPercentageOfOnDemandPrice(80.0)
///                         .ebsConfigs(ClusterCoreInstanceFleetInstanceTypeConfigEbsConfigArgs.builder()
///                             .size(100)
///                             .type("gp2")
///                             .volumesPerInstance(1)
///                             .build())
///                         .instanceType("m3.xlarge")
///                         .weightedCapacity(1)
///                         .build(),
///                     ClusterCoreInstanceFleetInstanceTypeConfigArgs.builder()
///                         .bidPriceAsPercentageOfOnDemandPrice(100.0)
///                         .ebsConfigs(ClusterCoreInstanceFleetInstanceTypeConfigEbsConfigArgs.builder()
///                             .size(100)
///                             .type("gp2")
///                             .volumesPerInstance(1)
///                             .build())
///                         .instanceType("m4.xlarge")
///                         .weightedCapacity(1)
///                         .build(),
///                     ClusterCoreInstanceFleetInstanceTypeConfigArgs.builder()
///                         .bidPriceAsPercentageOfOnDemandPrice(100.0)
///                         .ebsConfigs(ClusterCoreInstanceFleetInstanceTypeConfigEbsConfigArgs.builder()
///                             .size(100)
///                             .type("gp2")
///                             .volumesPerInstance(1)
///                             .build())
///                         .instanceType("m4.2xlarge")
///                         .weightedCapacity(2)
///                         .build())
///                 .launchSpecifications(ClusterCoreInstanceFleetLaunchSpecificationsArgs.builder()
///                     .spotSpecifications(ClusterCoreInstanceFleetLaunchSpecificationsSpotSpecificationArgs.builder()
///                         .allocationStrategy("capacity-optimized")
///                         .blockDurationMinutes(0)
///                         .timeoutAction("SWITCH_TO_ON_DEMAND")
///                         .timeoutDurationMinutes(10)
///                         .build())
///                     .build())
///                 .name("core fleet")
///                 .targetOnDemandCapacity(2)
///                 .targetSpotCapacity(2)
///                 .build())
///             .build());
///
///         var task = new InstanceFleet("task", InstanceFleetArgs.builder()
///             .clusterId(example.id())
///             .instanceTypeConfigs(
///                 InstanceFleetInstanceTypeConfigArgs.builder()
///                     .bidPriceAsPercentageOfOnDemandPrice(100.0)
///                     .ebsConfigs(InstanceFleetInstanceTypeConfigEbsConfigArgs.builder()
///                         .size(100)
///                         .type("gp2")
///                         .volumesPerInstance(1)
///                         .build())
///                     .instanceType("m4.xlarge")
///                     .weightedCapacity(1)
///                     .build(),
///                 InstanceFleetInstanceTypeConfigArgs.builder()
///                     .bidPriceAsPercentageOfOnDemandPrice(100.0)
///                     .ebsConfigs(InstanceFleetInstanceTypeConfigEbsConfigArgs.builder()
///                         .size(100)
///                         .type("gp2")
///                         .volumesPerInstance(1)
///                         .build())
///                     .instanceType("m4.2xlarge")
///                     .weightedCapacity(2)
///                     .build())
///             .launchSpecifications(InstanceFleetLaunchSpecificationsArgs.builder()
///                 .spotSpecifications(InstanceFleetLaunchSpecificationsSpotSpecificationArgs.builder()
///                     .allocationStrategy("capacity-optimized")
///                     .blockDurationMinutes(0)
///                     .timeoutAction("TERMINATE_CLUSTER")
///                     .timeoutDurationMinutes(10)
///                     .build())
///                 .build())
///             .name("task fleet")
///             .targetOnDemandCapacity(1)
///             .targetSpotCapacity(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:emr:Cluster
///     properties:
///       masterInstanceFleet:
///         instanceTypeConfigs:
///           - instanceType: m4.xlarge
///         targetOnDemandCapacity: 1
///       coreInstanceFleet:
///         instanceTypeConfigs:
///           - bidPriceAsPercentageOfOnDemandPrice: 80
///             ebsConfigs:
///               - size: 100
///                 type: gp2
///                 volumesPerInstance: 1
///             instanceType: m3.xlarge
///             weightedCapacity: 1
///           - bidPriceAsPercentageOfOnDemandPrice: 100
///             ebsConfigs:
///               - size: 100
///                 type: gp2
///                 volumesPerInstance: 1
///             instanceType: m4.xlarge
///             weightedCapacity: 1
///           - bidPriceAsPercentageOfOnDemandPrice: 100
///             ebsConfigs:
///               - size: 100
///                 type: gp2
///                 volumesPerInstance: 1
///             instanceType: m4.2xlarge
///             weightedCapacity: 2
///         launchSpecifications:
///           spotSpecifications:
///             - allocationStrategy: capacity-optimized
///               blockDurationMinutes: 0
///               timeoutAction: SWITCH_TO_ON_DEMAND
///               timeoutDurationMinutes: 10
///         name: core fleet
///         targetOnDemandCapacity: 2
///         targetSpotCapacity: 2
///   task:
///     type: aws:emr:InstanceFleet
///     properties:
///       clusterId: ${example.id}
///       instanceTypeConfigs:
///         - bidPriceAsPercentageOfOnDemandPrice: 100
///           ebsConfigs:
///             - size: 100
///               type: gp2
///               volumesPerInstance: 1
///           instanceType: m4.xlarge
///           weightedCapacity: 1
///         - bidPriceAsPercentageOfOnDemandPrice: 100
///           ebsConfigs:
///             - size: 100
///               type: gp2
///               volumesPerInstance: 1
///           instanceType: m4.2xlarge
///           weightedCapacity: 2
///       launchSpecifications:
///         spotSpecifications:
///           - allocationStrategy: capacity-optimized
///             blockDurationMinutes: 0
///             timeoutAction: TERMINATE_CLUSTER
///             timeoutDurationMinutes: 10
///       name: task fleet
///       targetOnDemandCapacity: 1
///       targetSpotCapacity: 1
/// ```
///
///
/// ### Enable Debug Logging
///
/// [Debug logging in EMR](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-debugging.html) is implemented as a step. It is highly recommended that you utilize the resource options configuration with `ignoreChanges` if other steps are being managed outside of this provider.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.emr.Cluster("example", {steps: [{
///     actionOnFailure: "TERMINATE_CLUSTER",
///     name: "Setup Hadoop Debugging",
///     hadoopJarStep: {
///         jar: "command-runner.jar",
///         args: ["state-pusher-script"],
///     },
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emr.Cluster("example", steps=[{
///     "action_on_failure": "TERMINATE_CLUSTER",
///     "name": "Setup Hadoop Debugging",
///     "hadoop_jar_step": {
///         "jar": "command-runner.jar",
///         "args": ["state-pusher-script"],
///     },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Emr.Cluster("example", new()
///     {
///         Steps = new[]
///         {
///             new Aws.Emr.Inputs.ClusterStepArgs
///             {
///                 ActionOnFailure = "TERMINATE_CLUSTER",
///                 Name = "Setup Hadoop Debugging",
///                 HadoopJarStep = new Aws.Emr.Inputs.ClusterStepHadoopJarStepArgs
///                 {
///                     Jar = "command-runner.jar",
///                     Args = new[]
///                     {
///                         "state-pusher-script",
///                     },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emr.NewCluster(ctx, "example", &emr.ClusterArgs{
/// 			Steps: emr.ClusterStepArray{
/// 				&emr.ClusterStepArgs{
/// 					ActionOnFailure: pulumi.String("TERMINATE_CLUSTER"),
/// 					Name:            pulumi.String("Setup Hadoop Debugging"),
/// 					HadoopJarStep: &emr.ClusterStepHadoopJarStepArgs{
/// 						Jar: pulumi.String("command-runner.jar"),
/// 						Args: pulumi.StringArray{
/// 							pulumi.String("state-pusher-script"),
/// 						},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_emr_cluster" "example" {
///   steps {
///     action_on_failure = "TERMINATE_CLUSTER"
///     name              = "Setup Hadoop Debugging"
///     hadoop_jar_step = {
///       jar  = "command-runner.jar"
///       args = ["state-pusher-script"]
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
/// import com.pulumi.aws.emr.Cluster;
/// import com.pulumi.aws.emr.ClusterArgs;
/// import com.pulumi.aws.emr.inputs.ClusterStepArgs;
/// import com.pulumi.aws.emr.inputs.ClusterStepHadoopJarStepArgs;
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
///             .steps(ClusterStepArgs.builder()
///                 .actionOnFailure("TERMINATE_CLUSTER")
///                 .name("Setup Hadoop Debugging")
///                 .hadoopJarStep(ClusterStepHadoopJarStepArgs.builder()
///                     .jar("command-runner.jar")
///                     .args("state-pusher-script")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:emr:Cluster
///     properties:
///       steps:
///         - actionOnFailure: TERMINATE_CLUSTER
///           name: Setup Hadoop Debugging
///           hadoopJarStep:
///             jar: command-runner.jar
///             args:
///               - state-pusher-script
/// ```
///
///
/// ### Multiple Node Master Instance Group
///
/// Available in EMR version 5.23.0 and later, an EMR Cluster can be launched with three master nodes for high availability. Additional information about this functionality and its requirements can be found in the [EMR Management Guide](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-ha.html).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // This configuration is for illustrative purposes and highlights
/// // only relevant configurations for working with this functionality.
/// // Map public IP on launch must be enabled for public (Internet accessible) subnets
/// const example = new aws.ec2.Subnet("example", {mapPublicIpOnLaunch: true});
/// const exampleCluster = new aws.emr.Cluster("example", {
///     releaseLabel: "emr-5.24.1",
///     terminationProtection: true,
///     ec2Attributes: {
///         subnetId: example.id,
///     },
///     masterInstanceGroup: {
///         instanceCount: 3,
///     },
///     coreInstanceGroup: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # This configuration is for illustrative purposes and highlights
/// # only relevant configurations for working with this functionality.
/// # Map public IP on launch must be enabled for public (Internet accessible) subnets
/// example = aws.ec2.Subnet("example", map_public_ip_on_launch=True)
/// example_cluster = aws.emr.Cluster("example",
///     release_label="emr-5.24.1",
///     termination_protection=True,
///     ec2_attributes={
///         "subnet_id": example.id,
///     },
///     master_instance_group={
///         "instance_count": 3,
///     },
///     core_instance_group={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // This configuration is for illustrative purposes and highlights
///     // only relevant configurations for working with this functionality.
///     // Map public IP on launch must be enabled for public (Internet accessible) subnets
///     var example = new Aws.Ec2.Subnet("example", new()
///     {
///         MapPublicIpOnLaunch = true,
///     });
///
///     var exampleCluster = new Aws.Emr.Cluster("example", new()
///     {
///         ReleaseLabel = "emr-5.24.1",
///         TerminationProtection = true,
///         Ec2Attributes = new Aws.Emr.Inputs.ClusterEc2AttributesArgs
///         {
///             SubnetId = example.Id,
///         },
///         MasterInstanceGroup = new Aws.Emr.Inputs.ClusterMasterInstanceGroupArgs
///         {
///             InstanceCount = 3,
///         },
///         CoreInstanceGroup = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// This configuration is for illustrative purposes and highlights
/// 		// only relevant configurations for working with this functionality.
/// 		// Map public IP on launch must be enabled for public (Internet accessible) subnets
/// 		example, err := ec2.NewSubnet(ctx, "example", &ec2.SubnetArgs{
/// 			MapPublicIpOnLaunch: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = emr.NewCluster(ctx, "example", &emr.ClusterArgs{
/// 			ReleaseLabel:          pulumi.String("emr-5.24.1"),
/// 			TerminationProtection: pulumi.Bool(true),
/// 			Ec2Attributes: &emr.ClusterEc2AttributesArgs{
/// 				SubnetId: example.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			MasterInstanceGroup: &emr.ClusterMasterInstanceGroupArgs{
/// 				InstanceCount: pulumi.Int(3),
/// 			},
/// 			CoreInstanceGroup: &emr.ClusterCoreInstanceGroupArgs{},
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
/// # This configuration is for illustrative purposes and highlights
/// # only relevant configurations for working with this functionality.
/// # Map public IP on launch must be enabled for public (Internet accessible) subnets
/// resource "aws_ec2_subnet" "example" {
///   map_public_ip_on_launch = true
/// }
/// resource "aws_emr_cluster" "example" {
///   release_label          = "emr-5.24.1"
///   termination_protection = true
///   ec2_attributes = {
///     subnet_id = aws_ec2_subnet.example.id
///   }
///   # ... other configuration ...
///   master_instance_group = {
///     instance_count = 3
///   }
///   # ... other configuration ...
///   # Master instance count must be set to 3
///   core_instance_group = {}
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
/// import com.pulumi.aws.emr.Cluster;
/// import com.pulumi.aws.emr.ClusterArgs;
/// import com.pulumi.aws.emr.inputs.ClusterEc2AttributesArgs;
/// import com.pulumi.aws.emr.inputs.ClusterMasterInstanceGroupArgs;
/// import com.pulumi.aws.emr.inputs.ClusterCoreInstanceGroupArgs;
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
///         // This configuration is for illustrative purposes and highlights
///         // only relevant configurations for working with this functionality.
///         // Map public IP on launch must be enabled for public (Internet accessible) subnets
///         var example = new Subnet("example", SubnetArgs.builder()
///             .mapPublicIpOnLaunch(true)
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .releaseLabel("emr-5.24.1")
///             .terminationProtection(true)
///             .ec2Attributes(ClusterEc2AttributesArgs.builder()
///                 .subnetId(example.id())
///                 .build())
///             .masterInstanceGroup(ClusterMasterInstanceGroupArgs.builder()
///                 .instanceCount(3)
///                 .build())
///             .coreInstanceGroup(ClusterCoreInstanceGroupArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # This configuration is for illustrative purposes and highlights
///   # only relevant configurations for working with this functionality.
///
///   # Map public IP on launch must be enabled for public (Internet accessible) subnets
///   example:
///     type: aws:ec2:Subnet
///     properties:
///       mapPublicIpOnLaunch: true
///   exampleCluster:
///     type: aws:emr:Cluster
///     name: example
///     properties:
///       releaseLabel: emr-5.24.1
///       terminationProtection: true
///       ec2Attributes:
///         subnetId: ${example.id}
///       masterInstanceGroup:
///         instanceCount: 3
///       coreInstanceGroup: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EMR clusters using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:emr/cluster:Cluster cluster j-123456ABCDEF
/// ```
///
/// Since the API does not return the actual values for Kerberos configurations, environments with those options set will need to use the `lifecycle` configuration block `ignoreChanges` argument available to all Pulumi resources to prevent perpetual differences. For example:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.emr.Cluster("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emr.Cluster("example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Emr.Cluster("example");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emr.NewCluster(ctx, "example", nil)
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
/// resource "aws_emr_cluster" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.emr.Cluster;
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
///         var example = new Cluster("example");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:emr:Cluster
/// ```
class Cluster extends pulumi.CustomResource {
  /// JSON string for selecting additional features such as adding proxy information. Note: Currently there is no API to retrieve the value of this argument after EMR cluster creation from provider, therefore the provider cannot detect drift from the actual EMR cluster if its value is changed outside the provider.
  late final pulumi.Output<String?> additionalInfo;
  /// A case-insensitive list of applications for Amazon EMR to install and configure when launching the cluster. For a list of applications available for each Amazon EMR release version, see the [Amazon EMR Release Guide](https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-release-components.html).
  late final pulumi.Output<List<String>?> applications;
  /// ARN of the cluster.
  late final pulumi.Output<String> arn;
  /// An auto-termination policy for an Amazon EMR cluster. An auto-termination policy defines the amount of idle time in seconds after which a cluster automatically terminates. See Auto Termination Policy Below.
  late final pulumi.Output<ClusterAutoTerminationPolicy?> autoTerminationPolicy;
  /// IAM role for automatic scaling policies. The IAM role provides permissions that the automatic scaling feature requires to launch and terminate EC2 instances in an instance group.
  late final pulumi.Output<String?> autoscalingRole;
  /// Ordered list of bootstrap actions that will be run before Hadoop is started on the cluster nodes. See below.
  late final pulumi.Output<List<Map<String, dynamic>>?> bootstrapActions;
  late final pulumi.Output<String> clusterState;
  /// List of configurations supplied for the EMR cluster you are creating. Supply a configuration object for applications to override their default configuration. See [AWS Documentation](https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html) for more information.
  late final pulumi.Output<String?> configurations;
  /// JSON string for supplying list of configurations for the EMR cluster.
  ///
  /// &gt; **NOTE on `configurationsJson`:** If the `Configurations` value is empty then you should skip the `Configurations` field instead of providing an empty list as a value, `"Configurations": []`.
  ///
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as aws from "@pulumi/aws";
  ///
  /// const cluster = new aws.emr.Cluster("cluster", {configurationsJson: `[
  /// {
  /// \\"Classification\\": \\"hadoop-env\\",
  /// \\"Configurations\\": [
  /// {
  /// \\"Classification\\": \\"export\\",
  /// \\"Properties\\": {
  /// \\"JAVA_HOME\\": \\"/usr/lib/jvm/java-1.8.0\\"
  /// }
  /// }
  /// ],
  /// \\"Properties\\": {}
  /// }
  /// ]
  /// `});
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_aws as aws
  ///
  /// cluster = aws.emr.Cluster("cluster", configurations_json="""[
  /// {
  /// \"Classification\": \"hadoop-env\",
  /// \"Configurations\": [
  /// {
  /// \"Classification\": \"export\",
  /// \"Properties\": {
  /// \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
  /// }
  /// }
  /// ],
  /// \"Properties\": {}
  /// }
  /// ]
  /// """)
  /// ```
  /// ```csharp
  /// using System.Collections.Generic;
  /// using System.Linq;
  /// using Pulumi;
  /// using Aws = Pulumi.Aws;
  ///
  /// return await Deployment.RunAsync(() =>
  /// {
  ///     var cluster = new Aws.Emr.Cluster("cluster", new()
  ///     {
  ///         ConfigurationsJson = @"[
  /// {
  /// \""Classification\"": \""hadoop-env\"",
  /// \""Configurations\"": [
  /// {
  /// \""Classification\"": \""export\"",
  /// \""Properties\"": {
  /// \""JAVA_HOME\"": \""/usr/lib/jvm/java-1.8.0\""
  /// }
  /// }
  /// ],
  /// \""Properties\"": {}
  /// }
  /// ]
  /// ",
  ///     });
  ///
  /// });
  /// ```
  /// ```go
  /// package main
  ///
  /// import (
  /// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
  /// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// 	pulumi.Run(func(ctx *pulumi.Context) error {
  /// 		_, err := emr.NewCluster(ctx, "cluster", &emr.ClusterArgs{
  /// 			ConfigurationsJson: pulumi.String(`[
  /// {
  /// \"Classification\": \"hadoop-env\",
  /// \"Configurations\": [
  /// {
  /// \"Classification\": \"export\",
  /// \"Properties\": {
  /// \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
  /// }
  /// }
  /// ],
  /// \"Properties\": {}
  /// }
  /// ]
  /// `),
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
  /// resource "aws_emr_cluster" "cluster" {
  ///   configurations_json = "[\n{\n\\\"Classification\\\": \\\"hadoop-env\\\",\n\\\"Configurations\\\": [\n{\n\\\"Classification\\\": \\\"export\\\",\n\\\"Properties\\\": {\n\\\"JAVA_HOME\\\": \\\"/usr/lib/jvm/java-1.8.0\\\"\n}\n}\n],\n\\\"Properties\\\": {}\n}\n]\n"
  /// }
  /// ```
  /// ```java
  /// package generated_program;
  ///
  /// import com.pulumi.Context;
  /// import com.pulumi.Pulumi;
  /// import com.pulumi.core.Output;
  /// import com.pulumi.aws.emr.Cluster;
  /// import com.pulumi.aws.emr.ClusterArgs;
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
  ///         var cluster = new Cluster("cluster", ClusterArgs.builder()
  ///             .configurationsJson("""
  /// [
  /// {
  /// \"Classification\": \"hadoop-env\",
  /// \"Configurations\": [
  /// {
  /// \"Classification\": \"export\",
  /// \"Properties\": {
  /// \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
  /// }
  /// }
  /// ],
  /// \"Properties\": {}
  /// }
  /// ]
  ///             """)
  ///             .build());
  ///
  ///     }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  ///   cluster:
  ///     type: aws:emr:Cluster
  ///     properties:
  ///       configurationsJson: |
  ///         [
  ///         {
  ///         \"Classification\": \"hadoop-env\",
  ///         \"Configurations\": [
  ///         {
  ///         \"Classification\": \"export\",
  ///         \"Properties\": {
  ///         \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
  ///         }
  ///         }
  ///         ],
  ///         \"Properties\": {}
  ///         }
  ///         ]
  /// ```
  late final pulumi.Output<String?> configurationsJson;
  /// Configuration block to use an [Instance Fleet](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-fleet.html) for the core node type. Cannot be specified if any `coreInstanceGroup` configuration blocks are set. Detailed below.
  late final pulumi.Output<ClusterCoreInstanceFleet> coreInstanceFleet;
  /// Configuration block to use an [Instance Group](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-group-configuration.html#emr-plan-instance-groups) for the [core node type](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-master-core-task-nodes.html#emr-plan-core).
  late final pulumi.Output<ClusterCoreInstanceGroup> coreInstanceGroup;
  /// Custom Amazon Linux AMI for the cluster (instead of an EMR-owned AMI). Available in Amazon EMR version 5.7.0 and later.
  late final pulumi.Output<String?> customAmiId;
  /// Size in GiB of the EBS root device volume of the Linux AMI that is used for each EC2 instance. Available in Amazon EMR version 4.x and later.
  late final pulumi.Output<int?> ebsRootVolumeSize;
  /// Attributes for the EC2 instances running the job flow. See below.
  late final pulumi.Output<ClusterEc2Attributes?> ec2Attributes;
  /// Switch on/off run cluster with no steps or when all steps are complete (default is on)
  late final pulumi.Output<bool> keepJobFlowAliveWhenNoSteps;
  /// Kerberos configuration for the cluster. See below.
  late final pulumi.Output<ClusterKerberosAttributes?> kerberosAttributes;
  /// List of [step states](https://docs.aws.amazon.com/emr/latest/APIReference/API_StepStatus.html) used to filter returned steps
  late final pulumi.Output<List<String>?> listStepsStates;
  /// AWS KMS customer master key (CMK) key ID or arn used for encrypting log files. This attribute is only available with EMR version 5.30.0 and later, excluding EMR 6.0.0.
  late final pulumi.Output<String?> logEncryptionKmsKeyId;
  /// S3 bucket to write the log files of the job flow. If a value is not provided, logs are not created.
  late final pulumi.Output<String?> logUri;
  /// Configuration block to use an [Instance Fleet](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-fleet.html) for the master node type. Cannot be specified if any `masterInstanceGroup` configuration blocks are set. Detailed below.
  late final pulumi.Output<ClusterMasterInstanceFleet> masterInstanceFleet;
  /// Configuration block to use an [Instance Group](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-group-configuration.html#emr-plan-instance-groups) for the [master node type](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-master-core-task-nodes.html#emr-plan-master).
  late final pulumi.Output<ClusterMasterInstanceGroup> masterInstanceGroup;
  /// The DNS name of the master node. If the cluster is on a private subnet, this is the private DNS name. On a public subnet, this is the public DNS name.
  late final pulumi.Output<String> masterPublicDns;
  /// Name of the job flow.
  late final pulumi.Output<String> name;
  /// Amazon Linux release for all nodes in a cluster launch RunJobFlow request. If not specified, Amazon EMR uses the latest validated Amazon Linux release for cluster launch.
  late final pulumi.Output<String?> osReleaseLabel;
  /// The specified placement group configuration for an Amazon EMR cluster.
  late final pulumi.Output<List<Map<String, dynamic>>?> placementGroupConfigs;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Release label for the Amazon EMR release.
  late final pulumi.Output<String> releaseLabel;
  /// Way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an `instance group` is resized.
  late final pulumi.Output<String> scaleDownBehavior;
  /// Security configuration name to attach to the EMR cluster. Only valid for EMR clusters with `releaseLabel` 4.8.0 or greater.
  late final pulumi.Output<String?> securityConfiguration;
  /// IAM role that will be assumed by the Amazon EMR service to access AWS resources.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> serviceRole;
  /// Number of steps that can be executed concurrently. You can specify a maximum of 256 steps. Only valid for EMR clusters with `releaseLabel` 5.28.0 or greater (default is 1).
  late final pulumi.Output<int?> stepConcurrencyLevel;
  /// List of steps to run when creating the cluster. See below. It is highly recommended to utilize the lifecycle resource options block with `ignoreChanges` if other steps are being managed outside of this provider.
  late final pulumi.Output<List<Map<String, dynamic>>> steps;
  /// list of tags to apply to the EMR Cluster. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Switch on/off termination protection (default is `false`, except when using multiple master nodes). Before attempting to destroy the resource when termination protection is enabled, this configuration must be applied with its value set to `false`.
  late final pulumi.Output<bool> terminationProtection;
  /// Whether whether Amazon EMR should gracefully replace core nodes that have degraded within the cluster. Default value is `false`.
  late final pulumi.Output<bool?> unhealthyNodeReplacement;
  /// Whether the job flow is visible to all IAM users of the AWS account associated with the job flow. Default value is `true`.
  ///
  /// **NOTE:** As per the [Amazon EMR API Reference](https://docs.aws.amazon.com/emr/latest/APIReference/API_RunJobFlow.html#EMR-RunJobFlow-request-VisibleToAllUsers), this argument is no longer supported. Do not set this argument, particularly to `false`, as it would lead to perpetual differences.
  late final pulumi.Output<bool?> visibleToAllUsers;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_emr_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:emr/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalInfo = registerOutput<String?>('additionalInfo');
    applications = registerOutput<List<String>?>('applications');
    arn = registerOutput<String>('arn');
    autoTerminationPolicy = registerOutput<ClusterAutoTerminationPolicy?>('autoTerminationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterAutoTerminationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoscalingRole = registerOutput<String?>('autoscalingRole');
    bootstrapActions = registerOutput<List<Map<String, dynamic>>?>('bootstrapActions');
    clusterState = registerOutput<String>('clusterState');
    configurations = registerOutput<String?>('configurations');
    configurationsJson = registerOutput<String?>('configurationsJson');
    coreInstanceFleet = registerOutput<ClusterCoreInstanceFleet>('coreInstanceFleet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterCoreInstanceFleet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    coreInstanceGroup = registerOutput<ClusterCoreInstanceGroup>('coreInstanceGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterCoreInstanceGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customAmiId = registerOutput<String?>('customAmiId');
    ebsRootVolumeSize = registerOutput<int?>('ebsRootVolumeSize');
    ec2Attributes = registerOutput<ClusterEc2Attributes?>('ec2Attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterEc2Attributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keepJobFlowAliveWhenNoSteps = registerOutput<bool>('keepJobFlowAliveWhenNoSteps');
    kerberosAttributes = registerOutput<ClusterKerberosAttributes?>('kerberosAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterKerberosAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    listStepsStates = registerOutput<List<String>?>('listStepsStates');
    logEncryptionKmsKeyId = registerOutput<String?>('logEncryptionKmsKeyId');
    logUri = registerOutput<String?>('logUri');
    masterInstanceFleet = registerOutput<ClusterMasterInstanceFleet>('masterInstanceFleet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterMasterInstanceFleet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    masterInstanceGroup = registerOutput<ClusterMasterInstanceGroup>('masterInstanceGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterMasterInstanceGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    masterPublicDns = registerOutput<String>('masterPublicDns');
    this.name = registerOutput<String>('name');
    osReleaseLabel = registerOutput<String?>('osReleaseLabel');
    placementGroupConfigs = registerOutput<List<Map<String, dynamic>>?>('placementGroupConfigs');
    region = registerOutput<String>('region');
    releaseLabel = registerOutput<String>('releaseLabel');
    scaleDownBehavior = registerOutput<String>('scaleDownBehavior');
    securityConfiguration = registerOutput<String?>('securityConfiguration');
    serviceRole = registerOutput<String>('serviceRole');
    stepConcurrencyLevel = registerOutput<int?>('stepConcurrencyLevel');
    steps = registerOutput<List<Map<String, dynamic>>>('steps');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    terminationProtection = registerOutput<bool>('terminationProtection');
    unhealthyNodeReplacement = registerOutput<bool?>('unhealthyNodeReplacement');
    visibleToAllUsers = registerOutput<bool?>('visibleToAllUsers');
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
          'aws:emr/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalInfo = registerOutput<String?>('additionalInfo');
    applications = registerOutput<List<String>?>('applications');
    arn = registerOutput<String>('arn');
    autoTerminationPolicy = registerOutput<ClusterAutoTerminationPolicy?>('autoTerminationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterAutoTerminationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoscalingRole = registerOutput<String?>('autoscalingRole');
    bootstrapActions = registerOutput<List<Map<String, dynamic>>?>('bootstrapActions');
    clusterState = registerOutput<String>('clusterState');
    configurations = registerOutput<String?>('configurations');
    configurationsJson = registerOutput<String?>('configurationsJson');
    coreInstanceFleet = registerOutput<ClusterCoreInstanceFleet>('coreInstanceFleet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterCoreInstanceFleet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    coreInstanceGroup = registerOutput<ClusterCoreInstanceGroup>('coreInstanceGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterCoreInstanceGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customAmiId = registerOutput<String?>('customAmiId');
    ebsRootVolumeSize = registerOutput<int?>('ebsRootVolumeSize');
    ec2Attributes = registerOutput<ClusterEc2Attributes?>('ec2Attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterEc2Attributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keepJobFlowAliveWhenNoSteps = registerOutput<bool>('keepJobFlowAliveWhenNoSteps');
    kerberosAttributes = registerOutput<ClusterKerberosAttributes?>('kerberosAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterKerberosAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    listStepsStates = registerOutput<List<String>?>('listStepsStates');
    logEncryptionKmsKeyId = registerOutput<String?>('logEncryptionKmsKeyId');
    logUri = registerOutput<String?>('logUri');
    masterInstanceFleet = registerOutput<ClusterMasterInstanceFleet>('masterInstanceFleet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterMasterInstanceFleet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    masterInstanceGroup = registerOutput<ClusterMasterInstanceGroup>('masterInstanceGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterMasterInstanceGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    masterPublicDns = registerOutput<String>('masterPublicDns');
    this.name = registerOutput<String>('name');
    osReleaseLabel = registerOutput<String?>('osReleaseLabel');
    placementGroupConfigs = registerOutput<List<Map<String, dynamic>>?>('placementGroupConfigs');
    region = registerOutput<String>('region');
    releaseLabel = registerOutput<String>('releaseLabel');
    scaleDownBehavior = registerOutput<String>('scaleDownBehavior');
    securityConfiguration = registerOutput<String?>('securityConfiguration');
    serviceRole = registerOutput<String>('serviceRole');
    stepConcurrencyLevel = registerOutput<int?>('stepConcurrencyLevel');
    steps = registerOutput<List<Map<String, dynamic>>>('steps');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    terminationProtection = registerOutput<bool>('terminationProtection');
    unhealthyNodeReplacement = registerOutput<bool?>('unhealthyNodeReplacement');
    visibleToAllUsers = registerOutput<bool?>('visibleToAllUsers');
  }
}
