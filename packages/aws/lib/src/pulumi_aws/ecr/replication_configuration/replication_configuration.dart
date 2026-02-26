import 'package:pulumi/pulumi.dart';
import '../replication_configuration_replication_configuration/replication_configuration_replication_configuration.dart';
import 'replication_configuration_args.dart';

/// Provides an Elastic Container Registry Replication Configuration.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = aws.getRegions({});
/// const exampleReplicationConfiguration = new aws.ecr.ReplicationConfiguration("example", {replicationConfiguration: {
/// rules: [{
/// destinations: [{
/// region: example.then(example => example.names?.[0]),
/// registryId: current.then(current => current.accountId),
/// }],
/// }],
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.get_regions()
/// example_replication_configuration = aws.ecr.ReplicationConfiguration("example", replication_configuration={
/// "rules": [{
/// "destinations": [{
/// "region": example.names[0],
/// "registry_id": current.account_id,
/// }],
/// }],
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
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var example = Aws.GetRegions.Invoke();
///
/// var exampleReplicationConfiguration = new Aws.Ecr.ReplicationConfiguration("example", new()
/// {
/// ReplicationConfigurationDetails = new Aws.Ecr.Inputs.ReplicationConfigurationReplicationConfigurationArgs
/// {
/// Rules = new[]
/// {
/// new Aws.Ecr.Inputs.ReplicationConfigurationReplicationConfigurationRuleArgs
/// {
/// Destinations = new[]
/// {
/// new Aws.Ecr.Inputs.ReplicationConfigurationReplicationConfigurationRuleDestinationArgs
/// {
/// Region = example.Apply(getRegionsResult => getRegionsResult.Names[0]),
/// RegistryId = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// example, err := aws.GetRegions(ctx, &aws.GetRegionsArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ecr.NewReplicationConfiguration(ctx, "example", &ecr.ReplicationConfigurationArgs{
/// ReplicationConfiguration: &ecr.ReplicationConfigurationReplicationConfigurationArgs{
/// Rules: ecr.ReplicationConfigurationReplicationConfigurationRuleArray{
/// &ecr.ReplicationConfigurationReplicationConfigurationRuleArgs{
/// Destinations: ecr.ReplicationConfigurationReplicationConfigurationRuleDestinationArray{
/// &ecr.ReplicationConfigurationReplicationConfigurationRuleDestinationArgs{
/// Region:     pulumi.String(example.Names[0]),
/// RegistryId: pulumi.String(current.AccountId),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetRegionsArgs;
/// import com.pulumi.aws.ecr.ReplicationConfiguration;
/// import com.pulumi.aws.ecr.ReplicationConfigurationArgs;
/// import com.pulumi.aws.ecr.inputs.ReplicationConfigurationReplicationConfigurationArgs;
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
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// final var example = AwsFunctions.getRegions(GetRegionsArgs.builder()
/// .build());
///
/// var exampleReplicationConfiguration = new ReplicationConfiguration("exampleReplicationConfiguration", ReplicationConfigurationArgs.builder()
/// .replicationConfiguration(ReplicationConfigurationReplicationConfigurationArgs.builder()
/// .rules(ReplicationConfigurationReplicationConfigurationRuleArgs.builder()
/// .destinations(ReplicationConfigurationReplicationConfigurationRuleDestinationArgs.builder()
/// .region(example.names()[0])
/// .registryId(current.accountId())
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
/// exampleReplicationConfiguration:
/// type: aws:ecr:ReplicationConfiguration
/// name: example
/// properties:
/// replicationConfiguration:
/// rules:
/// - destinations:
/// - region: ${example.names[0]}
/// registryId: ${current.accountId}
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// example:
/// fn::invoke:
/// function: aws:getRegions
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Multiple Region Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = aws.getRegions({});
/// const exampleReplicationConfiguration = new aws.ecr.ReplicationConfiguration("example", {replicationConfiguration: {
/// rules: [{
/// destinations: [
/// {
/// region: example.then(example => example.names?.[0]),
/// registryId: current.then(current => current.accountId),
/// },
/// {
/// region: example.then(example => example.names?.[1]),
/// registryId: current.then(current => current.accountId),
/// },
/// ],
/// }],
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.get_regions()
/// example_replication_configuration = aws.ecr.ReplicationConfiguration("example", replication_configuration={
/// "rules": [{
/// "destinations": [
/// {
/// "region": example.names[0],
/// "registry_id": current.account_id,
/// },
/// {
/// "region": example.names[1],
/// "registry_id": current.account_id,
/// },
/// ],
/// }],
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
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var example = Aws.GetRegions.Invoke();
///
/// var exampleReplicationConfiguration = new Aws.Ecr.ReplicationConfiguration("example", new()
/// {
/// ReplicationConfigurationDetails = new Aws.Ecr.Inputs.ReplicationConfigurationReplicationConfigurationArgs
/// {
/// Rules = new[]
/// {
/// new Aws.Ecr.Inputs.ReplicationConfigurationReplicationConfigurationRuleArgs
/// {
/// Destinations = new[]
/// {
/// new Aws.Ecr.Inputs.ReplicationConfigurationReplicationConfigurationRuleDestinationArgs
/// {
/// Region = example.Apply(getRegionsResult => getRegionsResult.Names[0]),
/// RegistryId = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
/// },
/// new Aws.Ecr.Inputs.ReplicationConfigurationReplicationConfigurationRuleDestinationArgs
/// {
/// Region = example.Apply(getRegionsResult => getRegionsResult.Names[1]),
/// RegistryId = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// example, err := aws.GetRegions(ctx, &aws.GetRegionsArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ecr.NewReplicationConfiguration(ctx, "example", &ecr.ReplicationConfigurationArgs{
/// ReplicationConfiguration: &ecr.ReplicationConfigurationReplicationConfigurationArgs{
/// Rules: ecr.ReplicationConfigurationReplicationConfigurationRuleArray{
/// &ecr.ReplicationConfigurationReplicationConfigurationRuleArgs{
/// Destinations: ecr.ReplicationConfigurationReplicationConfigurationRuleDestinationArray{
/// &ecr.ReplicationConfigurationReplicationConfigurationRuleDestinationArgs{
/// Region:     pulumi.String(example.Names[0]),
/// RegistryId: pulumi.String(current.AccountId),
/// },
/// &ecr.ReplicationConfigurationReplicationConfigurationRuleDestinationArgs{
/// Region:     pulumi.String(example.Names[1]),
/// RegistryId: pulumi.String(current.AccountId),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetRegionsArgs;
/// import com.pulumi.aws.ecr.ReplicationConfiguration;
/// import com.pulumi.aws.ecr.ReplicationConfigurationArgs;
/// import com.pulumi.aws.ecr.inputs.ReplicationConfigurationReplicationConfigurationArgs;
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
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// final var example = AwsFunctions.getRegions(GetRegionsArgs.builder()
/// .build());
///
/// var exampleReplicationConfiguration = new ReplicationConfiguration("exampleReplicationConfiguration", ReplicationConfigurationArgs.builder()
/// .replicationConfiguration(ReplicationConfigurationReplicationConfigurationArgs.builder()
/// .rules(ReplicationConfigurationReplicationConfigurationRuleArgs.builder()
/// .destinations(
/// ReplicationConfigurationReplicationConfigurationRuleDestinationArgs.builder()
/// .region(example.names()[0])
/// .registryId(current.accountId())
/// .build(),
/// ReplicationConfigurationReplicationConfigurationRuleDestinationArgs.builder()
/// .region(example.names()[1])
/// .registryId(current.accountId())
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
/// exampleReplicationConfiguration:
/// type: aws:ecr:ReplicationConfiguration
/// name: example
/// properties:
/// replicationConfiguration:
/// rules:
/// - destinations:
/// - region: ${example.names[0]}
/// registryId: ${current.accountId}
/// - region: ${example.names[1]}
/// registryId: ${current.accountId}
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// example:
/// fn::invoke:
/// function: aws:getRegions
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Repository Filter Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = aws.getRegions({});
/// const exampleReplicationConfiguration = new aws.ecr.ReplicationConfiguration("example", {replicationConfiguration: {
/// rules: [{
/// destinations: [{
/// region: example.then(example => example.names?.[0]),
/// registryId: current.then(current => current.accountId),
/// }],
/// repositoryFilters: [{
/// filter: "prod-microservice",
/// filterType: "PREFIX_MATCH",
/// }],
/// }],
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.get_regions()
/// example_replication_configuration = aws.ecr.ReplicationConfiguration("example", replication_configuration={
/// "rules": [{
/// "destinations": [{
/// "region": example.names[0],
/// "registry_id": current.account_id,
/// }],
/// "repository_filters": [{
/// "filter": "prod-microservice",
/// "filter_type": "PREFIX_MATCH",
/// }],
/// }],
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
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var example = Aws.GetRegions.Invoke();
///
/// var exampleReplicationConfiguration = new Aws.Ecr.ReplicationConfiguration("example", new()
/// {
/// ReplicationConfigurationDetails = new Aws.Ecr.Inputs.ReplicationConfigurationReplicationConfigurationArgs
/// {
/// Rules = new[]
/// {
/// new Aws.Ecr.Inputs.ReplicationConfigurationReplicationConfigurationRuleArgs
/// {
/// Destinations = new[]
/// {
/// new Aws.Ecr.Inputs.ReplicationConfigurationReplicationConfigurationRuleDestinationArgs
/// {
/// Region = example.Apply(getRegionsResult => getRegionsResult.Names[0]),
/// RegistryId = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
/// },
/// },
/// RepositoryFilters = new[]
/// {
/// new Aws.Ecr.Inputs.ReplicationConfigurationReplicationConfigurationRuleRepositoryFilterArgs
/// {
/// Filter = "prod-microservice",
/// FilterType = "PREFIX_MATCH",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// example, err := aws.GetRegions(ctx, &aws.GetRegionsArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ecr.NewReplicationConfiguration(ctx, "example", &ecr.ReplicationConfigurationArgs{
/// ReplicationConfiguration: &ecr.ReplicationConfigurationReplicationConfigurationArgs{
/// Rules: ecr.ReplicationConfigurationReplicationConfigurationRuleArray{
/// &ecr.ReplicationConfigurationReplicationConfigurationRuleArgs{
/// Destinations: ecr.ReplicationConfigurationReplicationConfigurationRuleDestinationArray{
/// &ecr.ReplicationConfigurationReplicationConfigurationRuleDestinationArgs{
/// Region:     pulumi.String(example.Names[0]),
/// RegistryId: pulumi.String(current.AccountId),
/// },
/// },
/// RepositoryFilters: ecr.ReplicationConfigurationReplicationConfigurationRuleRepositoryFilterArray{
/// &ecr.ReplicationConfigurationReplicationConfigurationRuleRepositoryFilterArgs{
/// Filter:     pulumi.String("prod-microservice"),
/// FilterType: pulumi.String("PREFIX_MATCH"),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetRegionsArgs;
/// import com.pulumi.aws.ecr.ReplicationConfiguration;
/// import com.pulumi.aws.ecr.ReplicationConfigurationArgs;
/// import com.pulumi.aws.ecr.inputs.ReplicationConfigurationReplicationConfigurationArgs;
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
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// final var example = AwsFunctions.getRegions(GetRegionsArgs.builder()
/// .build());
///
/// var exampleReplicationConfiguration = new ReplicationConfiguration("exampleReplicationConfiguration", ReplicationConfigurationArgs.builder()
/// .replicationConfiguration(ReplicationConfigurationReplicationConfigurationArgs.builder()
/// .rules(ReplicationConfigurationReplicationConfigurationRuleArgs.builder()
/// .destinations(ReplicationConfigurationReplicationConfigurationRuleDestinationArgs.builder()
/// .region(example.names()[0])
/// .registryId(current.accountId())
/// .build())
/// .repositoryFilters(ReplicationConfigurationReplicationConfigurationRuleRepositoryFilterArgs.builder()
/// .filter("prod-microservice")
/// .filterType("PREFIX_MATCH")
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
/// exampleReplicationConfiguration:
/// type: aws:ecr:ReplicationConfiguration
/// name: example
/// properties:
/// replicationConfiguration:
/// rules:
/// - destinations:
/// - region: ${example.names[0]}
/// registryId: ${current.accountId}
/// repositoryFilters:
/// - filter: prod-microservice
/// filterType: PREFIX_MATCH
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// example:
/// fn::invoke:
/// function: aws:getRegions
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import ECR Replication Configuration using the <span pulumi-lang-nodejs="`registryId`" pulumi-lang-dotnet="`RegistryId`" pulumi-lang-go="`registryId`" pulumi-lang-python="`registry_id`" pulumi-lang-yaml="`registryId`" pulumi-lang-java="`registryId`">`registry_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/replicationConfiguration:ReplicationConfiguration service 012345678912
/// ```
class ReplicationConfiguration extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The registry ID where the replication configuration was created.
  late final Output<String> registryId;

  /// Replication configuration for a registry. See Replication Configuration.
  late final Output<ReplicationConfigurationReplicationConfiguration?>
      replicationConfiguration;

  ReplicationConfiguration(
    String name, {
    ReplicationConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecr/replicationConfiguration:ReplicationConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = Output.createUnknown<String>();
    this.registryId = Output.createUnknown<String>();
    this.replicationConfiguration = Output.createUnknown<
        ReplicationConfigurationReplicationConfiguration?>();
  }
}
