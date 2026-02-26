import 'package:pulumi/pulumi.dart';
import '../group_availability_zone_distribution/group_availability_zone_distribution.dart';
import '../group_capacity_reservation_specification/group_capacity_reservation_specification.dart';
import '../group_initial_lifecycle_hook/group_initial_lifecycle_hook.dart';
import '../group_instance_maintenance_policy/group_instance_maintenance_policy.dart';
import '../group_instance_refresh/group_instance_refresh.dart';
import '../group_launch_template/group_launch_template.dart';
import '../group_mixed_instances_policy/group_mixed_instances_policy.dart';
import '../group_tag/group_tag.dart';
import '../group_traffic_source/group_traffic_source.dart';
import '../group_warm_pool/group_warm_pool.dart';
import '../metric/metric.dart';
import 'group_args.dart';

/// Provides an Auto Scaling Group resource.
///
/// > **Note:** You must specify either <span pulumi-lang-nodejs="`launchConfiguration`" pulumi-lang-dotnet="`LaunchConfiguration`" pulumi-lang-go="`launchConfiguration`" pulumi-lang-python="`launch_configuration`" pulumi-lang-yaml="`launchConfiguration`" pulumi-lang-java="`launchConfiguration`">`launch_configuration`</span>, <span pulumi-lang-nodejs="`launchTemplate`" pulumi-lang-dotnet="`LaunchTemplate`" pulumi-lang-go="`launchTemplate`" pulumi-lang-python="`launch_template`" pulumi-lang-yaml="`launchTemplate`" pulumi-lang-java="`launchTemplate`">`launch_template`</span>, or <span pulumi-lang-nodejs="`mixedInstancesPolicy`" pulumi-lang-dotnet="`MixedInstancesPolicy`" pulumi-lang-go="`mixedInstancesPolicy`" pulumi-lang-python="`mixed_instances_policy`" pulumi-lang-yaml="`mixedInstancesPolicy`" pulumi-lang-java="`mixedInstancesPolicy`">`mixed_instances_policy`</span>.
///
/// > **NOTE on Auto Scaling Groups, Attachments and Traffic Source Attachments:** Pulumi provides standalone Attachment (for attaching Classic Load Balancers and Application Load Balancer, Gateway Load Balancer, or Network Load Balancer target groups) and Traffic Source Attachment (for attaching Load Balancers and VPC Lattice target groups) resources and an Auto Scaling Group resource with <span pulumi-lang-nodejs="`loadBalancers`" pulumi-lang-dotnet="`LoadBalancers`" pulumi-lang-go="`loadBalancers`" pulumi-lang-python="`load_balancers`" pulumi-lang-yaml="`loadBalancers`" pulumi-lang-java="`loadBalancers`">`load_balancers`</span>, <span pulumi-lang-nodejs="`targetGroupArns`" pulumi-lang-dotnet="`TargetGroupArns`" pulumi-lang-go="`targetGroupArns`" pulumi-lang-python="`target_group_arns`" pulumi-lang-yaml="`targetGroupArns`" pulumi-lang-java="`targetGroupArns`">`target_group_arns`</span> and <span pulumi-lang-nodejs="`trafficSource`" pulumi-lang-dotnet="`TrafficSource`" pulumi-lang-go="`trafficSource`" pulumi-lang-python="`traffic_source`" pulumi-lang-yaml="`trafficSource`" pulumi-lang-java="`trafficSource`">`traffic_source`</span> attributes. Do not use the same traffic source in more than one of these resources. Doing so will cause a conflict of attachments. A <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> configuration block can be used to suppress differences if necessary.
///
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ec2.PlacementGroup("test", {
/// name: "test",
/// strategy: aws.ec2.PlacementStrategy.Cluster,
/// });
/// const bar = new aws.autoscaling.Group("bar", {
/// name: "foobar3-test",
/// maxSize: 5,
/// minSize: 2,
/// healthCheckGracePeriod: 300,
/// healthCheckType: "ELB",
/// desiredCapacity: 4,
/// forceDelete: true,
/// placementGroup: test.id,
/// launchConfiguration: foobar.name,
/// vpcZoneIdentifiers: [
/// example1.id,
/// example2.id,
/// ],
/// instanceMaintenancePolicy: {
/// minHealthyPercentage: 90,
/// maxHealthyPercentage: 120,
/// },
/// initialLifecycleHooks: [{
/// name: "foobar",
/// defaultResult: "CONTINUE",
/// heartbeatTimeout: 2000,
/// lifecycleTransition: "autoscaling:EC2_INSTANCE_LAUNCHING",
/// notificationMetadata: JSON.stringify({
/// foo: "bar",
/// }),
/// notificationTargetArn: "arn:aws:sqs:us-east-1:444455556666:queue1*",
/// roleArn: "arn:aws:iam::123456789012:role/S3Access",
/// }],
/// tags: [
/// {
/// key: "foo",
/// value: "bar",
/// propagateAtLaunch: true,
/// },
/// {
/// key: "lorem",
/// value: "ipsum",
/// propagateAtLaunch: false,
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// test = aws.ec2.PlacementGroup("test",
/// name="test",
/// strategy=aws.ec2.PlacementStrategy.CLUSTER)
/// bar = aws.autoscaling.Group("bar",
/// name="foobar3-test",
/// max_size=5,
/// min_size=2,
/// health_check_grace_period=300,
/// health_check_type="ELB",
/// desired_capacity=4,
/// force_delete=True,
/// placement_group=test.id,
/// launch_configuration=foobar["name"],
/// vpc_zone_identifiers=[
/// example1["id"],
/// example2["id"],
/// ],
/// instance_maintenance_policy={
/// "min_healthy_percentage": 90,
/// "max_healthy_percentage": 120,
/// },
/// initial_lifecycle_hooks=[{
/// "name": "foobar",
/// "default_result": "CONTINUE",
/// "heartbeat_timeout": 2000,
/// "lifecycle_transition": "autoscaling:EC2_INSTANCE_LAUNCHING",
/// "notification_metadata": json.dumps({
/// "foo": "bar",
/// }),
/// "notification_target_arn": "arn:aws:sqs:us-east-1:444455556666:queue1*",
/// "role_arn": "arn:aws:iam::123456789012:role/S3Access",
/// }],
/// tags=[
/// {
/// "key": "foo",
/// "value": "bar",
/// "propagate_at_launch": True,
/// },
/// {
/// "key": "lorem",
/// "value": "ipsum",
/// "propagate_at_launch": False,
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Ec2.PlacementGroup("test", new()
/// {
/// Name = "test",
/// Strategy = Aws.Ec2.PlacementStrategy.Cluster,
/// });
///
/// var bar = new Aws.AutoScaling.Group("bar", new()
/// {
/// Name = "foobar3-test",
/// MaxSize = 5,
/// MinSize = 2,
/// HealthCheckGracePeriod = 300,
/// HealthCheckType = "ELB",
/// DesiredCapacity = 4,
/// ForceDelete = true,
/// PlacementGroup = test.Id,
/// LaunchConfiguration = foobar.Name,
/// VpcZoneIdentifiers = new[]
/// {
/// example1.Id,
/// example2.Id,
/// },
/// InstanceMaintenancePolicy = new Aws.AutoScaling.Inputs.GroupInstanceMaintenancePolicyArgs
/// {
/// MinHealthyPercentage = 90,
/// MaxHealthyPercentage = 120,
/// },
/// InitialLifecycleHooks = new[]
/// {
/// new Aws.AutoScaling.Inputs.GroupInitialLifecycleHookArgs
/// {
/// Name = "foobar",
/// DefaultResult = "CONTINUE",
/// HeartbeatTimeout = 2000,
/// LifecycleTransition = "autoscaling:EC2_INSTANCE_LAUNCHING",
/// NotificationMetadata = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["foo"] = "bar",
/// }),
/// NotificationTargetArn = "arn:aws:sqs:us-east-1:444455556666:queue1*",
/// RoleArn = "arn:aws:iam::123456789012:role/S3Access",
/// },
/// },
/// Tags = new[]
/// {
/// new Aws.AutoScaling.Inputs.GroupTagArgs
/// {
/// Key = "foo",
/// Value = "bar",
/// PropagateAtLaunch = true,
/// },
/// new Aws.AutoScaling.Inputs.GroupTagArgs
/// {
/// Key = "lorem",
/// Value = "ipsum",
/// PropagateAtLaunch = false,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := ec2.NewPlacementGroup(ctx, "test", &ec2.PlacementGroupArgs{
/// Name:     pulumi.String("test"),
/// Strategy: pulumi.String(ec2.PlacementStrategyCluster),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "foo": "bar",
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = autoscaling.NewGroup(ctx, "bar", &autoscaling.GroupArgs{
/// Name:                   pulumi.String("foobar3-test"),
/// MaxSize:                pulumi.Int(5),
/// MinSize:                pulumi.Int(2),
/// HealthCheckGracePeriod: pulumi.Int(300),
/// HealthCheckType:        pulumi.String("ELB"),
/// DesiredCapacity:        pulumi.Int(4),
/// ForceDelete:            pulumi.Bool(true),
/// PlacementGroup:         test.ID(),
/// LaunchConfiguration:    pulumi.Any(foobar.Name),
/// VpcZoneIdentifiers: pulumi.StringArray{
/// example1.Id,
/// example2.Id,
/// },
/// InstanceMaintenancePolicy: &autoscaling.GroupInstanceMaintenancePolicyArgs{
/// MinHealthyPercentage: pulumi.Int(90),
/// MaxHealthyPercentage: pulumi.Int(120),
/// },
/// InitialLifecycleHooks: autoscaling.GroupInitialLifecycleHookArray{
/// &autoscaling.GroupInitialLifecycleHookArgs{
/// Name:                  pulumi.String("foobar"),
/// DefaultResult:         pulumi.String("CONTINUE"),
/// HeartbeatTimeout:      pulumi.Int(2000),
/// LifecycleTransition:   pulumi.String("autoscaling:EC2_INSTANCE_LAUNCHING"),
/// NotificationMetadata:  pulumi.String(json0),
/// NotificationTargetArn: pulumi.String("arn:aws:sqs:us-east-1:444455556666:queue1*"),
/// RoleArn:               pulumi.String("arn:aws:iam::123456789012:role/S3Access"),
/// },
/// },
/// Tags: autoscaling.GroupTagArray{
/// &autoscaling.GroupTagArgs{
/// Key:               pulumi.String("foo"),
/// Value:             pulumi.String("bar"),
/// PropagateAtLaunch: pulumi.Bool(true),
/// },
/// &autoscaling.GroupTagArgs{
/// Key:               pulumi.String("lorem"),
/// Value:             pulumi.String("ipsum"),
/// PropagateAtLaunch: pulumi.Bool(false),
/// },
/// },
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
/// import com.pulumi.aws.ec2.PlacementGroup;
/// import com.pulumi.aws.ec2.PlacementGroupArgs;
/// import com.pulumi.aws.autoscaling.Group;
/// import com.pulumi.aws.autoscaling.GroupArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupInstanceMaintenancePolicyArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupInitialLifecycleHookArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupTagArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// var test = new PlacementGroup("test", PlacementGroupArgs.builder()
/// .name("test")
/// .strategy("cluster")
/// .build());
///
/// var bar = new Group("bar", GroupArgs.builder()
/// .name("foobar3-test")
/// .maxSize(5)
/// .minSize(2)
/// .healthCheckGracePeriod(300)
/// .healthCheckType("ELB")
/// .desiredCapacity(4)
/// .forceDelete(true)
/// .placementGroup(test.id())
/// .launchConfiguration(foobar.name())
/// .vpcZoneIdentifiers(
/// example1.id(),
/// example2.id())
/// .instanceMaintenancePolicy(GroupInstanceMaintenancePolicyArgs.builder()
/// .minHealthyPercentage(90)
/// .maxHealthyPercentage(120)
/// .build())
/// .initialLifecycleHooks(GroupInitialLifecycleHookArgs.builder()
/// .name("foobar")
/// .defaultResult("CONTINUE")
/// .heartbeatTimeout(2000)
/// .lifecycleTransition("autoscaling:EC2_INSTANCE_LAUNCHING")
/// .notificationMetadata(serializeJson(
/// jsonObject(
/// jsonProperty("foo", "bar")
/// )))
/// .notificationTargetArn("arn:aws:sqs:us-east-1:444455556666:queue1*")
/// .roleArn("arn:aws:iam::123456789012:role/S3Access")
/// .build())
/// .tags(
/// GroupTagArgs.builder()
/// .key("foo")
/// .value("bar")
/// .propagateAtLaunch(true)
/// .build(),
/// GroupTagArgs.builder()
/// .key("lorem")
/// .value("ipsum")
/// .propagateAtLaunch(false)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:ec2:PlacementGroup
/// properties:
/// name: test
/// strategy: cluster
/// bar:
/// type: aws:autoscaling:Group
/// properties:
/// name: foobar3-test
/// maxSize: 5
/// minSize: 2
/// healthCheckGracePeriod: 300
/// healthCheckType: ELB
/// desiredCapacity: 4
/// forceDelete: true
/// placementGroup: ${test.id}
/// launchConfiguration: ${foobar.name}
/// vpcZoneIdentifiers:
/// - ${example1.id}
/// - ${example2.id}
/// instanceMaintenancePolicy:
/// minHealthyPercentage: 90
/// maxHealthyPercentage: 120
/// initialLifecycleHooks:
/// - name: foobar
/// defaultResult: CONTINUE
/// heartbeatTimeout: 2000
/// lifecycleTransition: autoscaling:EC2_INSTANCE_LAUNCHING
/// notificationMetadata:
/// fn::toJSON:
/// foo: bar
/// notificationTargetArn: arn:aws:sqs:us-east-1:444455556666:queue1*
/// roleArn: arn:aws:iam::123456789012:role/S3Access
/// tags:
/// - key: foo
/// value: bar
/// propagateAtLaunch: true
/// - key: lorem
/// value: ipsum
/// propagateAtLaunch: false
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Latest Version Of Launch Template
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foobar = new aws.ec2.LaunchTemplate("foobar", {
/// namePrefix: "foobar",
/// imageId: "ami-1a2b3c",
/// instanceType: "t2.micro",
/// });
/// const bar = new aws.autoscaling.Group("bar", {
/// availabilityZones: ["us-east-1a"],
/// desiredCapacity: 1,
/// maxSize: 1,
/// minSize: 1,
/// launchTemplate: {
/// id: foobar.id,
/// version: "$Latest",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foobar = aws.ec2.LaunchTemplate("foobar",
/// name_prefix="foobar",
/// image_id="ami-1a2b3c",
/// instance_type="t2.micro")
/// bar = aws.autoscaling.Group("bar",
/// availability_zones=["us-east-1a"],
/// desired_capacity=1,
/// max_size=1,
/// min_size=1,
/// launch_template={
/// "id": foobar.id,
/// "version": "$Latest",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foobar = new Aws.Ec2.LaunchTemplate("foobar", new()
/// {
/// NamePrefix = "foobar",
/// ImageId = "ami-1a2b3c",
/// InstanceType = "t2.micro",
/// });
///
/// var bar = new Aws.AutoScaling.Group("bar", new()
/// {
/// AvailabilityZones = new[]
/// {
/// "us-east-1a",
/// },
/// DesiredCapacity = 1,
/// MaxSize = 1,
/// MinSize = 1,
/// LaunchTemplate = new Aws.AutoScaling.Inputs.GroupLaunchTemplateArgs
/// {
/// Id = foobar.Id,
/// Version = "$Latest",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// foobar, err := ec2.NewLaunchTemplate(ctx, "foobar", &ec2.LaunchTemplateArgs{
/// NamePrefix:   pulumi.String("foobar"),
/// ImageId:      pulumi.String("ami-1a2b3c"),
/// InstanceType: pulumi.String("t2.micro"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = autoscaling.NewGroup(ctx, "bar", &autoscaling.GroupArgs{
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String("us-east-1a"),
/// },
/// DesiredCapacity: pulumi.Int(1),
/// MaxSize:         pulumi.Int(1),
/// MinSize:         pulumi.Int(1),
/// LaunchTemplate: &autoscaling.GroupLaunchTemplateArgs{
/// Id:      foobar.ID(),
/// Version: pulumi.String("$Latest"),
/// },
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
/// import com.pulumi.aws.ec2.LaunchTemplate;
/// import com.pulumi.aws.ec2.LaunchTemplateArgs;
/// import com.pulumi.aws.autoscaling.Group;
/// import com.pulumi.aws.autoscaling.GroupArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupLaunchTemplateArgs;
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
/// var foobar = new LaunchTemplate("foobar", LaunchTemplateArgs.builder()
/// .namePrefix("foobar")
/// .imageId("ami-1a2b3c")
/// .instanceType("t2.micro")
/// .build());
///
/// var bar = new Group("bar", GroupArgs.builder()
/// .availabilityZones("us-east-1a")
/// .desiredCapacity(1)
/// .maxSize(1)
/// .minSize(1)
/// .launchTemplate(GroupLaunchTemplateArgs.builder()
/// .id(foobar.id())
/// .version("$Latest")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foobar:
/// type: aws:ec2:LaunchTemplate
/// properties:
/// namePrefix: foobar
/// imageId: ami-1a2b3c
/// instanceType: t2.micro
/// bar:
/// type: aws:autoscaling:Group
/// properties:
/// availabilityZones:
/// - us-east-1a
/// desiredCapacity: 1
/// maxSize: 1
/// minSize: 1
/// launchTemplate:
/// id: ${foobar.id}
/// version: $Latest
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Mixed Instances Policy
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.LaunchTemplate("example", {
/// namePrefix: "example",
/// imageId: exampleAwsAmi.id,
/// instanceType: "c5.large",
/// });
/// const exampleGroup = new aws.autoscaling.Group("example", {
/// availabilityZones: ["us-east-1a"],
/// desiredCapacity: 1,
/// maxSize: 1,
/// minSize: 1,
/// mixedInstancesPolicy: {
/// launchTemplate: {
/// launchTemplateSpecification: {
/// launchTemplateId: example.id,
/// },
/// overrides: [
/// {
/// instanceType: "c4.large",
/// weightedCapacity: "3",
/// },
/// {
/// instanceType: "c3.large",
/// weightedCapacity: "2",
/// },
/// ],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.LaunchTemplate("example",
/// name_prefix="example",
/// image_id=example_aws_ami["id"],
/// instance_type="c5.large")
/// example_group = aws.autoscaling.Group("example",
/// availability_zones=["us-east-1a"],
/// desired_capacity=1,
/// max_size=1,
/// min_size=1,
/// mixed_instances_policy={
/// "launch_template": {
/// "launch_template_specification": {
/// "launch_template_id": example.id,
/// },
/// "overrides": [
/// {
/// "instance_type": "c4.large",
/// "weighted_capacity": "3",
/// },
/// {
/// "instance_type": "c3.large",
/// "weighted_capacity": "2",
/// },
/// ],
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.LaunchTemplate("example", new()
/// {
/// NamePrefix = "example",
/// ImageId = exampleAwsAmi.Id,
/// InstanceType = "c5.large",
/// });
///
/// var exampleGroup = new Aws.AutoScaling.Group("example", new()
/// {
/// AvailabilityZones = new[]
/// {
/// "us-east-1a",
/// },
/// DesiredCapacity = 1,
/// MaxSize = 1,
/// MinSize = 1,
/// MixedInstancesPolicy = new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyArgs
/// {
/// LaunchTemplate = new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateArgs
/// {
/// LaunchTemplateSpecification = new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecificationArgs
/// {
/// LaunchTemplateId = example.Id,
/// },
/// Overrides = new[]
/// {
/// new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateOverrideArgs
/// {
/// InstanceType = "c4.large",
/// WeightedCapacity = "3",
/// },
/// new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateOverrideArgs
/// {
/// InstanceType = "c3.large",
/// WeightedCapacity = "2",
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ec2.NewLaunchTemplate(ctx, "example", &ec2.LaunchTemplateArgs{
/// NamePrefix:   pulumi.String("example"),
/// ImageId:      pulumi.Any(exampleAwsAmi.Id),
/// InstanceType: pulumi.String("c5.large"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = autoscaling.NewGroup(ctx, "example", &autoscaling.GroupArgs{
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String("us-east-1a"),
/// },
/// DesiredCapacity: pulumi.Int(1),
/// MaxSize:         pulumi.Int(1),
/// MinSize:         pulumi.Int(1),
/// MixedInstancesPolicy: &autoscaling.GroupMixedInstancesPolicyArgs{
/// LaunchTemplate: &autoscaling.GroupMixedInstancesPolicyLaunchTemplateArgs{
/// LaunchTemplateSpecification: &autoscaling.GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecificationArgs{
/// LaunchTemplateId: example.ID(),
/// },
/// Overrides: autoscaling.GroupMixedInstancesPolicyLaunchTemplateOverrideArray{
/// &autoscaling.GroupMixedInstancesPolicyLaunchTemplateOverrideArgs{
/// InstanceType:     pulumi.String("c4.large"),
/// WeightedCapacity: pulumi.String("3"),
/// },
/// &autoscaling.GroupMixedInstancesPolicyLaunchTemplateOverrideArgs{
/// InstanceType:     pulumi.String("c3.large"),
/// WeightedCapacity: pulumi.String("2"),
/// },
/// },
/// },
/// },
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
/// import com.pulumi.aws.ec2.LaunchTemplate;
/// import com.pulumi.aws.ec2.LaunchTemplateArgs;
/// import com.pulumi.aws.autoscaling.Group;
/// import com.pulumi.aws.autoscaling.GroupArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupMixedInstancesPolicyArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupMixedInstancesPolicyLaunchTemplateArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecificationArgs;
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
/// var example = new LaunchTemplate("example", LaunchTemplateArgs.builder()
/// .namePrefix("example")
/// .imageId(exampleAwsAmi.id())
/// .instanceType("c5.large")
/// .build());
///
/// var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
/// .availabilityZones("us-east-1a")
/// .desiredCapacity(1)
/// .maxSize(1)
/// .minSize(1)
/// .mixedInstancesPolicy(GroupMixedInstancesPolicyArgs.builder()
/// .launchTemplate(GroupMixedInstancesPolicyLaunchTemplateArgs.builder()
/// .launchTemplateSpecification(GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecificationArgs.builder()
/// .launchTemplateId(example.id())
/// .build())
/// .overrides(
/// GroupMixedInstancesPolicyLaunchTemplateOverrideArgs.builder()
/// .instanceType("c4.large")
/// .weightedCapacity("3")
/// .build(),
/// GroupMixedInstancesPolicyLaunchTemplateOverrideArgs.builder()
/// .instanceType("c3.large")
/// .weightedCapacity("2")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:LaunchTemplate
/// properties:
/// namePrefix: example
/// imageId: ${exampleAwsAmi.id}
/// instanceType: c5.large
/// exampleGroup:
/// type: aws:autoscaling:Group
/// name: example
/// properties:
/// availabilityZones:
/// - us-east-1a
/// desiredCapacity: 1
/// maxSize: 1
/// minSize: 1
/// mixedInstancesPolicy:
/// launchTemplate:
/// launchTemplateSpecification:
/// launchTemplateId: ${example.id}
/// overrides:
/// - instanceType: c4.large
/// weightedCapacity: '3'
/// - instanceType: c3.large
/// weightedCapacity: '2'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Mixed Instances Policy with Spot Instances and Capacity Rebalance
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.LaunchTemplate("example", {
/// namePrefix: "example",
/// imageId: exampleAwsAmi.id,
/// instanceType: "c5.large",
/// });
/// const exampleGroup = new aws.autoscaling.Group("example", {
/// capacityRebalance: true,
/// desiredCapacity: 12,
/// maxSize: 15,
/// minSize: 12,
/// vpcZoneIdentifiers: [
/// example1.id,
/// example2.id,
/// ],
/// mixedInstancesPolicy: {
/// instancesDistribution: {
/// onDemandBaseCapacity: 0,
/// onDemandPercentageAboveBaseCapacity: 25,
/// spotAllocationStrategy: "capacity-optimized",
/// },
/// launchTemplate: {
/// launchTemplateSpecification: {
/// launchTemplateId: example.id,
/// },
/// overrides: [
/// {
/// instanceType: "c4.large",
/// weightedCapacity: "3",
/// },
/// {
/// instanceType: "c3.large",
/// weightedCapacity: "2",
/// },
/// ],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.LaunchTemplate("example",
/// name_prefix="example",
/// image_id=example_aws_ami["id"],
/// instance_type="c5.large")
/// example_group = aws.autoscaling.Group("example",
/// capacity_rebalance=True,
/// desired_capacity=12,
/// max_size=15,
/// min_size=12,
/// vpc_zone_identifiers=[
/// example1["id"],
/// example2["id"],
/// ],
/// mixed_instances_policy={
/// "instances_distribution": {
/// "on_demand_base_capacity": 0,
/// "on_demand_percentage_above_base_capacity": 25,
/// "spot_allocation_strategy": "capacity-optimized",
/// },
/// "launch_template": {
/// "launch_template_specification": {
/// "launch_template_id": example.id,
/// },
/// "overrides": [
/// {
/// "instance_type": "c4.large",
/// "weighted_capacity": "3",
/// },
/// {
/// "instance_type": "c3.large",
/// "weighted_capacity": "2",
/// },
/// ],
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.LaunchTemplate("example", new()
/// {
/// NamePrefix = "example",
/// ImageId = exampleAwsAmi.Id,
/// InstanceType = "c5.large",
/// });
///
/// var exampleGroup = new Aws.AutoScaling.Group("example", new()
/// {
/// CapacityRebalance = true,
/// DesiredCapacity = 12,
/// MaxSize = 15,
/// MinSize = 12,
/// VpcZoneIdentifiers = new[]
/// {
/// example1.Id,
/// example2.Id,
/// },
/// MixedInstancesPolicy = new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyArgs
/// {
/// InstancesDistribution = new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyInstancesDistributionArgs
/// {
/// OnDemandBaseCapacity = 0,
/// OnDemandPercentageAboveBaseCapacity = 25,
/// SpotAllocationStrategy = "capacity-optimized",
/// },
/// LaunchTemplate = new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateArgs
/// {
/// LaunchTemplateSpecification = new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecificationArgs
/// {
/// LaunchTemplateId = example.Id,
/// },
/// Overrides = new[]
/// {
/// new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateOverrideArgs
/// {
/// InstanceType = "c4.large",
/// WeightedCapacity = "3",
/// },
/// new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateOverrideArgs
/// {
/// InstanceType = "c3.large",
/// WeightedCapacity = "2",
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ec2.NewLaunchTemplate(ctx, "example", &ec2.LaunchTemplateArgs{
/// NamePrefix:   pulumi.String("example"),
/// ImageId:      pulumi.Any(exampleAwsAmi.Id),
/// InstanceType: pulumi.String("c5.large"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = autoscaling.NewGroup(ctx, "example", &autoscaling.GroupArgs{
/// CapacityRebalance: pulumi.Bool(true),
/// DesiredCapacity:   pulumi.Int(12),
/// MaxSize:           pulumi.Int(15),
/// MinSize:           pulumi.Int(12),
/// VpcZoneIdentifiers: pulumi.StringArray{
/// example1.Id,
/// example2.Id,
/// },
/// MixedInstancesPolicy: &autoscaling.GroupMixedInstancesPolicyArgs{
/// InstancesDistribution: &autoscaling.GroupMixedInstancesPolicyInstancesDistributionArgs{
/// OnDemandBaseCapacity:                pulumi.Int(0),
/// OnDemandPercentageAboveBaseCapacity: pulumi.Int(25),
/// SpotAllocationStrategy:              pulumi.String("capacity-optimized"),
/// },
/// LaunchTemplate: &autoscaling.GroupMixedInstancesPolicyLaunchTemplateArgs{
/// LaunchTemplateSpecification: &autoscaling.GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecificationArgs{
/// LaunchTemplateId: example.ID(),
/// },
/// Overrides: autoscaling.GroupMixedInstancesPolicyLaunchTemplateOverrideArray{
/// &autoscaling.GroupMixedInstancesPolicyLaunchTemplateOverrideArgs{
/// InstanceType:     pulumi.String("c4.large"),
/// WeightedCapacity: pulumi.String("3"),
/// },
/// &autoscaling.GroupMixedInstancesPolicyLaunchTemplateOverrideArgs{
/// InstanceType:     pulumi.String("c3.large"),
/// WeightedCapacity: pulumi.String("2"),
/// },
/// },
/// },
/// },
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
/// import com.pulumi.aws.ec2.LaunchTemplate;
/// import com.pulumi.aws.ec2.LaunchTemplateArgs;
/// import com.pulumi.aws.autoscaling.Group;
/// import com.pulumi.aws.autoscaling.GroupArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupMixedInstancesPolicyArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupMixedInstancesPolicyInstancesDistributionArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupMixedInstancesPolicyLaunchTemplateArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecificationArgs;
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
/// var example = new LaunchTemplate("example", LaunchTemplateArgs.builder()
/// .namePrefix("example")
/// .imageId(exampleAwsAmi.id())
/// .instanceType("c5.large")
/// .build());
///
/// var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
/// .capacityRebalance(true)
/// .desiredCapacity(12)
/// .maxSize(15)
/// .minSize(12)
/// .vpcZoneIdentifiers(
/// example1.id(),
/// example2.id())
/// .mixedInstancesPolicy(GroupMixedInstancesPolicyArgs.builder()
/// .instancesDistribution(GroupMixedInstancesPolicyInstancesDistributionArgs.builder()
/// .onDemandBaseCapacity(0)
/// .onDemandPercentageAboveBaseCapacity(25)
/// .spotAllocationStrategy("capacity-optimized")
/// .build())
/// .launchTemplate(GroupMixedInstancesPolicyLaunchTemplateArgs.builder()
/// .launchTemplateSpecification(GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecificationArgs.builder()
/// .launchTemplateId(example.id())
/// .build())
/// .overrides(
/// GroupMixedInstancesPolicyLaunchTemplateOverrideArgs.builder()
/// .instanceType("c4.large")
/// .weightedCapacity("3")
/// .build(),
/// GroupMixedInstancesPolicyLaunchTemplateOverrideArgs.builder()
/// .instanceType("c3.large")
/// .weightedCapacity("2")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:LaunchTemplate
/// properties:
/// namePrefix: example
/// imageId: ${exampleAwsAmi.id}
/// instanceType: c5.large
/// exampleGroup:
/// type: aws:autoscaling:Group
/// name: example
/// properties:
/// capacityRebalance: true
/// desiredCapacity: 12
/// maxSize: 15
/// minSize: 12
/// vpcZoneIdentifiers:
/// - ${example1.id}
/// - ${example2.id}
/// mixedInstancesPolicy:
/// instancesDistribution:
/// onDemandBaseCapacity: 0
/// onDemandPercentageAboveBaseCapacity: 25
/// spotAllocationStrategy: capacity-optimized
/// launchTemplate:
/// launchTemplateSpecification:
/// launchTemplateId: ${example.id}
/// overrides:
/// - instanceType: c4.large
/// weightedCapacity: '3'
/// - instanceType: c3.large
/// weightedCapacity: '2'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Mixed Instances Policy with Instance level LaunchTemplateSpecification Overrides
///
/// When using a diverse instance set, some instance types might require a launch template with configuration values unique to that instance type such as a different AMI (Graviton2), architecture specific user data script, different EBS configuration, or different networking configuration.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.LaunchTemplate("example", {
/// namePrefix: "example",
/// imageId: exampleAwsAmi.id,
/// instanceType: "c5.large",
/// });
/// const example2 = new aws.ec2.LaunchTemplate("example2", {
/// namePrefix: "example2",
/// imageId: example2AwsAmi.id,
/// });
/// const exampleGroup = new aws.autoscaling.Group("example", {
/// availabilityZones: ["us-east-1a"],
/// desiredCapacity: 1,
/// maxSize: 1,
/// minSize: 1,
/// mixedInstancesPolicy: {
/// launchTemplate: {
/// launchTemplateSpecification: {
/// launchTemplateId: example.id,
/// },
/// overrides: [
/// {
/// instanceType: "c4.large",
/// weightedCapacity: "3",
/// },
/// {
/// instanceType: "c6g.large",
/// launchTemplateSpecification: {
/// launchTemplateId: example2.id,
/// },
/// weightedCapacity: "2",
/// },
/// ],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.LaunchTemplate("example",
/// name_prefix="example",
/// image_id=example_aws_ami["id"],
/// instance_type="c5.large")
/// example2 = aws.ec2.LaunchTemplate("example2",
/// name_prefix="example2",
/// image_id=example2_aws_ami["id"])
/// example_group = aws.autoscaling.Group("example",
/// availability_zones=["us-east-1a"],
/// desired_capacity=1,
/// max_size=1,
/// min_size=1,
/// mixed_instances_policy={
/// "launch_template": {
/// "launch_template_specification": {
/// "launch_template_id": example.id,
/// },
/// "overrides": [
/// {
/// "instance_type": "c4.large",
/// "weighted_capacity": "3",
/// },
/// {
/// "instance_type": "c6g.large",
/// "launch_template_specification": {
/// "launch_template_id": example2.id,
/// },
/// "weighted_capacity": "2",
/// },
/// ],
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.LaunchTemplate("example", new()
/// {
/// NamePrefix = "example",
/// ImageId = exampleAwsAmi.Id,
/// InstanceType = "c5.large",
/// });
///
/// var example2 = new Aws.Ec2.LaunchTemplate("example2", new()
/// {
/// NamePrefix = "example2",
/// ImageId = example2AwsAmi.Id,
/// });
///
/// var exampleGroup = new Aws.AutoScaling.Group("example", new()
/// {
/// AvailabilityZones = new[]
/// {
/// "us-east-1a",
/// },
/// DesiredCapacity = 1,
/// MaxSize = 1,
/// MinSize = 1,
/// MixedInstancesPolicy = new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyArgs
/// {
/// LaunchTemplate = new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateArgs
/// {
/// LaunchTemplateSpecification = new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecificationArgs
/// {
/// LaunchTemplateId = example.Id,
/// },
/// Overrides = new[]
/// {
/// new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateOverrideArgs
/// {
/// InstanceType = "c4.large",
/// WeightedCapacity = "3",
/// },
/// new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateOverrideArgs
/// {
/// InstanceType = "c6g.large",
/// LaunchTemplateSpecification = new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecificationArgs
/// {
/// LaunchTemplateId = example2.Id,
/// },
/// WeightedCapacity = "2",
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ec2.NewLaunchTemplate(ctx, "example", &ec2.LaunchTemplateArgs{
/// NamePrefix:   pulumi.String("example"),
/// ImageId:      pulumi.Any(exampleAwsAmi.Id),
/// InstanceType: pulumi.String("c5.large"),
/// })
/// if err != nil {
/// return err
/// }
/// example2, err := ec2.NewLaunchTemplate(ctx, "example2", &ec2.LaunchTemplateArgs{
/// NamePrefix: pulumi.String("example2"),
/// ImageId:    pulumi.Any(example2AwsAmi.Id),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = autoscaling.NewGroup(ctx, "example", &autoscaling.GroupArgs{
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String("us-east-1a"),
/// },
/// DesiredCapacity: pulumi.Int(1),
/// MaxSize:         pulumi.Int(1),
/// MinSize:         pulumi.Int(1),
/// MixedInstancesPolicy: &autoscaling.GroupMixedInstancesPolicyArgs{
/// LaunchTemplate: &autoscaling.GroupMixedInstancesPolicyLaunchTemplateArgs{
/// LaunchTemplateSpecification: &autoscaling.GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecificationArgs{
/// LaunchTemplateId: example.ID(),
/// },
/// Overrides: autoscaling.GroupMixedInstancesPolicyLaunchTemplateOverrideArray{
/// &autoscaling.GroupMixedInstancesPolicyLaunchTemplateOverrideArgs{
/// InstanceType:     pulumi.String("c4.large"),
/// WeightedCapacity: pulumi.String("3"),
/// },
/// &autoscaling.GroupMixedInstancesPolicyLaunchTemplateOverrideArgs{
/// InstanceType: pulumi.String("c6g.large"),
/// LaunchTemplateSpecification: &autoscaling.GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecificationArgs{
/// LaunchTemplateId: example2.ID(),
/// },
/// WeightedCapacity: pulumi.String("2"),
/// },
/// },
/// },
/// },
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
/// import com.pulumi.aws.ec2.LaunchTemplate;
/// import com.pulumi.aws.ec2.LaunchTemplateArgs;
/// import com.pulumi.aws.autoscaling.Group;
/// import com.pulumi.aws.autoscaling.GroupArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupMixedInstancesPolicyArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupMixedInstancesPolicyLaunchTemplateArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecificationArgs;
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
/// var example = new LaunchTemplate("example", LaunchTemplateArgs.builder()
/// .namePrefix("example")
/// .imageId(exampleAwsAmi.id())
/// .instanceType("c5.large")
/// .build());
///
/// var example2 = new LaunchTemplate("example2", LaunchTemplateArgs.builder()
/// .namePrefix("example2")
/// .imageId(example2AwsAmi.id())
/// .build());
///
/// var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
/// .availabilityZones("us-east-1a")
/// .desiredCapacity(1)
/// .maxSize(1)
/// .minSize(1)
/// .mixedInstancesPolicy(GroupMixedInstancesPolicyArgs.builder()
/// .launchTemplate(GroupMixedInstancesPolicyLaunchTemplateArgs.builder()
/// .launchTemplateSpecification(GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecificationArgs.builder()
/// .launchTemplateId(example.id())
/// .build())
/// .overrides(
/// GroupMixedInstancesPolicyLaunchTemplateOverrideArgs.builder()
/// .instanceType("c4.large")
/// .weightedCapacity("3")
/// .build(),
/// GroupMixedInstancesPolicyLaunchTemplateOverrideArgs.builder()
/// .instanceType("c6g.large")
/// .launchTemplateSpecification(GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecificationArgs.builder()
/// .launchTemplateId(example2.id())
/// .build())
/// .weightedCapacity("2")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:LaunchTemplate
/// properties:
/// namePrefix: example
/// imageId: ${exampleAwsAmi.id}
/// instanceType: c5.large
/// example2:
/// type: aws:ec2:LaunchTemplate
/// properties:
/// namePrefix: example2
/// imageId: ${example2AwsAmi.id}
/// exampleGroup:
/// type: aws:autoscaling:Group
/// name: example
/// properties:
/// availabilityZones:
/// - us-east-1a
/// desiredCapacity: 1
/// maxSize: 1
/// minSize: 1
/// mixedInstancesPolicy:
/// launchTemplate:
/// launchTemplateSpecification:
/// launchTemplateId: ${example.id}
/// overrides:
/// - instanceType: c4.large
/// weightedCapacity: '3'
/// - instanceType: c6g.large
/// launchTemplateSpecification:
/// launchTemplateId: ${example2.id}
/// weightedCapacity: '2'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Mixed Instances Policy with Attribute-based Instance Type Selection
///
/// As an alternative to manually choosing instance types when creating a mixed instances group, you can specify a set of instance attributes that describe your compute requirements.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.LaunchTemplate("example", {
/// namePrefix: "example",
/// imageId: exampleAwsAmi.id,
/// instanceType: "c5.large",
/// });
/// const exampleGroup = new aws.autoscaling.Group("example", {
/// availabilityZones: ["us-east-1a"],
/// desiredCapacity: 1,
/// maxSize: 1,
/// minSize: 1,
/// mixedInstancesPolicy: {
/// launchTemplate: {
/// launchTemplateSpecification: {
/// launchTemplateId: example.id,
/// },
/// overrides: [{
/// instanceRequirements: {
/// memoryMib: {
/// min: 1000,
/// },
/// vcpuCount: {
/// min: 4,
/// },
/// },
/// }],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.LaunchTemplate("example",
/// name_prefix="example",
/// image_id=example_aws_ami["id"],
/// instance_type="c5.large")
/// example_group = aws.autoscaling.Group("example",
/// availability_zones=["us-east-1a"],
/// desired_capacity=1,
/// max_size=1,
/// min_size=1,
/// mixed_instances_policy={
/// "launch_template": {
/// "launch_template_specification": {
/// "launch_template_id": example.id,
/// },
/// "overrides": [{
/// "instance_requirements": {
/// "memory_mib": {
/// "min": 1000,
/// },
/// "vcpu_count": {
/// "min": 4,
/// },
/// },
/// }],
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.LaunchTemplate("example", new()
/// {
/// NamePrefix = "example",
/// ImageId = exampleAwsAmi.Id,
/// InstanceType = "c5.large",
/// });
///
/// var exampleGroup = new Aws.AutoScaling.Group("example", new()
/// {
/// AvailabilityZones = new[]
/// {
/// "us-east-1a",
/// },
/// DesiredCapacity = 1,
/// MaxSize = 1,
/// MinSize = 1,
/// MixedInstancesPolicy = new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyArgs
/// {
/// LaunchTemplate = new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateArgs
/// {
/// LaunchTemplateSpecification = new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecificationArgs
/// {
/// LaunchTemplateId = example.Id,
/// },
/// Overrides = new[]
/// {
/// new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateOverrideArgs
/// {
/// InstanceRequirements = new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsArgs
/// {
/// MemoryMib = new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMibArgs
/// {
/// Min = 1000,
/// },
/// VcpuCount = new Aws.AutoScaling.Inputs.GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCountArgs
/// {
/// Min = 4,
/// },
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ec2.NewLaunchTemplate(ctx, "example", &ec2.LaunchTemplateArgs{
/// NamePrefix:   pulumi.String("example"),
/// ImageId:      pulumi.Any(exampleAwsAmi.Id),
/// InstanceType: pulumi.String("c5.large"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = autoscaling.NewGroup(ctx, "example", &autoscaling.GroupArgs{
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String("us-east-1a"),
/// },
/// DesiredCapacity: pulumi.Int(1),
/// MaxSize:         pulumi.Int(1),
/// MinSize:         pulumi.Int(1),
/// MixedInstancesPolicy: &autoscaling.GroupMixedInstancesPolicyArgs{
/// LaunchTemplate: &autoscaling.GroupMixedInstancesPolicyLaunchTemplateArgs{
/// LaunchTemplateSpecification: &autoscaling.GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecificationArgs{
/// LaunchTemplateId: example.ID(),
/// },
/// Overrides: autoscaling.GroupMixedInstancesPolicyLaunchTemplateOverrideArray{
/// &autoscaling.GroupMixedInstancesPolicyLaunchTemplateOverrideArgs{
/// InstanceRequirements: &autoscaling.GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsArgs{
/// MemoryMib: &autoscaling.GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMibArgs{
/// Min: pulumi.Int(1000),
/// },
/// VcpuCount: &autoscaling.GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCountArgs{
/// Min: pulumi.Int(4),
/// },
/// },
/// },
/// },
/// },
/// },
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
/// import com.pulumi.aws.ec2.LaunchTemplate;
/// import com.pulumi.aws.ec2.LaunchTemplateArgs;
/// import com.pulumi.aws.autoscaling.Group;
/// import com.pulumi.aws.autoscaling.GroupArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupMixedInstancesPolicyArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupMixedInstancesPolicyLaunchTemplateArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecificationArgs;
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
/// var example = new LaunchTemplate("example", LaunchTemplateArgs.builder()
/// .namePrefix("example")
/// .imageId(exampleAwsAmi.id())
/// .instanceType("c5.large")
/// .build());
///
/// var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
/// .availabilityZones("us-east-1a")
/// .desiredCapacity(1)
/// .maxSize(1)
/// .minSize(1)
/// .mixedInstancesPolicy(GroupMixedInstancesPolicyArgs.builder()
/// .launchTemplate(GroupMixedInstancesPolicyLaunchTemplateArgs.builder()
/// .launchTemplateSpecification(GroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecificationArgs.builder()
/// .launchTemplateId(example.id())
/// .build())
/// .overrides(GroupMixedInstancesPolicyLaunchTemplateOverrideArgs.builder()
/// .instanceRequirements(GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsArgs.builder()
/// .memoryMib(GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMibArgs.builder()
/// .min(1000)
/// .build())
/// .vcpuCount(GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCountArgs.builder()
/// .min(4)
/// .build())
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:LaunchTemplate
/// properties:
/// namePrefix: example
/// imageId: ${exampleAwsAmi.id}
/// instanceType: c5.large
/// exampleGroup:
/// type: aws:autoscaling:Group
/// name: example
/// properties:
/// availabilityZones:
/// - us-east-1a
/// desiredCapacity: 1
/// maxSize: 1
/// minSize: 1
/// mixedInstancesPolicy:
/// launchTemplate:
/// launchTemplateSpecification:
/// launchTemplateId: ${example.id}
/// overrides:
/// - instanceRequirements:
/// memoryMib:
/// min: 1000
/// vcpuCount:
/// min: 4
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Dynamic tagging
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const extraTags = config.getObject<any>("extraTags") || [
/// {
/// key: "Foo",
/// propagateAtLaunch: true,
/// value: "Bar",
/// },
/// {
/// key: "Baz",
/// propagateAtLaunch: true,
/// value: "Bam",
/// },
/// ];
/// const test = new aws.autoscaling.Group("test", {
/// tags: [
/// {
/// key: "explicit1",
/// value: "value1",
/// propagateAtLaunch: true,
/// },
/// {
/// key: "explicit2",
/// value: "value2",
/// propagateAtLaunch: true,
/// },
/// ],
/// name: "foobar3-test",
/// maxSize: 5,
/// minSize: 2,
/// launchConfiguration: foobar.name,
/// vpcZoneIdentifiers: [
/// example1.id,
/// example2.id,
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// extra_tags = config.get_object("extraTags")
/// if extra_tags is None:
/// extra_tags = [
/// {
/// "key": "Foo",
/// "propagateAtLaunch": True,
/// "value": "Bar",
/// },
/// {
/// "key": "Baz",
/// "propagateAtLaunch": True,
/// "value": "Bam",
/// },
/// ]
/// test = aws.autoscaling.Group("test",
/// tags=[
/// {
/// "key": "explicit1",
/// "value": "value1",
/// "propagate_at_launch": True,
/// },
/// {
/// "key": "explicit2",
/// "value": "value2",
/// "propagate_at_launch": True,
/// },
/// ],
/// name="foobar3-test",
/// max_size=5,
/// min_size=2,
/// launch_configuration=foobar["name"],
/// vpc_zone_identifiers=[
/// example1["id"],
/// example2["id"],
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var config = new Config();
/// var extraTags = config.GetObject<dynamic>("extraTags") ?? new[]
/// {
///
/// {
/// { "key", "Foo" },
/// { "propagateAtLaunch", true },
/// { "value", "Bar" },
/// },
///
/// {
/// { "key", "Baz" },
/// { "propagateAtLaunch", true },
/// { "value", "Bam" },
/// },
/// };
/// var test = new Aws.AutoScaling.Group("test", new()
/// {
/// Tags = new[]
/// {
/// new Aws.AutoScaling.Inputs.GroupTagArgs
/// {
/// Key = "explicit1",
/// Value = "value1",
/// PropagateAtLaunch = true,
/// },
/// new Aws.AutoScaling.Inputs.GroupTagArgs
/// {
/// Key = "explicit2",
/// Value = "value2",
/// PropagateAtLaunch = true,
/// },
/// },
/// Name = "foobar3-test",
/// MaxSize = 5,
/// MinSize = 2,
/// LaunchConfiguration = foobar.Name,
/// VpcZoneIdentifiers = new[]
/// {
/// example1.Id,
/// example2.Id,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// extraTags := []map[string]interface{}{
/// map[string]interface{}{
/// "key":               "Foo",
/// "propagateAtLaunch": true,
/// "value":             "Bar",
/// },
/// map[string]interface{}{
/// "key":               "Baz",
/// "propagateAtLaunch": true,
/// "value":             "Bam",
/// },
/// }
/// if param := cfg.GetObject("extraTags"); param != nil {
/// extraTags = param
/// }
/// _, err := autoscaling.NewGroup(ctx, "test", &autoscaling.GroupArgs{
/// Tags: autoscaling.GroupTagArray{
/// &autoscaling.GroupTagArgs{
/// Key:               pulumi.String("explicit1"),
/// Value:             pulumi.String("value1"),
/// PropagateAtLaunch: pulumi.Bool(true),
/// },
/// &autoscaling.GroupTagArgs{
/// Key:               pulumi.String("explicit2"),
/// Value:             pulumi.String("value2"),
/// PropagateAtLaunch: pulumi.Bool(true),
/// },
/// },
/// Name:                pulumi.String("foobar3-test"),
/// MaxSize:             pulumi.Int(5),
/// MinSize:             pulumi.Int(2),
/// LaunchConfiguration: pulumi.Any(foobar.Name),
/// VpcZoneIdentifiers: pulumi.StringArray{
/// example1.Id,
/// example2.Id,
/// },
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
/// import com.pulumi.aws.autoscaling.Group;
/// import com.pulumi.aws.autoscaling.GroupArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupTagArgs;
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
/// final var config = ctx.config();
/// final var extraTags = config.get("extraTags").orElse(List.of(
/// Map.ofEntries(
/// Map.entry("key", "Foo"),
/// Map.entry("propagateAtLaunch", true),
/// Map.entry("value", "Bar")
/// ),
/// Map.ofEntries(
/// Map.entry("key", "Baz"),
/// Map.entry("propagateAtLaunch", true),
/// Map.entry("value", "Bam")
/// )));
/// var test = new Group("test", GroupArgs.builder()
/// .tags(
/// GroupTagArgs.builder()
/// .key("explicit1")
/// .value("value1")
/// .propagateAtLaunch(true)
/// .build(),
/// GroupTagArgs.builder()
/// .key("explicit2")
/// .value("value2")
/// .propagateAtLaunch(true)
/// .build())
/// .name("foobar3-test")
/// .maxSize(5)
/// .minSize(2)
/// .launchConfiguration(foobar.name())
/// .vpcZoneIdentifiers(
/// example1.id(),
/// example2.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// configuration:
/// extraTags:
/// type: dynamic
/// default:
/// - key: Foo
/// propagateAtLaunch: true
/// value: Bar
/// - key: Baz
/// propagateAtLaunch: true
/// value: Bam
/// resources:
/// test:
/// type: aws:autoscaling:Group
/// properties:
/// tags:
/// - key: explicit1
/// value: value1
/// propagateAtLaunch: true
/// - key: explicit2
/// value: value2
/// propagateAtLaunch: true
/// name: foobar3-test
/// maxSize: 5
/// minSize: 2
/// launchConfiguration: ${foobar.name}
/// vpcZoneIdentifiers:
/// - ${example1.id}
/// - ${example2.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Automatically refresh all instances after the group is updated
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getAmi({
/// mostRecent: true,
/// owners: ["amazon"],
/// filters: [{
/// name: "name",
/// values: ["amzn-ami-hvm-*-x86_64-gp2"],
/// }],
/// });
/// const exampleLaunchTemplate = new aws.ec2.LaunchTemplate("example", {
/// imageId: example.then(example => example.id),
/// instanceType: "t3.nano",
/// });
/// const exampleGroup = new aws.autoscaling.Group("example", {
/// availabilityZones: ["us-east-1a"],
/// desiredCapacity: 1,
/// maxSize: 2,
/// minSize: 1,
/// launchTemplate: {
/// id: exampleLaunchTemplate.id,
/// version: exampleLaunchTemplate.latestVersion,
/// },
/// tags: [{
/// key: "Key",
/// value: "Value",
/// propagateAtLaunch: true,
/// }],
/// instanceRefresh: {
/// strategy: "Rolling",
/// preferences: {
/// minHealthyPercentage: 50,
/// },
/// triggers: ["tag"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_ami(most_recent=True,
/// owners=["amazon"],
/// filters=[{
/// "name": "name",
/// "values": ["amzn-ami-hvm-*-x86_64-gp2"],
/// }])
/// example_launch_template = aws.ec2.LaunchTemplate("example",
/// image_id=example.id,
/// instance_type="t3.nano")
/// example_group = aws.autoscaling.Group("example",
/// availability_zones=["us-east-1a"],
/// desired_capacity=1,
/// max_size=2,
/// min_size=1,
/// launch_template={
/// "id": example_launch_template.id,
/// "version": example_launch_template.latest_version,
/// },
/// tags=[{
/// "key": "Key",
/// "value": "Value",
/// "propagate_at_launch": True,
/// }],
/// instance_refresh={
/// "strategy": "Rolling",
/// "preferences": {
/// "min_healthy_percentage": 50,
/// },
/// "triggers": ["tag"],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetAmi.Invoke(new()
/// {
/// MostRecent = true,
/// Owners = new[]
/// {
/// "amazon",
/// },
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetAmiFilterInputArgs
/// {
/// Name = "name",
/// Values = new[]
/// {
/// "amzn-ami-hvm-*-x86_64-gp2",
/// },
/// },
/// },
/// });
///
/// var exampleLaunchTemplate = new Aws.Ec2.LaunchTemplate("example", new()
/// {
/// ImageId = example.Apply(getAmiResult => getAmiResult.Id),
/// InstanceType = "t3.nano",
/// });
///
/// var exampleGroup = new Aws.AutoScaling.Group("example", new()
/// {
/// AvailabilityZones = new[]
/// {
/// "us-east-1a",
/// },
/// DesiredCapacity = 1,
/// MaxSize = 2,
/// MinSize = 1,
/// LaunchTemplate = new Aws.AutoScaling.Inputs.GroupLaunchTemplateArgs
/// {
/// Id = exampleLaunchTemplate.Id,
/// Version = exampleLaunchTemplate.LatestVersion,
/// },
/// Tags = new[]
/// {
/// new Aws.AutoScaling.Inputs.GroupTagArgs
/// {
/// Key = "Key",
/// Value = "Value",
/// PropagateAtLaunch = true,
/// },
/// },
/// InstanceRefresh = new Aws.AutoScaling.Inputs.GroupInstanceRefreshArgs
/// {
/// Strategy = "Rolling",
/// Preferences = new Aws.AutoScaling.Inputs.GroupInstanceRefreshPreferencesArgs
/// {
/// MinHealthyPercentage = 50,
/// },
/// Triggers = new[]
/// {
/// "tag",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ec2.LookupAmi(ctx, &ec2.LookupAmiArgs{
/// MostRecent: pulumi.BoolRef(true),
/// Owners: []string{
/// "amazon",
/// },
/// Filters: []ec2.GetAmiFilter{
/// {
/// Name: "name",
/// Values: []string{
/// "amzn-ami-hvm-*-x86_64-gp2",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// exampleLaunchTemplate, err := ec2.NewLaunchTemplate(ctx, "example", &ec2.LaunchTemplateArgs{
/// ImageId:      pulumi.String(example.Id),
/// InstanceType: pulumi.String("t3.nano"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = autoscaling.NewGroup(ctx, "example", &autoscaling.GroupArgs{
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String("us-east-1a"),
/// },
/// DesiredCapacity: pulumi.Int(1),
/// MaxSize:         pulumi.Int(2),
/// MinSize:         pulumi.Int(1),
/// LaunchTemplate: &autoscaling.GroupLaunchTemplateArgs{
/// Id:      exampleLaunchTemplate.ID(),
/// Version: exampleLaunchTemplate.LatestVersion,
/// },
/// Tags: autoscaling.GroupTagArray{
/// &autoscaling.GroupTagArgs{
/// Key:               pulumi.String("Key"),
/// Value:             pulumi.String("Value"),
/// PropagateAtLaunch: pulumi.Bool(true),
/// },
/// },
/// InstanceRefresh: &autoscaling.GroupInstanceRefreshArgs{
/// Strategy: pulumi.String("Rolling"),
/// Preferences: &autoscaling.GroupInstanceRefreshPreferencesArgs{
/// MinHealthyPercentage: pulumi.Int(50),
/// },
/// Triggers: pulumi.StringArray{
/// pulumi.String("tag"),
/// },
/// },
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetAmiArgs;
/// import com.pulumi.aws.ec2.LaunchTemplate;
/// import com.pulumi.aws.ec2.LaunchTemplateArgs;
/// import com.pulumi.aws.autoscaling.Group;
/// import com.pulumi.aws.autoscaling.GroupArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupLaunchTemplateArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupTagArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupInstanceRefreshArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupInstanceRefreshPreferencesArgs;
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
/// final var example = Ec2Functions.getAmi(GetAmiArgs.builder()
/// .mostRecent(true)
/// .owners("amazon")
/// .filters(GetAmiFilterArgs.builder()
/// .name("name")
/// .values("amzn-ami-hvm-*-x86_64-gp2")
/// .build())
/// .build());
///
/// var exampleLaunchTemplate = new LaunchTemplate("exampleLaunchTemplate", LaunchTemplateArgs.builder()
/// .imageId(example.id())
/// .instanceType("t3.nano")
/// .build());
///
/// var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
/// .availabilityZones("us-east-1a")
/// .desiredCapacity(1)
/// .maxSize(2)
/// .minSize(1)
/// .launchTemplate(GroupLaunchTemplateArgs.builder()
/// .id(exampleLaunchTemplate.id())
/// .version(exampleLaunchTemplate.latestVersion())
/// .build())
/// .tags(GroupTagArgs.builder()
/// .key("Key")
/// .value("Value")
/// .propagateAtLaunch(true)
/// .build())
/// .instanceRefresh(GroupInstanceRefreshArgs.builder()
/// .strategy("Rolling")
/// .preferences(GroupInstanceRefreshPreferencesArgs.builder()
/// .minHealthyPercentage(50)
/// .build())
/// .triggers("tag")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleGroup:
/// type: aws:autoscaling:Group
/// name: example
/// properties:
/// availabilityZones:
/// - us-east-1a
/// desiredCapacity: 1
/// maxSize: 2
/// minSize: 1
/// launchTemplate:
/// id: ${exampleLaunchTemplate.id}
/// version: ${exampleLaunchTemplate.latestVersion}
/// tags:
/// - key: Key
/// value: Value
/// propagateAtLaunch: true
/// instanceRefresh:
/// strategy: Rolling
/// preferences:
/// minHealthyPercentage: 50
/// triggers:
/// - tag
/// exampleLaunchTemplate:
/// type: aws:ec2:LaunchTemplate
/// name: example
/// properties:
/// imageId: ${example.id}
/// instanceType: t3.nano
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2:getAmi
/// arguments:
/// mostRecent: true
/// owners:
/// - amazon
/// filters:
/// - name: name
/// values:
/// - amzn-ami-hvm-*-x86_64-gp2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Auto Scaling group with Warm Pool
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.LaunchTemplate("example", {
/// namePrefix: "example",
/// imageId: exampleAwsAmi.id,
/// instanceType: "c5.large",
/// });
/// const exampleGroup = new aws.autoscaling.Group("example", {
/// availabilityZones: ["us-east-1a"],
/// desiredCapacity: 1,
/// maxSize: 5,
/// minSize: 1,
/// warmPool: {
/// poolState: "Hibernated",
/// minSize: 1,
/// maxGroupPreparedCapacity: 10,
/// instanceReusePolicy: {
/// reuseOnScaleIn: true,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.LaunchTemplate("example",
/// name_prefix="example",
/// image_id=example_aws_ami["id"],
/// instance_type="c5.large")
/// example_group = aws.autoscaling.Group("example",
/// availability_zones=["us-east-1a"],
/// desired_capacity=1,
/// max_size=5,
/// min_size=1,
/// warm_pool={
/// "pool_state": "Hibernated",
/// "min_size": 1,
/// "max_group_prepared_capacity": 10,
/// "instance_reuse_policy": {
/// "reuse_on_scale_in": True,
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.LaunchTemplate("example", new()
/// {
/// NamePrefix = "example",
/// ImageId = exampleAwsAmi.Id,
/// InstanceType = "c5.large",
/// });
///
/// var exampleGroup = new Aws.AutoScaling.Group("example", new()
/// {
/// AvailabilityZones = new[]
/// {
/// "us-east-1a",
/// },
/// DesiredCapacity = 1,
/// MaxSize = 5,
/// MinSize = 1,
/// WarmPool = new Aws.AutoScaling.Inputs.GroupWarmPoolArgs
/// {
/// PoolState = "Hibernated",
/// MinSize = 1,
/// MaxGroupPreparedCapacity = 10,
/// InstanceReusePolicy = new Aws.AutoScaling.Inputs.GroupWarmPoolInstanceReusePolicyArgs
/// {
/// ReuseOnScaleIn = true,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewLaunchTemplate(ctx, "example", &ec2.LaunchTemplateArgs{
/// NamePrefix:   pulumi.String("example"),
/// ImageId:      pulumi.Any(exampleAwsAmi.Id),
/// InstanceType: pulumi.String("c5.large"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = autoscaling.NewGroup(ctx, "example", &autoscaling.GroupArgs{
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String("us-east-1a"),
/// },
/// DesiredCapacity: pulumi.Int(1),
/// MaxSize:         pulumi.Int(5),
/// MinSize:         pulumi.Int(1),
/// WarmPool: &autoscaling.GroupWarmPoolArgs{
/// PoolState:                pulumi.String("Hibernated"),
/// MinSize:                  pulumi.Int(1),
/// MaxGroupPreparedCapacity: pulumi.Int(10),
/// InstanceReusePolicy: &autoscaling.GroupWarmPoolInstanceReusePolicyArgs{
/// ReuseOnScaleIn: pulumi.Bool(true),
/// },
/// },
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
/// import com.pulumi.aws.ec2.LaunchTemplate;
/// import com.pulumi.aws.ec2.LaunchTemplateArgs;
/// import com.pulumi.aws.autoscaling.Group;
/// import com.pulumi.aws.autoscaling.GroupArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupWarmPoolArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupWarmPoolInstanceReusePolicyArgs;
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
/// var example = new LaunchTemplate("example", LaunchTemplateArgs.builder()
/// .namePrefix("example")
/// .imageId(exampleAwsAmi.id())
/// .instanceType("c5.large")
/// .build());
///
/// var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
/// .availabilityZones("us-east-1a")
/// .desiredCapacity(1)
/// .maxSize(5)
/// .minSize(1)
/// .warmPool(GroupWarmPoolArgs.builder()
/// .poolState("Hibernated")
/// .minSize(1)
/// .maxGroupPreparedCapacity(10)
/// .instanceReusePolicy(GroupWarmPoolInstanceReusePolicyArgs.builder()
/// .reuseOnScaleIn(true)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:LaunchTemplate
/// properties:
/// namePrefix: example
/// imageId: ${exampleAwsAmi.id}
/// instanceType: c5.large
/// exampleGroup:
/// type: aws:autoscaling:Group
/// name: example
/// properties:
/// availabilityZones:
/// - us-east-1a
/// desiredCapacity: 1
/// maxSize: 5
/// minSize: 1
/// warmPool:
/// poolState: Hibernated
/// minSize: 1
/// maxGroupPreparedCapacity: 10
/// instanceReusePolicy:
/// reuseOnScaleIn: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Auto Scaling group with Traffic Sources
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.autoscaling.Group("test", {
/// trafficSources: testAwsVpclatticeTargetGroup.map(__item => __item).map((v, k) => ({key: k, value: v})).map(entry => ({
/// identifier: entry.value.arn,
/// type: "vpc-lattice",
/// })),
/// vpcZoneIdentifiers: testAwsSubnet.id,
/// maxSize: 1,
/// minSize: 1,
/// forceDelete: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.autoscaling.Group("test",
/// traffic_sources=[{
/// "identifier": entry["value"]["arn"],
/// "type": "vpc-lattice",
/// } for entry in [{"key": k, "value": v} for k, v in [__item for __item in test_aws_vpclattice_target_group]]],
/// vpc_zone_identifiers=test_aws_subnet["id"],
/// max_size=1,
/// min_size=1,
/// force_delete=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.AutoScaling.Group("test", new()
/// {
/// TrafficSources = testAwsVpclatticeTargetGroup.Select(__item => __item).ToList().Select((v, k) => new { Key = k, Value = v }).Select(entry =>
/// {
/// return new Aws.AutoScaling.Inputs.GroupTrafficSourceArgs
/// {
/// Identifier = entry.Value.Arn,
/// Type = "vpc-lattice",
/// };
/// }).ToList(),
/// VpcZoneIdentifiers = testAwsSubnet.Id,
/// MaxSize = 1,
/// MinSize = 1,
/// ForceDelete = true,
/// });
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Waiting for Capacity
///
/// A newly-created ASG is initially empty and begins to scale to <span pulumi-lang-nodejs="`minSize`" pulumi-lang-dotnet="`MinSize`" pulumi-lang-go="`minSize`" pulumi-lang-python="`min_size`" pulumi-lang-yaml="`minSize`" pulumi-lang-java="`minSize`">`min_size`</span> (or
/// <span pulumi-lang-nodejs="`desiredCapacity`" pulumi-lang-dotnet="`DesiredCapacity`" pulumi-lang-go="`desiredCapacity`" pulumi-lang-python="`desired_capacity`" pulumi-lang-yaml="`desiredCapacity`" pulumi-lang-java="`desiredCapacity`">`desired_capacity`</span>, if specified) by launching instances using the provided
/// Launch Configuration. These instances take time to launch and boot.
///
/// On ASG Update, changes to these values also take time to result in the target
/// number of instances providing service.
///
/// This provider provides two mechanisms to help consistently manage ASG scale up
/// time across dependent resources.
///
/// #### Waiting for ASG Capacity
///
/// The first is default behavior. This provider waits after ASG creation for
/// <span pulumi-lang-nodejs="`minSize`" pulumi-lang-dotnet="`MinSize`" pulumi-lang-go="`minSize`" pulumi-lang-python="`min_size`" pulumi-lang-yaml="`minSize`" pulumi-lang-java="`minSize`">`min_size`</span> (or <span pulumi-lang-nodejs="`desiredCapacity`" pulumi-lang-dotnet="`DesiredCapacity`" pulumi-lang-go="`desiredCapacity`" pulumi-lang-python="`desired_capacity`" pulumi-lang-yaml="`desiredCapacity`" pulumi-lang-java="`desiredCapacity`">`desired_capacity`</span>, if specified) healthy instances to show up
/// in the ASG before continuing.
///
/// If <span pulumi-lang-nodejs="`minSize`" pulumi-lang-dotnet="`MinSize`" pulumi-lang-go="`minSize`" pulumi-lang-python="`min_size`" pulumi-lang-yaml="`minSize`" pulumi-lang-java="`minSize`">`min_size`</span> or <span pulumi-lang-nodejs="`desiredCapacity`" pulumi-lang-dotnet="`DesiredCapacity`" pulumi-lang-go="`desiredCapacity`" pulumi-lang-python="`desired_capacity`" pulumi-lang-yaml="`desiredCapacity`" pulumi-lang-java="`desiredCapacity`">`desired_capacity`</span> are changed in a subsequent update,
/// this provider will also wait for the correct number of healthy instances before
/// continuing.
///
/// This provider considers an instance "healthy" when the ASG reports `HealthStatus:
/// "Healthy"` and `LifecycleState: "InService"`. See the [AWS AutoScaling
/// Docs](https://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/AutoScalingGroupLifecycle.html)
/// for more information on an ASG's lifecycle.
///
/// This provider will wait for healthy instances for up to
/// <span pulumi-lang-nodejs="`waitForCapacityTimeout`" pulumi-lang-dotnet="`WaitForCapacityTimeout`" pulumi-lang-go="`waitForCapacityTimeout`" pulumi-lang-python="`wait_for_capacity_timeout`" pulumi-lang-yaml="`waitForCapacityTimeout`" pulumi-lang-java="`waitForCapacityTimeout`">`wait_for_capacity_timeout`</span>. If ASG creation is taking more than a few minutes,
/// it's worth investigating for scaling activity errors, which can be caused by
/// problems with the selected Launch Configuration.
///
/// Setting <span pulumi-lang-nodejs="`waitForCapacityTimeout`" pulumi-lang-dotnet="`WaitForCapacityTimeout`" pulumi-lang-go="`waitForCapacityTimeout`" pulumi-lang-python="`wait_for_capacity_timeout`" pulumi-lang-yaml="`waitForCapacityTimeout`" pulumi-lang-java="`waitForCapacityTimeout`">`wait_for_capacity_timeout`</span> to `"0"` disables ASG Capacity waiting.
///
/// #### Waiting for ELB Capacity
///
/// The second mechanism is optional, and affects ASGs with attached ELBs specified
/// via the <span pulumi-lang-nodejs="`loadBalancers`" pulumi-lang-dotnet="`LoadBalancers`" pulumi-lang-go="`loadBalancers`" pulumi-lang-python="`load_balancers`" pulumi-lang-yaml="`loadBalancers`" pulumi-lang-java="`loadBalancers`">`load_balancers`</span> attribute or with ALBs specified with <span pulumi-lang-nodejs="`targetGroupArns`" pulumi-lang-dotnet="`TargetGroupArns`" pulumi-lang-go="`targetGroupArns`" pulumi-lang-python="`target_group_arns`" pulumi-lang-yaml="`targetGroupArns`" pulumi-lang-java="`targetGroupArns`">`target_group_arns`</span>.
///
/// The <span pulumi-lang-nodejs="`minElbCapacity`" pulumi-lang-dotnet="`MinElbCapacity`" pulumi-lang-go="`minElbCapacity`" pulumi-lang-python="`min_elb_capacity`" pulumi-lang-yaml="`minElbCapacity`" pulumi-lang-java="`minElbCapacity`">`min_elb_capacity`</span> parameter causes the provider to wait for at least the
/// requested number of instances to show up `"InService"` in all attached ELBs
/// during ASG creation. It has no effect on ASG updates.
///
/// If <span pulumi-lang-nodejs="`waitForElbCapacity`" pulumi-lang-dotnet="`WaitForElbCapacity`" pulumi-lang-go="`waitForElbCapacity`" pulumi-lang-python="`wait_for_elb_capacity`" pulumi-lang-yaml="`waitForElbCapacity`" pulumi-lang-java="`waitForElbCapacity`">`wait_for_elb_capacity`</span> is set, the provider will wait for exactly that number
/// of Instances to be `"InService"` in all attached ELBs on both creation and
/// updates.
///
/// These parameters can be used to ensure that service is being provided before
/// the provider moves on. If new instances don't pass the ELB's health checks for any
/// reason, the apply will time out, and the ASG will be marked as
/// tainted (i.e., marked to be destroyed in a follow up run).
///
/// As with ASG Capacity, the provider will wait for up to <span pulumi-lang-nodejs="`waitForCapacityTimeout`" pulumi-lang-dotnet="`WaitForCapacityTimeout`" pulumi-lang-go="`waitForCapacityTimeout`" pulumi-lang-python="`wait_for_capacity_timeout`" pulumi-lang-yaml="`waitForCapacityTimeout`" pulumi-lang-java="`waitForCapacityTimeout`">`wait_for_capacity_timeout`</span>
/// for the proper number of instances to be healthy.
///
/// #### Troubleshooting Capacity Waiting Timeouts
///
/// If ASG creation takes more than a few minutes, this could indicate one of a
/// number of configuration problems. See the [AWS Docs on Load Balancer
/// Troubleshooting](https://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-troubleshooting.html)
/// for more information.
///
/// ## Import
///
/// Using `pulumi import`, import Auto Scaling Groups using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:autoscaling/group:Group web web-asg
/// ```
class Group extends CustomResource {
  /// ARN for this Auto Scaling Group
  late final Output<String> arn;

  /// The instance capacity distribution across Availability Zones. See Availability Zone Distribution below for more details.
  late final Output<GroupAvailabilityZoneDistribution>
      availabilityZoneDistribution;

  /// A list of Availability Zones where instances in the Auto Scaling group can be created. Used for launching into the default VPC subnet in each Availability Zone when not using the <span pulumi-lang-nodejs="`vpcZoneIdentifier`" pulumi-lang-dotnet="`VpcZoneIdentifier`" pulumi-lang-go="`vpcZoneIdentifier`" pulumi-lang-python="`vpc_zone_identifier`" pulumi-lang-yaml="`vpcZoneIdentifier`" pulumi-lang-java="`vpcZoneIdentifier`">`vpc_zone_identifier`</span> attribute, or for attaching a network interface when an existing network interface ID is specified in a launch template. Conflicts with <span pulumi-lang-nodejs="`vpcZoneIdentifier`" pulumi-lang-dotnet="`VpcZoneIdentifier`" pulumi-lang-go="`vpcZoneIdentifier`" pulumi-lang-python="`vpc_zone_identifier`" pulumi-lang-yaml="`vpcZoneIdentifier`" pulumi-lang-java="`vpcZoneIdentifier`">`vpc_zone_identifier`</span>.
  late final Output<List<String>> availabilityZones;

  /// Whether capacity rebalance is enabled. Otherwise, capacity rebalance is disabled.
  late final Output<bool?> capacityRebalance;

  /// The capacity reservation specification for the Auto Scaling group allows you to prioritize launching into On-Demand Capacity Reservations. See Capacity Reservation Specification below for more details.
  late final Output<GroupCapacityReservationSpecification>
      capacityReservationSpecification;

  /// Reserved.
  late final Output<String?> context;

  /// Amount of time, in seconds, after a scaling activity completes before another scaling activity can start.
  late final Output<int> defaultCooldown;

  /// Amount of time, in seconds, until a newly launched instance can contribute to the Amazon CloudWatch metrics. This delay lets an instance finish initializing before Amazon EC2 Auto Scaling aggregates instance metrics, resulting in more reliable usage data. Set this value equal to the amount of time that it takes for resource consumption to become stable after an instance reaches the InService state. (See [Set the default instance warmup for an Auto Scaling group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html))
  late final Output<int?> defaultInstanceWarmup;

  /// Number of Amazon EC2 instances that
  /// should be running in the group. (See also Waiting for
  /// Capacity below.)
  late final Output<int> desiredCapacity;

  /// The unit of measurement for the value specified for <span pulumi-lang-nodejs="`desiredCapacity`" pulumi-lang-dotnet="`DesiredCapacity`" pulumi-lang-go="`desiredCapacity`" pulumi-lang-python="`desired_capacity`" pulumi-lang-yaml="`desiredCapacity`" pulumi-lang-java="`desiredCapacity`">`desired_capacity`</span>. Supported for attribute-based instance type selection only. Valid values: `"units"`, `"vcpu"`, `"memory-mib"`.
  late final Output<String?> desiredCapacityType;

  /// List of metrics to collect. The allowed values are defined by the [underlying AWS API](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html).
  late final Output<List<Metric>?> enabledMetrics;

  /// Allows deleting the Auto Scaling Group without waiting
  /// for all instances in the pool to terminate. You can force an Auto Scaling Group to delete
  /// even if it's in the process of scaling a resource. Normally, this provider
  /// drains all the instances before deleting the group. This bypasses that
  /// behavior and potentially leaves resources dangling.
  late final Output<bool?> forceDelete;

  /// Allows deleting the Auto Scaling Group without waiting for all instances in the warm pool to terminate.
  late final Output<bool?> forceDeleteWarmPool;

  /// Time (in seconds) after instance comes into service before checking health.
  late final Output<int?> healthCheckGracePeriod;

  /// "EC2" or "ELB". Controls how health checking is done.
  late final Output<String> healthCheckType;

  /// Whether to ignore failed [Auto Scaling scaling activities](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-verify-scaling-activity.html) while waiting for capacity. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> -- failed scaling activities cause errors to be returned.
  late final Output<bool?> ignoreFailedScalingActivities;

  /// One or more
  /// [Lifecycle Hooks](http://docs.aws.amazon.com/autoscaling/latest/userguide/lifecycle-hooks.html)
  /// to attach to the Auto Scaling Group **before** instances are launched. The
  /// syntax is exactly the same as the separate
  /// <span pulumi-lang-nodejs="`aws.autoscaling.LifecycleHook`" pulumi-lang-dotnet="`aws.autoscaling.LifecycleHook`" pulumi-lang-go="`autoscaling.LifecycleHook`" pulumi-lang-python="`autoscaling.LifecycleHook`" pulumi-lang-yaml="`aws.autoscaling.LifecycleHook`" pulumi-lang-java="`aws.autoscaling.LifecycleHook`">`aws.autoscaling.LifecycleHook`</span>
  /// resource, without the <span pulumi-lang-nodejs="`autoscalingGroupName`" pulumi-lang-dotnet="`AutoscalingGroupName`" pulumi-lang-go="`autoscalingGroupName`" pulumi-lang-python="`autoscaling_group_name`" pulumi-lang-yaml="`autoscalingGroupName`" pulumi-lang-java="`autoscalingGroupName`">`autoscaling_group_name`</span> attribute. Please note that this will only work when creating
  /// a new Auto Scaling Group. For all other use-cases, please use <span pulumi-lang-nodejs="`aws.autoscaling.LifecycleHook`" pulumi-lang-dotnet="`aws.autoscaling.LifecycleHook`" pulumi-lang-go="`autoscaling.LifecycleHook`" pulumi-lang-python="`autoscaling.LifecycleHook`" pulumi-lang-yaml="`aws.autoscaling.LifecycleHook`" pulumi-lang-java="`aws.autoscaling.LifecycleHook`">`aws.autoscaling.LifecycleHook`</span> resource.
  late final Output<List<GroupInitialLifecycleHook>?> initialLifecycleHooks;

  /// If this block is configured, add a instance maintenance policy to the specified Auto Scaling group. Defined below.
  late final Output<GroupInstanceMaintenancePolicy?> instanceMaintenancePolicy;

  /// If this block is configured, start an
  /// [Instance Refresh](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html)
  /// when this Auto Scaling Group is updated. Defined below.
  late final Output<GroupInstanceRefresh?> instanceRefresh;

  /// Name of the launch configuration to use.
  late final Output<String?> launchConfiguration;

  /// Nested argument with Launch template specification to use to launch instances. See Launch Template below for more details.
  late final Output<GroupLaunchTemplate> launchTemplate;

  /// List of elastic load balancer names to add to the autoscaling
  /// group names. Only valid for classic load balancers. For ALBs, use <span pulumi-lang-nodejs="`targetGroupArns`" pulumi-lang-dotnet="`TargetGroupArns`" pulumi-lang-go="`targetGroupArns`" pulumi-lang-python="`target_group_arns`" pulumi-lang-yaml="`targetGroupArns`" pulumi-lang-java="`targetGroupArns`">`target_group_arns`</span> instead. To remove all load balancer attachments an empty list should be specified.
  late final Output<List<String>> loadBalancers;

  /// Maximum amount of time, in seconds, that an instance can be in service, values must be either equal to 0 or between 86400 and 31536000 seconds.
  late final Output<int?> maxInstanceLifetime;

  /// Maximum size of the Auto Scaling Group.
  late final Output<int> maxSize;

  /// Granularity to associate with the metrics to collect. The only valid value is `1Minute`. Default is `1Minute`.
  late final Output<String?> metricsGranularity;

  /// Setting this causes Pulumi to wait for
  /// this number of instances from this Auto Scaling Group to show up healthy in the
  /// ELB only on creation. Updates will not wait on ELB instance number changes.
  /// (See also Waiting for Capacity below.)
  late final Output<int?> minElbCapacity;

  /// Minimum size of the Auto Scaling Group.
  /// (See also Waiting for Capacity below.)
  late final Output<int> minSize;

  /// Configuration block containing settings to define launch targets for Auto Scaling groups. See Mixed Instances Policy below for more details.
  late final Output<GroupMixedInstancesPolicy> mixedInstancesPolicy;

  /// Name of the Auto Scaling Group. By default generated by Pulumi. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// Name of the placement group into which you'll launch your instances, if any.
  late final Output<String?> placementGroup;

  /// Predicted capacity of the group.
  late final Output<int> predictedCapacity;

  /// Whether newly launched instances
  /// are automatically protected from termination by Amazon EC2 Auto Scaling when
  /// scaling in. For more information about preventing instances from terminating
  /// on scale in, see [Using instance scale-in protection](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html)
  /// in the Amazon EC2 Auto Scaling User Guide.
  late final Output<bool?> protectFromScaleIn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the service-linked role that the ASG will use to call other AWS services
  late final Output<String> serviceLinkedRoleArn;

  /// List of processes to suspend for the Auto Scaling Group. The allowed values are `Launch`, `Terminate`, `HealthCheck`, `ReplaceUnhealthy`, `AZRebalance`, `AlarmNotification`, `ScheduledActions`, `AddToLoadBalancer`, `InstanceRefresh`.
  /// Note that if you suspend either the `Launch` or `Terminate` process types, it can prevent your Auto Scaling Group from functioning properly.
  late final Output<List<String>?> suspendedProcesses;

  /// Configuration block(s) containing resource tags. See Tag below for more details.
  late final Output<List<GroupTag>?> tags;

  /// Set of <span pulumi-lang-nodejs="`aws.lb.TargetGroup`" pulumi-lang-dotnet="`aws.lb.TargetGroup`" pulumi-lang-go="`lb.TargetGroup`" pulumi-lang-python="`lb.TargetGroup`" pulumi-lang-yaml="`aws.lb.TargetGroup`" pulumi-lang-java="`aws.lb.TargetGroup`">`aws.lb.TargetGroup`</span> ARNs, for use with Application or Network Load Balancing. To remove all target group attachments an empty list should be specified.
  late final Output<List<String>> targetGroupArns;

  /// List of policies to decide how the instances in the Auto Scaling Group should be terminated. The allowed values are `OldestInstance`, `NewestInstance`, `OldestLaunchConfiguration`, `ClosestToNextInstanceHour`, `OldestLaunchTemplate`, `AllocationStrategy`, `Default`. Additionally, the ARN of a Lambda function can be specified for custom termination policies.
  late final Output<List<String>?> terminationPolicies;

  /// Attaches one or more traffic sources to the specified Auto Scaling group.
  late final Output<List<GroupTrafficSource>> trafficSources;

  /// List of subnet IDs to launch resources in. Subnets automatically determine which availability zones the group will reside. Conflicts with <span pulumi-lang-nodejs="`availabilityZones`" pulumi-lang-dotnet="`AvailabilityZones`" pulumi-lang-go="`availabilityZones`" pulumi-lang-python="`availability_zones`" pulumi-lang-yaml="`availabilityZones`" pulumi-lang-java="`availabilityZones`">`availability_zones`</span>.
  late final Output<List<String>> vpcZoneIdentifiers;

  /// Maximum
  /// [duration](https://golang.org/pkg/time/#ParseDuration) that the provider should
  /// wait for ASG instances to be healthy before timing out. (See also Waiting
  /// for Capacity below.) Setting this to "0" causes
  /// the provider to skip all Capacity Waiting behavior.
  late final Output<String?> waitForCapacityTimeout;

  /// Setting this will cause Pulumi to wait
  /// for exactly this number of healthy instances from this Auto Scaling Group in
  /// all attached load balancers on both create and update operations. (Takes
  /// precedence over <span pulumi-lang-nodejs="`minElbCapacity`" pulumi-lang-dotnet="`MinElbCapacity`" pulumi-lang-go="`minElbCapacity`" pulumi-lang-python="`min_elb_capacity`" pulumi-lang-yaml="`minElbCapacity`" pulumi-lang-java="`minElbCapacity`">`min_elb_capacity`</span> behavior.)
  /// (See also Waiting for Capacity below.)
  late final Output<int?> waitForElbCapacity;

  /// If this block is configured, add a [Warm Pool](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html)
  /// to the specified Auto Scaling group. Defined below
  late final Output<GroupWarmPool?> warmPool;

  /// Current size of the warm pool.
  late final Output<int> warmPoolSize;

  Group(
    String name, {
    GroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/group:Group',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZoneDistribution =
        registerOutput<GroupAvailabilityZoneDistribution>(
            'availabilityZoneDistribution');
    this.availabilityZones = registerOutput<List<String>>('availabilityZones');
    this.capacityRebalance = registerOutput<bool?>('capacityRebalance');
    this.capacityReservationSpecification =
        registerOutput<GroupCapacityReservationSpecification>(
            'capacityReservationSpecification');
    this.context = registerOutput<String?>('context');
    this.defaultCooldown = registerOutput<int>('defaultCooldown');
    this.defaultInstanceWarmup = registerOutput<int?>('defaultInstanceWarmup');
    this.desiredCapacity = registerOutput<int>('desiredCapacity');
    this.desiredCapacityType = registerOutput<String?>('desiredCapacityType');
    this.enabledMetrics = registerOutput<List<Metric>?>('enabledMetrics');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.forceDeleteWarmPool = registerOutput<bool?>('forceDeleteWarmPool');
    this.healthCheckGracePeriod =
        registerOutput<int?>('healthCheckGracePeriod');
    this.healthCheckType = registerOutput<String>('healthCheckType');
    this.ignoreFailedScalingActivities =
        registerOutput<bool?>('ignoreFailedScalingActivities');
    this.initialLifecycleHooks =
        registerOutput<List<GroupInitialLifecycleHook>?>(
            'initialLifecycleHooks');
    this.instanceMaintenancePolicy =
        registerOutput<GroupInstanceMaintenancePolicy?>(
            'instanceMaintenancePolicy');
    this.instanceRefresh =
        registerOutput<GroupInstanceRefresh?>('instanceRefresh');
    this.launchConfiguration = registerOutput<String?>('launchConfiguration');
    this.launchTemplate = registerOutput<GroupLaunchTemplate>('launchTemplate');
    this.loadBalancers = registerOutput<List<String>>('loadBalancers');
    this.maxInstanceLifetime = registerOutput<int?>('maxInstanceLifetime');
    this.maxSize = registerOutput<int>('maxSize');
    this.metricsGranularity = registerOutput<String?>('metricsGranularity');
    this.minElbCapacity = registerOutput<int?>('minElbCapacity');
    this.minSize = registerOutput<int>('minSize');
    this.mixedInstancesPolicy =
        registerOutput<GroupMixedInstancesPolicy>('mixedInstancesPolicy');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.placementGroup = registerOutput<String?>('placementGroup');
    this.predictedCapacity = registerOutput<int>('predictedCapacity');
    this.protectFromScaleIn = registerOutput<bool?>('protectFromScaleIn');
    this.region = registerOutput<String>('region');
    this.serviceLinkedRoleArn = registerOutput<String>('serviceLinkedRoleArn');
    this.suspendedProcesses =
        registerOutput<List<String>?>('suspendedProcesses');
    this.tags = registerOutput<List<GroupTag>?>('tags');
    this.targetGroupArns = registerOutput<List<String>>('targetGroupArns');
    this.terminationPolicies =
        registerOutput<List<String>?>('terminationPolicies');
    this.trafficSources =
        registerOutput<List<GroupTrafficSource>>('trafficSources');
    this.vpcZoneIdentifiers =
        registerOutput<List<String>>('vpcZoneIdentifiers');
    this.waitForCapacityTimeout =
        registerOutput<String?>('waitForCapacityTimeout');
    this.waitForElbCapacity = registerOutput<int?>('waitForElbCapacity');
    this.warmPool = registerOutput<GroupWarmPool?>('warmPool');
    this.warmPoolSize = registerOutput<int>('warmPoolSize');
  }
}
