import 'package:pulumi/pulumi.dart';
import 'lifecycle_policy_args2.dart';

/// Manages an ECR repository lifecycle policy.
///
/// > **NOTE:** Only one <span pulumi-lang-nodejs="`aws.ecr.LifecyclePolicy`" pulumi-lang-dotnet="`aws.ecr.LifecyclePolicy`" pulumi-lang-go="`ecr.LifecyclePolicy`" pulumi-lang-python="`ecr.LifecyclePolicy`" pulumi-lang-yaml="`aws.ecr.LifecyclePolicy`" pulumi-lang-java="`aws.ecr.LifecyclePolicy`">`aws.ecr.LifecyclePolicy`</span> resource can be used with the same ECR repository. To apply multiple rules, they must be combined in the <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span> JSON.
///
/// > **NOTE:** The AWS ECR API seems to reorder rules based on `rulePriority`. If you define multiple rules that are not sorted in ascending `rulePriority` order in the this provider code, the resource will be flagged for recreation every deployment.
///
/// ## Example Usage
///
/// ### Policy on Untagged Images
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecr.Repository("example", {name: "example-repo"});
/// const exampleLifecyclePolicy = new aws.ecr.LifecyclePolicy("example", {
/// repository: example.name,
/// policy: `{
/// \\"rules\\": [
/// {
/// \\"rulePriority\\": 1,
/// \\"description\\": \\"Expire images older than 14 days\\",
/// \\"selection\\": {
/// \\"tagStatus\\": \\"untagged\\",
/// \\"countType\\": \\"sinceImagePushed\\",
/// \\"countUnit\\": \\"days\\",
/// \\"countNumber\\": 14
/// },
/// \\"action\\": {
/// \\"type\\": \\"expire\\"
/// }
/// }
/// ]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecr.Repository("example", name="example-repo")
/// example_lifecycle_policy = aws.ecr.LifecyclePolicy("example",
/// repository=example.name,
/// policy="""{
/// \"rules\": [
/// {
/// \"rulePriority\": 1,
/// \"description\": \"Expire images older than 14 days\",
/// \"selection\": {
/// \"tagStatus\": \"untagged\",
/// \"countType\": \"sinceImagePushed\",
/// \"countUnit\": \"days\",
/// \"countNumber\": 14
/// },
/// \"action\": {
/// \"type\": \"expire\"
/// }
/// }
/// ]
/// }
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
/// var example = new Aws.Ecr.Repository("example", new()
/// {
/// Name = "example-repo",
/// });
///
/// var exampleLifecyclePolicy = new Aws.Ecr.LifecyclePolicy("example", new()
/// {
/// Repository = example.Name,
/// Policy = @"{
/// \""rules\"": [
/// {
/// \""rulePriority\"": 1,
/// \""description\"": \""Expire images older than 14 days\"",
/// \""selection\"": {
/// \""tagStatus\"": \""untagged\"",
/// \""countType\"": \""sinceImagePushed\"",
/// \""countUnit\"": \""days\"",
/// \""countNumber\"": 14
/// },
/// \""action\"": {
/// \""type\"": \""expire\""
/// }
/// }
/// ]
/// }
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ecr.NewRepository(ctx, "example", &ecr.RepositoryArgs{
/// Name: pulumi.String("example-repo"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ecr.NewLifecyclePolicy(ctx, "example", &ecr.LifecyclePolicyArgs{
/// Repository: example.Name,
/// Policy: pulumi.Any(`{
/// \"rules\": [
/// {
/// \"rulePriority\": 1,
/// \"description\": \"Expire images older than 14 days\",
/// \"selection\": {
/// \"tagStatus\": \"untagged\",
/// \"countType\": \"sinceImagePushed\",
/// \"countUnit\": \"days\",
/// \"countNumber\": 14
/// },
/// \"action\": {
/// \"type\": \"expire\"
/// }
/// }
/// ]
/// }
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
/// import com.pulumi.aws.ecr.Repository;
/// import com.pulumi.aws.ecr.RepositoryArgs;
/// import com.pulumi.aws.ecr.LifecyclePolicy;
/// import com.pulumi.aws.ecr.LifecyclePolicyArgs;
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
/// var example = new Repository("example", RepositoryArgs.builder()
/// .name("example-repo")
/// .build());
///
/// var exampleLifecyclePolicy = new LifecyclePolicy("exampleLifecyclePolicy", LifecyclePolicyArgs.builder()
/// .repository(example.name())
/// .policy("""
/// {
/// \"rules\": [
/// {
/// \"rulePriority\": 1,
/// \"description\": \"Expire images older than 14 days\",
/// \"selection\": {
/// \"tagStatus\": \"untagged\",
/// \"countType\": \"sinceImagePushed\",
/// \"countUnit\": \"days\",
/// \"countNumber\": 14
/// },
/// \"action\": {
/// \"type\": \"expire\"
/// }
/// }
/// ]
/// }
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ecr:Repository
/// properties:
/// name: example-repo
/// exampleLifecyclePolicy:
/// type: aws:ecr:LifecyclePolicy
/// name: example
/// properties:
/// repository: ${example.name}
/// policy: |
/// {
/// \"rules\": [
/// {
/// \"rulePriority\": 1,
/// \"description\": \"Expire images older than 14 days\",
/// \"selection\": {
/// \"tagStatus\": \"untagged\",
/// \"countType\": \"sinceImagePushed\",
/// \"countUnit\": \"days\",
/// \"countNumber\": 14
/// },
/// \"action\": {
/// \"type\": \"expire\"
/// }
/// }
/// ]
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Policy on Tagged Images
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecr.Repository("example", {name: "example-repo"});
/// const exampleLifecyclePolicy = new aws.ecr.LifecyclePolicy("example", {
/// repository: example.name,
/// policy: `{
/// \\"rules\\": [
/// {
/// \\"rulePriority\\": 1,
/// \\"description\\": \\"Keep last 30 images\\",
/// \\"selection\\": {
/// \\"tagStatus\\": \\"tagged\\",
/// \\"tagPrefixList\\": [\\"v\\"],
/// \\"countType\\": \\"imageCountMoreThan\\",
/// \\"countNumber\\": 30
/// },
/// \\"action\\": {
/// \\"type\\": \\"expire\\"
/// }
/// }
/// ]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecr.Repository("example", name="example-repo")
/// example_lifecycle_policy = aws.ecr.LifecyclePolicy("example",
/// repository=example.name,
/// policy="""{
/// \"rules\": [
/// {
/// \"rulePriority\": 1,
/// \"description\": \"Keep last 30 images\",
/// \"selection\": {
/// \"tagStatus\": \"tagged\",
/// \"tagPrefixList\": [\"v\"],
/// \"countType\": \"imageCountMoreThan\",
/// \"countNumber\": 30
/// },
/// \"action\": {
/// \"type\": \"expire\"
/// }
/// }
/// ]
/// }
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
/// var example = new Aws.Ecr.Repository("example", new()
/// {
/// Name = "example-repo",
/// });
///
/// var exampleLifecyclePolicy = new Aws.Ecr.LifecyclePolicy("example", new()
/// {
/// Repository = example.Name,
/// Policy = @"{
/// \""rules\"": [
/// {
/// \""rulePriority\"": 1,
/// \""description\"": \""Keep last 30 images\"",
/// \""selection\"": {
/// \""tagStatus\"": \""tagged\"",
/// \""tagPrefixList\"": [\""v\""],
/// \""countType\"": \""imageCountMoreThan\"",
/// \""countNumber\"": 30
/// },
/// \""action\"": {
/// \""type\"": \""expire\""
/// }
/// }
/// ]
/// }
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ecr.NewRepository(ctx, "example", &ecr.RepositoryArgs{
/// Name: pulumi.String("example-repo"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ecr.NewLifecyclePolicy(ctx, "example", &ecr.LifecyclePolicyArgs{
/// Repository: example.Name,
/// Policy: pulumi.Any(`{
/// \"rules\": [
/// {
/// \"rulePriority\": 1,
/// \"description\": \"Keep last 30 images\",
/// \"selection\": {
/// \"tagStatus\": \"tagged\",
/// \"tagPrefixList\": [\"v\"],
/// \"countType\": \"imageCountMoreThan\",
/// \"countNumber\": 30
/// },
/// \"action\": {
/// \"type\": \"expire\"
/// }
/// }
/// ]
/// }
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
/// import com.pulumi.aws.ecr.Repository;
/// import com.pulumi.aws.ecr.RepositoryArgs;
/// import com.pulumi.aws.ecr.LifecyclePolicy;
/// import com.pulumi.aws.ecr.LifecyclePolicyArgs;
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
/// var example = new Repository("example", RepositoryArgs.builder()
/// .name("example-repo")
/// .build());
///
/// var exampleLifecyclePolicy = new LifecyclePolicy("exampleLifecyclePolicy", LifecyclePolicyArgs.builder()
/// .repository(example.name())
/// .policy("""
/// {
/// \"rules\": [
/// {
/// \"rulePriority\": 1,
/// \"description\": \"Keep last 30 images\",
/// \"selection\": {
/// \"tagStatus\": \"tagged\",
/// \"tagPrefixList\": [\"v\"],
/// \"countType\": \"imageCountMoreThan\",
/// \"countNumber\": 30
/// },
/// \"action\": {
/// \"type\": \"expire\"
/// }
/// }
/// ]
/// }
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ecr:Repository
/// properties:
/// name: example-repo
/// exampleLifecyclePolicy:
/// type: aws:ecr:LifecyclePolicy
/// name: example
/// properties:
/// repository: ${example.name}
/// policy: |
/// {
/// \"rules\": [
/// {
/// \"rulePriority\": 1,
/// \"description\": \"Keep last 30 images\",
/// \"selection\": {
/// \"tagStatus\": \"tagged\",
/// \"tagPrefixList\": [\"v\"],
/// \"countType\": \"imageCountMoreThan\",
/// \"countNumber\": 30
/// },
/// \"action\": {
/// \"type\": \"expire\"
/// }
/// }
/// ]
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Policy to Archive and Delete
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecr.Repository("example", {name: "example-repo"});
/// const exampleLifecyclePolicy = new aws.ecr.LifecyclePolicy("example", {
/// repository: example.name,
/// policy: `{
/// \\"rules\\": [
/// {
/// \\"rulePriority\\": 1,
/// \\"description\\": \\"Archive images not pulled in 90 days\\",
/// \\"selection\\": {
/// \\"tagStatus\\": \\"any\\",
/// \\"countType\\": \\"sinceImagePulled\\",
/// \\"countUnit\\": \\"days\\",
/// \\"countNumber\\": 90
/// },
/// \\"action\\": {
/// \\"type\\": \\"transition\\",
/// \\"targetStorageClass\\": \\"archive\\"
/// }
/// },
/// {
/// \\"rulePriority\\": 2,
/// \\"description\\": \\"Delete images archived for more than 365 days\\",
/// \\"selection\\": {
/// \\"tagStatus\\": \\"any\\",
/// \\"storageClass\\": \\"archive\\",
/// \\"countType\\": \\"sinceImageTransitioned\\",
/// \\"countUnit\\": \\"days\\",
/// \\"countNumber\\": 365
/// },
/// \\"action\\": {
/// \\"type\\": \\"expire\\"
/// }
/// }
/// ]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecr.Repository("example", name="example-repo")
/// example_lifecycle_policy = aws.ecr.LifecyclePolicy("example",
/// repository=example.name,
/// policy="""{
/// \"rules\": [
/// {
/// \"rulePriority\": 1,
/// \"description\": \"Archive images not pulled in 90 days\",
/// \"selection\": {
/// \"tagStatus\": \"any\",
/// \"countType\": \"sinceImagePulled\",
/// \"countUnit\": \"days\",
/// \"countNumber\": 90
/// },
/// \"action\": {
/// \"type\": \"transition\",
/// \"targetStorageClass\": \"archive\"
/// }
/// },
/// {
/// \"rulePriority\": 2,
/// \"description\": \"Delete images archived for more than 365 days\",
/// \"selection\": {
/// \"tagStatus\": \"any\",
/// \"storageClass\": \"archive\",
/// \"countType\": \"sinceImageTransitioned\",
/// \"countUnit\": \"days\",
/// \"countNumber\": 365
/// },
/// \"action\": {
/// \"type\": \"expire\"
/// }
/// }
/// ]
/// }
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
/// var example = new Aws.Ecr.Repository("example", new()
/// {
/// Name = "example-repo",
/// });
///
/// var exampleLifecyclePolicy = new Aws.Ecr.LifecyclePolicy("example", new()
/// {
/// Repository = example.Name,
/// Policy = @"{
/// \""rules\"": [
/// {
/// \""rulePriority\"": 1,
/// \""description\"": \""Archive images not pulled in 90 days\"",
/// \""selection\"": {
/// \""tagStatus\"": \""any\"",
/// \""countType\"": \""sinceImagePulled\"",
/// \""countUnit\"": \""days\"",
/// \""countNumber\"": 90
/// },
/// \""action\"": {
/// \""type\"": \""transition\"",
/// \""targetStorageClass\"": \""archive\""
/// }
/// },
/// {
/// \""rulePriority\"": 2,
/// \""description\"": \""Delete images archived for more than 365 days\"",
/// \""selection\"": {
/// \""tagStatus\"": \""any\"",
/// \""storageClass\"": \""archive\"",
/// \""countType\"": \""sinceImageTransitioned\"",
/// \""countUnit\"": \""days\"",
/// \""countNumber\"": 365
/// },
/// \""action\"": {
/// \""type\"": \""expire\""
/// }
/// }
/// ]
/// }
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ecr.NewRepository(ctx, "example", &ecr.RepositoryArgs{
/// Name: pulumi.String("example-repo"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ecr.NewLifecyclePolicy(ctx, "example", &ecr.LifecyclePolicyArgs{
/// Repository: example.Name,
/// Policy: pulumi.Any(`{
/// \"rules\": [
/// {
/// \"rulePriority\": 1,
/// \"description\": \"Archive images not pulled in 90 days\",
/// \"selection\": {
/// \"tagStatus\": \"any\",
/// \"countType\": \"sinceImagePulled\",
/// \"countUnit\": \"days\",
/// \"countNumber\": 90
/// },
/// \"action\": {
/// \"type\": \"transition\",
/// \"targetStorageClass\": \"archive\"
/// }
/// },
/// {
/// \"rulePriority\": 2,
/// \"description\": \"Delete images archived for more than 365 days\",
/// \"selection\": {
/// \"tagStatus\": \"any\",
/// \"storageClass\": \"archive\",
/// \"countType\": \"sinceImageTransitioned\",
/// \"countUnit\": \"days\",
/// \"countNumber\": 365
/// },
/// \"action\": {
/// \"type\": \"expire\"
/// }
/// }
/// ]
/// }
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
/// import com.pulumi.aws.ecr.Repository;
/// import com.pulumi.aws.ecr.RepositoryArgs;
/// import com.pulumi.aws.ecr.LifecyclePolicy;
/// import com.pulumi.aws.ecr.LifecyclePolicyArgs;
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
/// var example = new Repository("example", RepositoryArgs.builder()
/// .name("example-repo")
/// .build());
///
/// var exampleLifecyclePolicy = new LifecyclePolicy("exampleLifecyclePolicy", LifecyclePolicyArgs.builder()
/// .repository(example.name())
/// .policy("""
/// {
/// \"rules\": [
/// {
/// \"rulePriority\": 1,
/// \"description\": \"Archive images not pulled in 90 days\",
/// \"selection\": {
/// \"tagStatus\": \"any\",
/// \"countType\": \"sinceImagePulled\",
/// \"countUnit\": \"days\",
/// \"countNumber\": 90
/// },
/// \"action\": {
/// \"type\": \"transition\",
/// \"targetStorageClass\": \"archive\"
/// }
/// },
/// {
/// \"rulePriority\": 2,
/// \"description\": \"Delete images archived for more than 365 days\",
/// \"selection\": {
/// \"tagStatus\": \"any\",
/// \"storageClass\": \"archive\",
/// \"countType\": \"sinceImageTransitioned\",
/// \"countUnit\": \"days\",
/// \"countNumber\": 365
/// },
/// \"action\": {
/// \"type\": \"expire\"
/// }
/// }
/// ]
/// }
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ecr:Repository
/// properties:
/// name: example-repo
/// exampleLifecyclePolicy:
/// type: aws:ecr:LifecyclePolicy
/// name: example
/// properties:
/// repository: ${example.name}
/// policy: |
/// {
/// \"rules\": [
/// {
/// \"rulePriority\": 1,
/// \"description\": \"Archive images not pulled in 90 days\",
/// \"selection\": {
/// \"tagStatus\": \"any\",
/// \"countType\": \"sinceImagePulled\",
/// \"countUnit\": \"days\",
/// \"countNumber\": 90
/// },
/// \"action\": {
/// \"type\": \"transition\",
/// \"targetStorageClass\": \"archive\"
/// }
/// },
/// {
/// \"rulePriority\": 2,
/// \"description\": \"Delete images archived for more than 365 days\",
/// \"selection\": {
/// \"tagStatus\": \"any\",
/// \"storageClass\": \"archive\",
/// \"countType\": \"sinceImageTransitioned\",
/// \"countUnit\": \"days\",
/// \"countNumber\": 365
/// },
/// \"action\": {
/// \"type\": \"expire\"
/// }
/// }
/// ]
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`repository`" pulumi-lang-dotnet="`Repository`" pulumi-lang-go="`repository`" pulumi-lang-python="`repository`" pulumi-lang-yaml="`repository`" pulumi-lang-java="`repository`">`repository`</span> - (String) Name of the ECR repository.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import ECR Lifecycle Policy using the name of the repository. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/lifecyclePolicy:LifecyclePolicy example tf-example
/// ```
class LifecyclePolicy2 extends CustomResource {
  /// The policy document. This is a JSON formatted string. See more details about [Policy Parameters](http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html#lifecycle_policy_parameters) in the official AWS docs. Consider using the <span pulumi-lang-nodejs="`aws.ecr.getLifecyclePolicyDocument`" pulumi-lang-dotnet="`aws.ecr.getLifecyclePolicyDocument`" pulumi-lang-go="`ecr.getLifecyclePolicyDocument`" pulumi-lang-python="`ecr_get_lifecycle_policy_document`" pulumi-lang-yaml="`aws.ecr.getLifecyclePolicyDocument`" pulumi-lang-java="`aws.ecr.getLifecyclePolicyDocument`">`aws.ecr.getLifecyclePolicyDocument`</span><span pulumi-lang-nodejs=" dataSource " pulumi-lang-dotnet=" DataSource " pulumi-lang-go=" dataSource " pulumi-lang-python=" data_source " pulumi-lang-yaml=" dataSource " pulumi-lang-java=" dataSource "> data_source </span>to generate/manage the JSON document used for the <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span> argument.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The registry ID where the repository was created.
  late final Output<String> registryId;

  /// Name of the repository to apply the policy.
  late final Output<String> repository;

  LifecyclePolicy2(
    String name, {
    LifecyclePolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecr/lifecyclePolicy:LifecyclePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
    this.repository = registerOutput<String>('repository');
  }
}
