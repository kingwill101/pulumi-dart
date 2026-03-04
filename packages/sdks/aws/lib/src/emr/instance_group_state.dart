// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_ebs_config.dart';

/// Input properties used for looking up and filtering InstanceGroup resources.
class InstanceGroupState {
  /// The autoscaling policy document. This is a JSON formatted string. See [EMR Auto Scaling](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-automatic-scaling.html)
  final pulumi.Input<String>? autoscalingPolicy;

  /// If set, the bid price for each EC2 instance in the instance group, expressed in USD. By setting this attribute, the instance group is being declared as a Spot Instance, and will implicitly create a Spot request. Leave this blank to use On-Demand Instances.
  final pulumi.Input<String>? bidPrice;

  /// ID of the EMR Cluster to attach to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterId;

  /// A JSON string for supplying list of configurations specific to the EMR instance group. Note that this can only be changed when using EMR release 5.21 or later.
  ///
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as aws from "@pulumi/aws";
  ///
  /// const task = new aws.emr.InstanceGroup("task", {configurationsJson: `[
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
  /// task = aws.emr.InstanceGroup("task", configurations_json="""[
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
  ///     var task = new Aws.Emr.InstanceGroup("task", new()
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
  /// 		_, err := emr.NewInstanceGroup(ctx, "task", &emr.InstanceGroupArgs{
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
  /// ```java
  /// package generated_program;
  ///
  /// import com.pulumi.Context;
  /// import com.pulumi.Pulumi;
  /// import com.pulumi.core.Output;
  /// import com.pulumi.aws.emr.InstanceGroup;
  /// import com.pulumi.aws.emr.InstanceGroupArgs;
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
  ///         var task = new InstanceGroup("task", InstanceGroupArgs.builder()
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
  ///   task:
  ///     type: aws:emr:InstanceGroup
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
  final pulumi.Input<String>? configurationsJson;

  /// One or more `ebs_config` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<InstanceGroupEbsConfig>>? ebsConfigs;

  /// Indicates whether an Amazon EBS volume is EBS-optimized. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? ebsOptimized;

  /// target number of instances for the instance group. defaults to 0.
  final pulumi.Input<int>? instanceCount;

  /// The EC2 instance type for all instances in the instance group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? instanceType;

  /// Human friendly name given to the instance group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The number of instances currently running in this instance group.
  final pulumi.Input<int>? runningInstanceCount;

  /// The current status of the instance group.
  final pulumi.Input<String>? status;

  /// Creates a new [InstanceGroupState].
  /// [autoscalingPolicy] The autoscaling policy document. This is a JSON formatted string. See [EMR Auto Scaling](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-automatic-scaling.html)
  /// [bidPrice] If set, the bid price for each EC2 instance in the instance group, expressed in USD. By setting this attribute, the instance group is being declared as a Spot Instance, and will implicitly create a Spot request. Leave this blank to use On-Demand Instances.
  /// [clusterId] ID of the EMR Cluster to attach to. Changing this forces a new resource to be created.
  /// [configurationsJson] A JSON string for supplying list of configurations specific to the EMR instance group. Note that this can only be changed when using EMR release 5.21 or later.
  /// [ebsConfigs] One or more `ebs_config` blocks as defined below. Changing this forces a new resource to be created.
  /// [ebsOptimized] Indicates whether an Amazon EBS volume is EBS-optimized. Changing this forces a new resource to be created.
  /// [instanceCount] target number of instances for the instance group. defaults to 0.
  /// [instanceType] The EC2 instance type for all instances in the instance group. Changing this forces a new resource to be created.
  /// [name] Human friendly name given to the instance group. Changing this forces a new resource to be created.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [runningInstanceCount] The number of instances currently running in this instance group.
  /// [status] The current status of the instance group.
  InstanceGroupState({
    this.autoscalingPolicy,
    this.bidPrice,
    this.clusterId,
    this.configurationsJson,
    this.ebsConfigs,
    this.ebsOptimized,
    this.instanceCount,
    this.instanceType,
    this.name,
    this.region,
    this.runningInstanceCount,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicy': ?autoscalingPolicy,
      'bidPrice': ?bidPrice,
      'clusterId': ?clusterId,
      'configurationsJson': ?configurationsJson,
      'ebsConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceGroupEbsConfig>,
            List<Map<String, dynamic>>
          >(
            ebsConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceGroupEbsConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ebsOptimized': ?ebsOptimized,
      'instanceCount': ?instanceCount,
      'instanceType': ?instanceType,
      'name': ?name,
      'region': ?region,
      'runningInstanceCount': ?runningInstanceCount,
      'status': ?status,
    };
  }

  factory InstanceGroupState.fromMap(Map<String, dynamic> map) {
    return InstanceGroupState(
      autoscalingPolicy: (() {
        final guardedValue = map['autoscalingPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bidPrice: (() {
        final guardedValue = map['bidPrice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterId: (() {
        final guardedValue = map['clusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      configurationsJson: (() {
        final guardedValue = map['configurationsJson'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ebsConfigs: (() {
        final guardedValue = map['ebsConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceGroupEbsConfig>(
            guardedValue,
            (value) => InstanceGroupEbsConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ebsOptimized: (() {
        final guardedValue = map['ebsOptimized'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      instanceCount: (() {
        final guardedValue = map['instanceCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      runningInstanceCount: (() {
        final guardedValue = map['runningInstanceCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
