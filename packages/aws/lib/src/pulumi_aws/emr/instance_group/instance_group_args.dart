// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_group_ebs_config/instance_group_ebs_config.dart';

/// The set of arguments for InstanceGroup.
class InstanceGroupArgs {
  /// The autoscaling policy document. This is a JSON formatted string. See [EMR Auto Scaling](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-automatic-scaling.html)
  final Input<String>? autoscalingPolicy;

  /// If set, the bid price for each EC2 instance in the instance group, expressed in USD. By setting this attribute, the instance group is being declared as a Spot Instance, and will implicitly create a Spot request. Leave this blank to use On-Demand Instances.
  final Input<String>? bidPrice;

  /// ID of the EMR Cluster to attach to. Changing this forces a new resource to be created.
  final Input<String> clusterId;

  /// A JSON string for supplying list of configurations specific to the EMR instance group. Note that this can only be changed when using EMR release 5.21 or later.
  ///
  /// <!--Start PulumiCodeChooser -->
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
  /// var task = new Aws.Emr.InstanceGroup("task", new()
  /// {
  /// ConfigurationsJson = @"[
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
  /// });
  ///
  /// });
  /// ```
  /// ```go
  /// package main
  ///
  /// import (
  /// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
  /// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// pulumi.Run(func(ctx *pulumi.Context) error {
  /// _, err := emr.NewInstanceGroup(ctx, "task", &emr.InstanceGroupArgs{
  /// ConfigurationsJson: pulumi.String(`[
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
  /// public static void main(String[] args) {
  /// Pulumi.run(App::stack);
  /// }
  ///
  /// public static void stack(Context ctx) {
  /// var task = new InstanceGroup("task", InstanceGroupArgs.builder()
  /// .configurationsJson("""
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
  /// """)
  /// .build());
  ///
  /// }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  /// task:
  /// type: aws:emr:InstanceGroup
  /// properties:
  /// configurationsJson: |
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
  /// ```
  /// <!--End PulumiCodeChooser -->
  final Input<String>? configurationsJson;

  /// One or more <span pulumi-lang-nodejs="`ebsConfig`" pulumi-lang-dotnet="`EbsConfig`" pulumi-lang-go="`ebsConfig`" pulumi-lang-python="`ebs_config`" pulumi-lang-yaml="`ebsConfig`" pulumi-lang-java="`ebsConfig`">`ebs_config`</span> blocks as defined below. Changing this forces a new resource to be created.
  final Input<List<InstanceGroupEbsConfig>>? ebsConfigs;

  /// Indicates whether an Amazon EBS volume is EBS-optimized. Changing this forces a new resource to be created.
  final Input<bool>? ebsOptimized;

  /// target number of instances for the instance group. defaults to 0.
  final Input<int>? instanceCount;

  /// The EC2 instance type for all instances in the instance group. Changing this forces a new resource to be created.
  final Input<String> instanceType;

  /// Human friendly name given to the instance group. Changing this forces a new resource to be created.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  InstanceGroupArgs({
    this.autoscalingPolicy,
    this.bidPrice,
    required this.clusterId,
    this.configurationsJson,
    this.ebsConfigs,
    this.ebsOptimized,
    this.instanceCount,
    required this.instanceType,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingPolicyValue = autoscalingPolicy;
    if (autoscalingPolicyValue != null) {
      map['autoscalingPolicy'] = autoscalingPolicyValue;
    }
    final bidPriceValue = bidPrice;
    if (bidPriceValue != null) {
      map['bidPrice'] = bidPriceValue;
    }
    map['clusterId'] = clusterId;
    final configurationsJsonValue = configurationsJson;
    if (configurationsJsonValue != null) {
      map['configurationsJson'] = configurationsJsonValue;
    }
    final ebsConfigsValue = ebsConfigs;
    if (ebsConfigsValue != null) {
      map['ebsConfigs'] = Input.mapOptionalInputValue<
              List<InstanceGroupEbsConfig>, List<Map<String, dynamic>>>(
          ebsConfigsValue,
          (value) =>
              Input.encodeList<InstanceGroupEbsConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final ebsOptimizedValue = ebsOptimized;
    if (ebsOptimizedValue != null) {
      map['ebsOptimized'] = ebsOptimizedValue;
    }
    final instanceCountValue = instanceCount;
    if (instanceCountValue != null) {
      map['instanceCount'] = instanceCountValue;
    }
    map['instanceType'] = instanceType;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory InstanceGroupArgs.fromMap(Map<String, dynamic> map) {
    return InstanceGroupArgs(
      autoscalingPolicy:
          Input.asOptionalInput<String>(map['autoscalingPolicy']),
      bidPrice: Input.asOptionalInput<String>(map['bidPrice']),
      clusterId: Input.asInput<String>(map['clusterId']),
      configurationsJson:
          Input.asOptionalInput<String>(map['configurationsJson']),
      ebsConfigs: Input.asOptionalInput<List<InstanceGroupEbsConfig>>(
          map['ebsConfigs']),
      ebsOptimized: Input.asOptionalInput<bool>(map['ebsOptimized']),
      instanceCount: Input.asOptionalInput<int>(map['instanceCount']),
      instanceType: Input.asInput<String>(map['instanceType']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
