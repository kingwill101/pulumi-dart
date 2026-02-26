import 'package:pulumi/pulumi.dart';
import '../environment_high_availability_config/environment_high_availability_config.dart';
import '../environment_storage_configuration/environment_storage_configuration.dart';
import '../environment_timeouts/environment_timeouts2.dart';
import 'environment_args4.dart';

/// Resource for managing an [AWS Mainframe Modernization Environment](https://docs.aws.amazon.com/m2/latest/userguide/environments-m2.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.m2.Environment("test", {
/// name: "test-env",
/// engineType: "bluage",
/// instanceType: "M2.m5.large",
/// securityGroups: ["sg-01234567890abcdef"],
/// subnetIds: [
/// "subnet-01234567890abcdef",
/// "subnet-01234567890abcdea",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.m2.Environment("test",
/// name="test-env",
/// engine_type="bluage",
/// instance_type="M2.m5.large",
/// security_groups=["sg-01234567890abcdef"],
/// subnet_ids=[
/// "subnet-01234567890abcdef",
/// "subnet-01234567890abcdea",
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
/// var test = new Aws.M2.Environment("test", new()
/// {
/// Name = "test-env",
/// EngineType = "bluage",
/// InstanceType = "M2.m5.large",
/// SecurityGroups = new[]
/// {
/// "sg-01234567890abcdef",
/// },
/// SubnetIds = new[]
/// {
/// "subnet-01234567890abcdef",
/// "subnet-01234567890abcdea",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/m2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := m2.NewEnvironment(ctx, "test", &m2.EnvironmentArgs{
/// Name:         pulumi.String("test-env"),
/// EngineType:   pulumi.String("bluage"),
/// InstanceType: pulumi.String("M2.m5.large"),
/// SecurityGroups: []string{
/// "sg-01234567890abcdef",
/// },
/// SubnetIds: pulumi.StringArray{
/// pulumi.String("subnet-01234567890abcdef"),
/// pulumi.String("subnet-01234567890abcdea"),
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
/// import com.pulumi.aws.m2.Environment;
/// import com.pulumi.aws.m2.EnvironmentArgs;
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
/// var test = new Environment("test", EnvironmentArgs.builder()
/// .name("test-env")
/// .engineType("bluage")
/// .instanceType("M2.m5.large")
/// .securityGroups(List.of("sg-01234567890abcdef"))
/// .subnetIds(
/// "subnet-01234567890abcdef",
/// "subnet-01234567890abcdea")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:m2:Environment
/// properties:
/// name: test-env
/// engineType: bluage
/// instanceType: M2.m5.large
/// securityGroups:
/// - sg-01234567890abcdef
/// subnetIds:
/// - subnet-01234567890abcdef
/// - subnet-01234567890abcdea
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### High Availability
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.m2.Environment("test", {
/// name: "test-env",
/// engineType: "bluage",
/// instanceType: "M2.m5.large",
/// securityGroups: ["sg-01234567890abcdef"],
/// subnetIds: [
/// "subnet-01234567890abcdef",
/// "subnet-01234567890abcdea",
/// ],
/// highAvailabilityConfig: {
/// desiredCapacity: 2,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.m2.Environment("test",
/// name="test-env",
/// engine_type="bluage",
/// instance_type="M2.m5.large",
/// security_groups=["sg-01234567890abcdef"],
/// subnet_ids=[
/// "subnet-01234567890abcdef",
/// "subnet-01234567890abcdea",
/// ],
/// high_availability_config={
/// "desired_capacity": 2,
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
/// var test = new Aws.M2.Environment("test", new()
/// {
/// Name = "test-env",
/// EngineType = "bluage",
/// InstanceType = "M2.m5.large",
/// SecurityGroups = new[]
/// {
/// "sg-01234567890abcdef",
/// },
/// SubnetIds = new[]
/// {
/// "subnet-01234567890abcdef",
/// "subnet-01234567890abcdea",
/// },
/// HighAvailabilityConfig = new Aws.M2.Inputs.EnvironmentHighAvailabilityConfigArgs
/// {
/// DesiredCapacity = 2,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/m2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := m2.NewEnvironment(ctx, "test", &m2.EnvironmentArgs{
/// Name:         pulumi.String("test-env"),
/// EngineType:   pulumi.String("bluage"),
/// InstanceType: pulumi.String("M2.m5.large"),
/// SecurityGroups: []string{
/// "sg-01234567890abcdef",
/// },
/// SubnetIds: pulumi.StringArray{
/// pulumi.String("subnet-01234567890abcdef"),
/// pulumi.String("subnet-01234567890abcdea"),
/// },
/// HighAvailabilityConfig: &m2.EnvironmentHighAvailabilityConfigArgs{
/// DesiredCapacity: pulumi.Int(2),
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
/// import com.pulumi.aws.m2.Environment;
/// import com.pulumi.aws.m2.EnvironmentArgs;
/// import com.pulumi.aws.m2.inputs.EnvironmentHighAvailabilityConfigArgs;
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
/// var test = new Environment("test", EnvironmentArgs.builder()
/// .name("test-env")
/// .engineType("bluage")
/// .instanceType("M2.m5.large")
/// .securityGroups(List.of("sg-01234567890abcdef"))
/// .subnetIds(
/// "subnet-01234567890abcdef",
/// "subnet-01234567890abcdea")
/// .highAvailabilityConfig(EnvironmentHighAvailabilityConfigArgs.builder()
/// .desiredCapacity(2)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:m2:Environment
/// properties:
/// name: test-env
/// engineType: bluage
/// instanceType: M2.m5.large
/// securityGroups:
/// - sg-01234567890abcdef
/// subnetIds:
/// - subnet-01234567890abcdef
/// - subnet-01234567890abcdea
/// highAvailabilityConfig:
/// desiredCapacity: 2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### EFS Filesystem
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.m2.Environment("test", {
/// name: "test-env",
/// engineType: "bluage",
/// instanceType: "M2.m5.large",
/// securityGroups: ["sg-01234567890abcdef"],
/// subnetIds: [
/// "subnet-01234567890abcdef",
/// "subnet-01234567890abcdea",
/// ],
/// storageConfiguration: {
/// efs: {
/// fileSystemId: "fs-01234567890abcdef",
/// mountPoint: "/m2/mount/example",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.m2.Environment("test",
/// name="test-env",
/// engine_type="bluage",
/// instance_type="M2.m5.large",
/// security_groups=["sg-01234567890abcdef"],
/// subnet_ids=[
/// "subnet-01234567890abcdef",
/// "subnet-01234567890abcdea",
/// ],
/// storage_configuration={
/// "efs": {
/// "file_system_id": "fs-01234567890abcdef",
/// "mount_point": "/m2/mount/example",
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
/// var test = new Aws.M2.Environment("test", new()
/// {
/// Name = "test-env",
/// EngineType = "bluage",
/// InstanceType = "M2.m5.large",
/// SecurityGroups = new[]
/// {
/// "sg-01234567890abcdef",
/// },
/// SubnetIds = new[]
/// {
/// "subnet-01234567890abcdef",
/// "subnet-01234567890abcdea",
/// },
/// StorageConfiguration = new Aws.M2.Inputs.EnvironmentStorageConfigurationArgs
/// {
/// Efs = new Aws.M2.Inputs.EnvironmentStorageConfigurationEfsArgs
/// {
/// FileSystemId = "fs-01234567890abcdef",
/// MountPoint = "/m2/mount/example",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/m2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := m2.NewEnvironment(ctx, "test", &m2.EnvironmentArgs{
/// Name:         pulumi.String("test-env"),
/// EngineType:   pulumi.String("bluage"),
/// InstanceType: pulumi.String("M2.m5.large"),
/// SecurityGroups: []string{
/// "sg-01234567890abcdef",
/// },
/// SubnetIds: pulumi.StringArray{
/// pulumi.String("subnet-01234567890abcdef"),
/// pulumi.String("subnet-01234567890abcdea"),
/// },
/// StorageConfiguration: &m2.EnvironmentStorageConfigurationArgs{
/// Efs: &m2.EnvironmentStorageConfigurationEfsArgs{
/// FileSystemId: pulumi.String("fs-01234567890abcdef"),
/// MountPoint:   pulumi.String("/m2/mount/example"),
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
/// import com.pulumi.aws.m2.Environment;
/// import com.pulumi.aws.m2.EnvironmentArgs;
/// import com.pulumi.aws.m2.inputs.EnvironmentStorageConfigurationArgs;
/// import com.pulumi.aws.m2.inputs.EnvironmentStorageConfigurationEfsArgs;
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
/// var test = new Environment("test", EnvironmentArgs.builder()
/// .name("test-env")
/// .engineType("bluage")
/// .instanceType("M2.m5.large")
/// .securityGroups(List.of("sg-01234567890abcdef"))
/// .subnetIds(
/// "subnet-01234567890abcdef",
/// "subnet-01234567890abcdea")
/// .storageConfiguration(EnvironmentStorageConfigurationArgs.builder()
/// .efs(EnvironmentStorageConfigurationEfsArgs.builder()
/// .fileSystemId("fs-01234567890abcdef")
/// .mountPoint("/m2/mount/example")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:m2:Environment
/// properties:
/// name: test-env
/// engineType: bluage
/// instanceType: M2.m5.large
/// securityGroups:
/// - sg-01234567890abcdef
/// subnetIds:
/// - subnet-01234567890abcdef
/// - subnet-01234567890abcdea
/// storageConfiguration:
/// efs:
/// fileSystemId: fs-01234567890abcdef
/// mountPoint: /m2/mount/example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### FSX Filesystem
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.m2.Environment("test", {
/// name: "test-env",
/// engineType: "bluage",
/// instanceType: "M2.m5.large",
/// securityGroups: ["sg-01234567890abcdef"],
/// subnetIds: [
/// "subnet-01234567890abcdef",
/// "subnet-01234567890abcdea",
/// ],
/// storageConfiguration: {
/// fsx: {
/// fileSystemId: "fs-01234567890abcdef",
/// mountPoint: "/m2/mount/example",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.m2.Environment("test",
/// name="test-env",
/// engine_type="bluage",
/// instance_type="M2.m5.large",
/// security_groups=["sg-01234567890abcdef"],
/// subnet_ids=[
/// "subnet-01234567890abcdef",
/// "subnet-01234567890abcdea",
/// ],
/// storage_configuration={
/// "fsx": {
/// "file_system_id": "fs-01234567890abcdef",
/// "mount_point": "/m2/mount/example",
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
/// var test = new Aws.M2.Environment("test", new()
/// {
/// Name = "test-env",
/// EngineType = "bluage",
/// InstanceType = "M2.m5.large",
/// SecurityGroups = new[]
/// {
/// "sg-01234567890abcdef",
/// },
/// SubnetIds = new[]
/// {
/// "subnet-01234567890abcdef",
/// "subnet-01234567890abcdea",
/// },
/// StorageConfiguration = new Aws.M2.Inputs.EnvironmentStorageConfigurationArgs
/// {
/// Fsx = new Aws.M2.Inputs.EnvironmentStorageConfigurationFsxArgs
/// {
/// FileSystemId = "fs-01234567890abcdef",
/// MountPoint = "/m2/mount/example",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/m2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := m2.NewEnvironment(ctx, "test", &m2.EnvironmentArgs{
/// Name:         pulumi.String("test-env"),
/// EngineType:   pulumi.String("bluage"),
/// InstanceType: pulumi.String("M2.m5.large"),
/// SecurityGroups: []string{
/// "sg-01234567890abcdef",
/// },
/// SubnetIds: pulumi.StringArray{
/// pulumi.String("subnet-01234567890abcdef"),
/// pulumi.String("subnet-01234567890abcdea"),
/// },
/// StorageConfiguration: &m2.EnvironmentStorageConfigurationArgs{
/// Fsx: &m2.EnvironmentStorageConfigurationFsxArgs{
/// FileSystemId: pulumi.String("fs-01234567890abcdef"),
/// MountPoint:   pulumi.String("/m2/mount/example"),
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
/// import com.pulumi.aws.m2.Environment;
/// import com.pulumi.aws.m2.EnvironmentArgs;
/// import com.pulumi.aws.m2.inputs.EnvironmentStorageConfigurationArgs;
/// import com.pulumi.aws.m2.inputs.EnvironmentStorageConfigurationFsxArgs;
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
/// var test = new Environment("test", EnvironmentArgs.builder()
/// .name("test-env")
/// .engineType("bluage")
/// .instanceType("M2.m5.large")
/// .securityGroups(List.of("sg-01234567890abcdef"))
/// .subnetIds(
/// "subnet-01234567890abcdef",
/// "subnet-01234567890abcdea")
/// .storageConfiguration(EnvironmentStorageConfigurationArgs.builder()
/// .fsx(EnvironmentStorageConfigurationFsxArgs.builder()
/// .fileSystemId("fs-01234567890abcdef")
/// .mountPoint("/m2/mount/example")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:m2:Environment
/// properties:
/// name: test-env
/// engineType: bluage
/// instanceType: M2.m5.large
/// securityGroups:
/// - sg-01234567890abcdef
/// subnetIds:
/// - subnet-01234567890abcdef
/// - subnet-01234567890abcdea
/// storageConfiguration:
/// fsx:
/// fileSystemId: fs-01234567890abcdef
/// mountPoint: /m2/mount/example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Mainframe Modernization Environment using the <span pulumi-lang-nodejs="`01234567890abcdef012345678`" pulumi-lang-dotnet="`01234567890abcdef012345678`" pulumi-lang-go="`01234567890abcdef012345678`" pulumi-lang-python="`01234567890abcdef012345678`" pulumi-lang-yaml="`01234567890abcdef012345678`" pulumi-lang-java="`01234567890abcdef012345678`">`01234567890abcdef012345678`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:m2/environment:Environment example 01234567890abcdef012345678
/// ```
class Environment4 extends CustomResource {
  late final Output<bool?> applyChangesDuringMaintenanceWindow;

  /// ARN of the Environment.
  late final Output<String> arn;
  late final Output<String?> description;

  /// Engine type must be <span pulumi-lang-nodejs="`microfocus`" pulumi-lang-dotnet="`Microfocus`" pulumi-lang-go="`microfocus`" pulumi-lang-python="`microfocus`" pulumi-lang-yaml="`microfocus`" pulumi-lang-java="`microfocus`">`microfocus`</span> or <span pulumi-lang-nodejs="`bluage`" pulumi-lang-dotnet="`Bluage`" pulumi-lang-go="`bluage`" pulumi-lang-python="`bluage`" pulumi-lang-yaml="`bluage`" pulumi-lang-java="`bluage`">`bluage`</span>.
  late final Output<String> engineType;

  /// The specific version of the engine for the Environment.
  late final Output<String> engineVersion;

  /// The id of the Environment.
  late final Output<String> environmentId;

  /// Force update the environment even if applications are running.
  late final Output<bool?> forceUpdate;
  late final Output<EnvironmentHighAvailabilityConfig?> highAvailabilityConfig;

  /// M2 Instance Type.
  ///
  /// The following arguments are optional:
  late final Output<String> instanceType;

  /// ARN of the KMS key to use for the Environment.
  late final Output<String?> kmsKeyId;

  /// ARN of the load balancer created by the Environment.
  late final Output<String> loadBalancerArn;

  /// Name of the runtime environment. Must be unique within the account.
  late final Output<String> name;

  /// Configures the maintenance window that you want for the runtime environment. The maintenance window must have the format `ddd:hh24:mi-ddd:hh24:mi` and must be less than 24 hours. If not provided a random value will be used.
  late final Output<String> preferredMaintenanceWindow;

  /// Allow applications deployed to this environment to be publicly accessible.
  late final Output<bool> publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of security group ids.
  late final Output<List<String>> securityGroupIds;
  late final Output<EnvironmentStorageConfiguration?> storageConfiguration;

  /// List of subnet ids to deploy environment to.
  late final Output<List<String>> subnetIds;

  /// Key-value tags for the place index. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;
  late final Output<EnvironmentTimeouts2?> timeouts;

  Environment4(
    String name, {
    EnvironmentArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:m2/environment:Environment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applyChangesDuringMaintenanceWindow =
        registerOutput<bool?>('applyChangesDuringMaintenanceWindow');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.engineType = registerOutput<String>('engineType');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.environmentId = registerOutput<String>('environmentId');
    this.forceUpdate = registerOutput<bool?>('forceUpdate');
    this.highAvailabilityConfig =
        registerOutput<EnvironmentHighAvailabilityConfig?>(
            'highAvailabilityConfig');
    this.instanceType = registerOutput<String>('instanceType');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.loadBalancerArn = registerOutput<String>('loadBalancerArn');
    this.name = registerOutput<String>('name');
    this.preferredMaintenanceWindow =
        registerOutput<String>('preferredMaintenanceWindow');
    this.publiclyAccessible = registerOutput<bool>('publiclyAccessible');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.storageConfiguration =
        registerOutput<EnvironmentStorageConfiguration?>(
            'storageConfiguration');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<EnvironmentTimeouts2?>('timeouts');
  }
}
