import 'package:pulumi/pulumi.dart';
import '../capacity_provider_auto_scaling_group_provider/capacity_provider_auto_scaling_group_provider.dart';
import '../capacity_provider_managed_instances_provider/capacity_provider_managed_instances_provider.dart';
import 'capacity_provider_args.dart';

/// Provides an ECS cluster capacity provider. More information can be found on the [ECS Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-capacity-providers.html).
///
/// > **NOTE:** Associating an ECS Capacity Provider to an Auto Scaling Group will automatically add the `AmazonECSManaged` tag to the Auto Scaling Group. This tag should be included in the <span pulumi-lang-nodejs="`aws.autoscaling.Group`" pulumi-lang-dotnet="`aws.autoscaling.Group`" pulumi-lang-go="`autoscaling.Group`" pulumi-lang-python="`autoscaling.Group`" pulumi-lang-yaml="`aws.autoscaling.Group`" pulumi-lang-java="`aws.autoscaling.Group`">`aws.autoscaling.Group`</span> resource configuration to prevent the provider from removing it in subsequent executions as well as ensuring the `AmazonECSManaged` tag is propagated to all EC2 Instances in the Auto Scaling Group if <span pulumi-lang-nodejs="`minSize`" pulumi-lang-dotnet="`MinSize`" pulumi-lang-go="`minSize`" pulumi-lang-python="`min_size`" pulumi-lang-yaml="`minSize`" pulumi-lang-java="`minSize`">`min_size`</span> is above 0 on creation. Any EC2 Instances in the Auto Scaling Group without this tag must be manually be updated, otherwise they may cause unexpected scaling behavior and metrics.
///
/// > **NOTE:** You must specify exactly one of <span pulumi-lang-nodejs="`autoScalingGroupProvider`" pulumi-lang-dotnet="`AutoScalingGroupProvider`" pulumi-lang-go="`autoScalingGroupProvider`" pulumi-lang-python="`auto_scaling_group_provider`" pulumi-lang-yaml="`autoScalingGroupProvider`" pulumi-lang-java="`autoScalingGroupProvider`">`auto_scaling_group_provider`</span> or <span pulumi-lang-nodejs="`managedInstancesProvider`" pulumi-lang-dotnet="`ManagedInstancesProvider`" pulumi-lang-go="`managedInstancesProvider`" pulumi-lang-python="`managed_instances_provider`" pulumi-lang-yaml="`managedInstancesProvider`" pulumi-lang-java="`managedInstancesProvider`">`managed_instances_provider`</span>. When using <span pulumi-lang-nodejs="`managedInstancesProvider`" pulumi-lang-dotnet="`ManagedInstancesProvider`" pulumi-lang-go="`managedInstancesProvider`" pulumi-lang-python="`managed_instances_provider`" pulumi-lang-yaml="`managedInstancesProvider`" pulumi-lang-java="`managedInstancesProvider`">`managed_instances_provider`</span>, the <span pulumi-lang-nodejs="`cluster`" pulumi-lang-dotnet="`Cluster`" pulumi-lang-go="`cluster`" pulumi-lang-python="`cluster`" pulumi-lang-yaml="`cluster`" pulumi-lang-java="`cluster`">`cluster`</span> parameter is required. When using <span pulumi-lang-nodejs="`autoScalingGroupProvider`" pulumi-lang-dotnet="`AutoScalingGroupProvider`" pulumi-lang-go="`autoScalingGroupProvider`" pulumi-lang-python="`auto_scaling_group_provider`" pulumi-lang-yaml="`autoScalingGroupProvider`" pulumi-lang-java="`autoScalingGroupProvider`">`auto_scaling_group_provider`</span>, the <span pulumi-lang-nodejs="`cluster`" pulumi-lang-dotnet="`Cluster`" pulumi-lang-go="`cluster`" pulumi-lang-python="`cluster`" pulumi-lang-yaml="`cluster`" pulumi-lang-java="`cluster`">`cluster`</span> parameter must not be set.
///
/// ## Example Usage
///
/// ### Auto Scaling Group Provider
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.autoscaling.Group("example", {tags: [{
/// key: "AmazonECSManaged",
/// value: "true",
/// propagateAtLaunch: true,
/// }]});
/// const exampleCapacityProvider = new aws.ecs.CapacityProvider("example", {
/// name: "example",
/// autoScalingGroupProvider: {
/// autoScalingGroupArn: example.arn,
/// managedTerminationProtection: "ENABLED",
/// managedScaling: {
/// maximumScalingStepSize: 1000,
/// minimumScalingStepSize: 1,
/// status: "ENABLED",
/// targetCapacity: 10,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.autoscaling.Group("example", tags=[{
/// "key": "AmazonECSManaged",
/// "value": "true",
/// "propagate_at_launch": True,
/// }])
/// example_capacity_provider = aws.ecs.CapacityProvider("example",
/// name="example",
/// auto_scaling_group_provider={
/// "auto_scaling_group_arn": example.arn,
/// "managed_termination_protection": "ENABLED",
/// "managed_scaling": {
/// "maximum_scaling_step_size": 1000,
/// "minimum_scaling_step_size": 1,
/// "status": "ENABLED",
/// "target_capacity": 10,
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
/// var example = new Aws.AutoScaling.Group("example", new()
/// {
/// Tags = new[]
/// {
/// new Aws.AutoScaling.Inputs.GroupTagArgs
/// {
/// Key = "AmazonECSManaged",
/// Value = "true",
/// PropagateAtLaunch = true,
/// },
/// },
/// });
///
/// var exampleCapacityProvider = new Aws.Ecs.CapacityProvider("example", new()
/// {
/// Name = "example",
/// AutoScalingGroupProvider = new Aws.Ecs.Inputs.CapacityProviderAutoScalingGroupProviderArgs
/// {
/// AutoScalingGroupArn = example.Arn,
/// ManagedTerminationProtection = "ENABLED",
/// ManagedScaling = new Aws.Ecs.Inputs.CapacityProviderAutoScalingGroupProviderManagedScalingArgs
/// {
/// MaximumScalingStepSize = 1000,
/// MinimumScalingStepSize = 1,
/// Status = "ENABLED",
/// TargetCapacity = 10,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := autoscaling.NewGroup(ctx, "example", &autoscaling.GroupArgs{
/// Tags: autoscaling.GroupTagArray{
/// &autoscaling.GroupTagArgs{
/// Key:               pulumi.String("AmazonECSManaged"),
/// Value:             pulumi.String("true"),
/// PropagateAtLaunch: pulumi.Bool(true),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ecs.NewCapacityProvider(ctx, "example", &ecs.CapacityProviderArgs{
/// Name: pulumi.String("example"),
/// AutoScalingGroupProvider: &ecs.CapacityProviderAutoScalingGroupProviderArgs{
/// AutoScalingGroupArn:          example.Arn,
/// ManagedTerminationProtection: pulumi.String("ENABLED"),
/// ManagedScaling: &ecs.CapacityProviderAutoScalingGroupProviderManagedScalingArgs{
/// MaximumScalingStepSize: pulumi.Int(1000),
/// MinimumScalingStepSize: pulumi.Int(1),
/// Status:                 pulumi.String("ENABLED"),
/// TargetCapacity:         pulumi.Int(10),
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
/// import com.pulumi.aws.autoscaling.Group;
/// import com.pulumi.aws.autoscaling.GroupArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupTagArgs;
/// import com.pulumi.aws.ecs.CapacityProvider;
/// import com.pulumi.aws.ecs.CapacityProviderArgs;
/// import com.pulumi.aws.ecs.inputs.CapacityProviderAutoScalingGroupProviderArgs;
/// import com.pulumi.aws.ecs.inputs.CapacityProviderAutoScalingGroupProviderManagedScalingArgs;
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
/// var example = new Group("example", GroupArgs.builder()
/// .tags(GroupTagArgs.builder()
/// .key("AmazonECSManaged")
/// .value("true")
/// .propagateAtLaunch(true)
/// .build())
/// .build());
///
/// var exampleCapacityProvider = new CapacityProvider("exampleCapacityProvider", CapacityProviderArgs.builder()
/// .name("example")
/// .autoScalingGroupProvider(CapacityProviderAutoScalingGroupProviderArgs.builder()
/// .autoScalingGroupArn(example.arn())
/// .managedTerminationProtection("ENABLED")
/// .managedScaling(CapacityProviderAutoScalingGroupProviderManagedScalingArgs.builder()
/// .maximumScalingStepSize(1000)
/// .minimumScalingStepSize(1)
/// .status("ENABLED")
/// .targetCapacity(10)
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
/// type: aws:autoscaling:Group
/// properties:
/// tags:
/// - key: AmazonECSManaged
/// value: true
/// propagateAtLaunch: true
/// exampleCapacityProvider:
/// type: aws:ecs:CapacityProvider
/// name: example
/// properties:
/// name: example
/// autoScalingGroupProvider:
/// autoScalingGroupArn: ${example.arn}
/// managedTerminationProtection: ENABLED
/// managedScaling:
/// maximumScalingStepSize: 1000
/// minimumScalingStepSize: 1
/// status: ENABLED
/// targetCapacity: 10
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Managed Instances Provider
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.CapacityProvider("example", {
/// name: "example",
/// cluster: "my-cluster",
/// managedInstancesProvider: {
/// infrastructureRoleArn: ecsInfrastructure.arn,
/// propagateTags: "CAPACITY_PROVIDER",
/// instanceLaunchTemplate: {
/// ec2InstanceProfileArn: ecsInstance.arn,
/// monitoring: "ENABLED",
/// networkConfiguration: {
/// subnets: [exampleAwsSubnet.id],
/// securityGroups: [exampleAwsSecurityGroup.id],
/// },
/// storageConfiguration: {
/// storageSizeGib: 30,
/// },
/// instanceRequirements: {
/// memoryMib: {
/// min: 1024,
/// max: 8192,
/// },
/// vcpuCount: {
/// min: 1,
/// max: 4,
/// },
/// instanceGenerations: ["current"],
/// cpuManufacturers: [
/// "intel",
/// "amd",
/// ],
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.CapacityProvider("example",
/// name="example",
/// cluster="my-cluster",
/// managed_instances_provider={
/// "infrastructure_role_arn": ecs_infrastructure["arn"],
/// "propagate_tags": "CAPACITY_PROVIDER",
/// "instance_launch_template": {
/// "ec2_instance_profile_arn": ecs_instance["arn"],
/// "monitoring": "ENABLED",
/// "network_configuration": {
/// "subnets": [example_aws_subnet["id"]],
/// "security_groups": [example_aws_security_group["id"]],
/// },
/// "storage_configuration": {
/// "storage_size_gib": 30,
/// },
/// "instance_requirements": {
/// "memory_mib": {
/// "min": 1024,
/// "max": 8192,
/// },
/// "vcpu_count": {
/// "min": 1,
/// "max": 4,
/// },
/// "instance_generations": ["current"],
/// "cpu_manufacturers": [
/// "intel",
/// "amd",
/// ],
/// },
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
/// var example = new Aws.Ecs.CapacityProvider("example", new()
/// {
/// Name = "example",
/// Cluster = "my-cluster",
/// ManagedInstancesProvider = new Aws.Ecs.Inputs.CapacityProviderManagedInstancesProviderArgs
/// {
/// InfrastructureRoleArn = ecsInfrastructure.Arn,
/// PropagateTags = "CAPACITY_PROVIDER",
/// InstanceLaunchTemplate = new Aws.Ecs.Inputs.CapacityProviderManagedInstancesProviderInstanceLaunchTemplateArgs
/// {
/// Ec2InstanceProfileArn = ecsInstance.Arn,
/// Monitoring = "ENABLED",
/// NetworkConfiguration = new Aws.Ecs.Inputs.CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfigurationArgs
/// {
/// Subnets = new[]
/// {
/// exampleAwsSubnet.Id,
/// },
/// SecurityGroups = new[]
/// {
/// exampleAwsSecurityGroup.Id,
/// },
/// },
/// StorageConfiguration = new Aws.Ecs.Inputs.CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfigurationArgs
/// {
/// StorageSizeGib = 30,
/// },
/// InstanceRequirements = new Aws.Ecs.Inputs.CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsArgs
/// {
/// MemoryMib = new Aws.Ecs.Inputs.CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMibArgs
/// {
/// Min = 1024,
/// Max = 8192,
/// },
/// VcpuCount = new Aws.Ecs.Inputs.CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCountArgs
/// {
/// Min = 1,
/// Max = 4,
/// },
/// InstanceGenerations = new[]
/// {
/// "current",
/// },
/// CpuManufacturers = new[]
/// {
/// "intel",
/// "amd",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.NewCapacityProvider(ctx, "example", &ecs.CapacityProviderArgs{
/// Name:    pulumi.String("example"),
/// Cluster: pulumi.String("my-cluster"),
/// ManagedInstancesProvider: &ecs.CapacityProviderManagedInstancesProviderArgs{
/// InfrastructureRoleArn: pulumi.Any(ecsInfrastructure.Arn),
/// PropagateTags:         pulumi.String("CAPACITY_PROVIDER"),
/// InstanceLaunchTemplate: &ecs.CapacityProviderManagedInstancesProviderInstanceLaunchTemplateArgs{
/// Ec2InstanceProfileArn: pulumi.Any(ecsInstance.Arn),
/// Monitoring:            pulumi.String("ENABLED"),
/// NetworkConfiguration: &ecs.CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfigurationArgs{
/// Subnets: pulumi.StringArray{
/// exampleAwsSubnet.Id,
/// },
/// SecurityGroups: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// },
/// StorageConfiguration: &ecs.CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfigurationArgs{
/// StorageSizeGib: pulumi.Int(30),
/// },
/// InstanceRequirements: &ecs.CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsArgs{
/// MemoryMib: &ecs.CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMibArgs{
/// Min: pulumi.Int(1024),
/// Max: pulumi.Int(8192),
/// },
/// VcpuCount: &ecs.CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCountArgs{
/// Min: pulumi.Int(1),
/// Max: pulumi.Int(4),
/// },
/// InstanceGenerations: pulumi.StringArray{
/// pulumi.String("current"),
/// },
/// CpuManufacturers: pulumi.StringArray{
/// pulumi.String("intel"),
/// pulumi.String("amd"),
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
/// import com.pulumi.aws.ecs.CapacityProvider;
/// import com.pulumi.aws.ecs.CapacityProviderArgs;
/// import com.pulumi.aws.ecs.inputs.CapacityProviderManagedInstancesProviderArgs;
/// import com.pulumi.aws.ecs.inputs.CapacityProviderManagedInstancesProviderInstanceLaunchTemplateArgs;
/// import com.pulumi.aws.ecs.inputs.CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfigurationArgs;
/// import com.pulumi.aws.ecs.inputs.CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfigurationArgs;
/// import com.pulumi.aws.ecs.inputs.CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsArgs;
/// import com.pulumi.aws.ecs.inputs.CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMibArgs;
/// import com.pulumi.aws.ecs.inputs.CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCountArgs;
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
/// var example = new CapacityProvider("example", CapacityProviderArgs.builder()
/// .name("example")
/// .cluster("my-cluster")
/// .managedInstancesProvider(CapacityProviderManagedInstancesProviderArgs.builder()
/// .infrastructureRoleArn(ecsInfrastructure.arn())
/// .propagateTags("CAPACITY_PROVIDER")
/// .instanceLaunchTemplate(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateArgs.builder()
/// .ec2InstanceProfileArn(ecsInstance.arn())
/// .monitoring("ENABLED")
/// .networkConfiguration(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateNetworkConfigurationArgs.builder()
/// .subnets(exampleAwsSubnet.id())
/// .securityGroups(exampleAwsSecurityGroup.id())
/// .build())
/// .storageConfiguration(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateStorageConfigurationArgs.builder()
/// .storageSizeGib(30)
/// .build())
/// .instanceRequirements(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsArgs.builder()
/// .memoryMib(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsMemoryMibArgs.builder()
/// .min(1024)
/// .max(8192)
/// .build())
/// .vcpuCount(CapacityProviderManagedInstancesProviderInstanceLaunchTemplateInstanceRequirementsVcpuCountArgs.builder()
/// .min(1)
/// .max(4)
/// .build())
/// .instanceGenerations("current")
/// .cpuManufacturers(
/// "intel",
/// "amd")
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
/// type: aws:ecs:CapacityProvider
/// properties:
/// name: example
/// cluster: my-cluster
/// managedInstancesProvider:
/// infrastructureRoleArn: ${ecsInfrastructure.arn}
/// propagateTags: CAPACITY_PROVIDER
/// instanceLaunchTemplate:
/// ec2InstanceProfileArn: ${ecsInstance.arn}
/// monitoring: ENABLED
/// networkConfiguration:
/// subnets:
/// - ${exampleAwsSubnet.id}
/// securityGroups:
/// - ${exampleAwsSecurityGroup.id}
/// storageConfiguration:
/// storageSizeGib: 30
/// instanceRequirements:
/// memoryMib:
/// min: 1024
/// max: 8192
/// vcpuCount:
/// min: 1
/// max: 4
/// instanceGenerations:
/// - current
/// cpuManufacturers:
/// - intel
/// - amd
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the ECS capacity provider.
///
///
/// Using `pulumi import`, import ECS Capacity Providers using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ecs/capacityProvider:CapacityProvider example arn:aws:ecs:us-west-2:123456789012:capacity-provider/example
/// ```
class CapacityProvider extends CustomResource {
  /// ARN that identifies the capacity provider.
  late final Output<String> arn;

  /// Configuration block for the provider for the ECS auto scaling group. Detailed below. Exactly one of <span pulumi-lang-nodejs="`autoScalingGroupProvider`" pulumi-lang-dotnet="`AutoScalingGroupProvider`" pulumi-lang-go="`autoScalingGroupProvider`" pulumi-lang-python="`auto_scaling_group_provider`" pulumi-lang-yaml="`autoScalingGroupProvider`" pulumi-lang-java="`autoScalingGroupProvider`">`auto_scaling_group_provider`</span> or <span pulumi-lang-nodejs="`managedInstancesProvider`" pulumi-lang-dotnet="`ManagedInstancesProvider`" pulumi-lang-go="`managedInstancesProvider`" pulumi-lang-python="`managed_instances_provider`" pulumi-lang-yaml="`managedInstancesProvider`" pulumi-lang-java="`managedInstancesProvider`">`managed_instances_provider`</span> must be specified.
  late final Output<CapacityProviderAutoScalingGroupProvider?>
      autoScalingGroupProvider;

  /// Name of the ECS cluster. Required when using <span pulumi-lang-nodejs="`managedInstancesProvider`" pulumi-lang-dotnet="`ManagedInstancesProvider`" pulumi-lang-go="`managedInstancesProvider`" pulumi-lang-python="`managed_instances_provider`" pulumi-lang-yaml="`managedInstancesProvider`" pulumi-lang-java="`managedInstancesProvider`">`managed_instances_provider`</span>. Must not be set when using <span pulumi-lang-nodejs="`autoScalingGroupProvider`" pulumi-lang-dotnet="`AutoScalingGroupProvider`" pulumi-lang-go="`autoScalingGroupProvider`" pulumi-lang-python="`auto_scaling_group_provider`" pulumi-lang-yaml="`autoScalingGroupProvider`" pulumi-lang-java="`autoScalingGroupProvider`">`auto_scaling_group_provider`</span>.
  late final Output<String?> cluster;

  /// Configuration block for the managed instances provider. Detailed below. Exactly one of <span pulumi-lang-nodejs="`autoScalingGroupProvider`" pulumi-lang-dotnet="`AutoScalingGroupProvider`" pulumi-lang-go="`autoScalingGroupProvider`" pulumi-lang-python="`auto_scaling_group_provider`" pulumi-lang-yaml="`autoScalingGroupProvider`" pulumi-lang-java="`autoScalingGroupProvider`">`auto_scaling_group_provider`</span> or <span pulumi-lang-nodejs="`managedInstancesProvider`" pulumi-lang-dotnet="`ManagedInstancesProvider`" pulumi-lang-go="`managedInstancesProvider`" pulumi-lang-python="`managed_instances_provider`" pulumi-lang-yaml="`managedInstancesProvider`" pulumi-lang-java="`managedInstancesProvider`">`managed_instances_provider`</span> must be specified.
  late final Output<CapacityProviderManagedInstancesProvider?>
      managedInstancesProvider;

  /// Name of the capacity provider.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  CapacityProvider(
    String name, {
    CapacityProviderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecs/capacityProvider:CapacityProvider',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.autoScalingGroupProvider =
        Output.createUnknown<CapacityProviderAutoScalingGroupProvider?>();
    this.cluster = Output.createUnknown<String?>();
    this.managedInstancesProvider =
        Output.createUnknown<CapacityProviderManagedInstancesProvider?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
