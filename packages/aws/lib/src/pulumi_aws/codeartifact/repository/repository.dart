import 'package:pulumi/pulumi.dart';
import '../repository_external_connections/repository_external_connections.dart';
import '../repository_upstream/repository_upstream.dart';
import 'repository_args.dart';

/// Provides a CodeArtifact Repository Resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {description: "domain key"});
/// const exampleDomain = new aws.codeartifact.Domain("example", {
/// domain: "example",
/// encryptionKey: example.arn,
/// });
/// const test = new aws.codeartifact.Repository("test", {
/// repository: "example",
/// domain: exampleDomain.domain,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example", description="domain key")
/// example_domain = aws.codeartifact.Domain("example",
/// domain="example",
/// encryption_key=example.arn)
/// test = aws.codeartifact.Repository("test",
/// repository="example",
/// domain=example_domain.domain)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Kms.Key("example", new()
/// {
/// Description = "domain key",
/// });
///
/// var exampleDomain = new Aws.CodeArtifact.Domain("example", new()
/// {
/// DomainName = "example",
/// EncryptionKey = example.Arn,
/// });
///
/// var test = new Aws.CodeArtifact.Repository("test", new()
/// {
/// RepositoryName = "example",
/// Domain = exampleDomain.DomainName,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codeartifact"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// Description: pulumi.String("domain key"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleDomain, err := codeartifact.NewDomain(ctx, "example", &codeartifact.DomainArgs{
/// Domain:        pulumi.String("example"),
/// EncryptionKey: example.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = codeartifact.NewRepository(ctx, "test", &codeartifact.RepositoryArgs{
/// Repository: pulumi.String("example"),
/// Domain:     exampleDomain.Domain,
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.codeartifact.Domain;
/// import com.pulumi.aws.codeartifact.DomainArgs;
/// import com.pulumi.aws.codeartifact.Repository;
/// import com.pulumi.aws.codeartifact.RepositoryArgs;
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
/// var example = new Key("example", KeyArgs.builder()
/// .description("domain key")
/// .build());
///
/// var exampleDomain = new Domain("exampleDomain", DomainArgs.builder()
/// .domain("example")
/// .encryptionKey(example.arn())
/// .build());
///
/// var test = new Repository("test", RepositoryArgs.builder()
/// .repository("example")
/// .domain(exampleDomain.domain())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:kms:Key
/// properties:
/// description: domain key
/// exampleDomain:
/// type: aws:codeartifact:Domain
/// name: example
/// properties:
/// domain: example
/// encryptionKey: ${example.arn}
/// test:
/// type: aws:codeartifact:Repository
/// properties:
/// repository: example
/// domain: ${exampleDomain.domain}
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ### With Upstream Repository
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const upstream = new aws.codeartifact.Repository("upstream", {
/// repository: "upstream",
/// domain: testAwsCodeartifactDomain.domain,
/// });
/// const test = new aws.codeartifact.Repository("test", {
/// repository: "example",
/// domain: example.domain,
/// upstreams: [{
/// repositoryName: upstream.repository,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// upstream = aws.codeartifact.Repository("upstream",
/// repository="upstream",
/// domain=test_aws_codeartifact_domain["domain"])
/// test = aws.codeartifact.Repository("test",
/// repository="example",
/// domain=example["domain"],
/// upstreams=[{
/// "repository_name": upstream.repository,
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
/// var upstream = new Aws.CodeArtifact.Repository("upstream", new()
/// {
/// RepositoryName = "upstream",
/// Domain = testAwsCodeartifactDomain.Domain,
/// });
///
/// var test = new Aws.CodeArtifact.Repository("test", new()
/// {
/// RepositoryName = "example",
/// Domain = example.Domain,
/// Upstreams = new[]
/// {
/// new Aws.CodeArtifact.Inputs.RepositoryUpstreamArgs
/// {
/// RepositoryName = upstream.RepositoryName,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codeartifact"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// upstream, err := codeartifact.NewRepository(ctx, "upstream", &codeartifact.RepositoryArgs{
/// Repository: pulumi.String("upstream"),
/// Domain:     pulumi.Any(testAwsCodeartifactDomain.Domain),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = codeartifact.NewRepository(ctx, "test", &codeartifact.RepositoryArgs{
/// Repository: pulumi.String("example"),
/// Domain:     pulumi.Any(example.Domain),
/// Upstreams: codeartifact.RepositoryUpstreamArray{
/// &codeartifact.RepositoryUpstreamArgs{
/// RepositoryName: upstream.Repository,
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
/// import com.pulumi.aws.codeartifact.Repository;
/// import com.pulumi.aws.codeartifact.RepositoryArgs;
/// import com.pulumi.aws.codeartifact.inputs.RepositoryUpstreamArgs;
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
/// var upstream = new Repository("upstream", RepositoryArgs.builder()
/// .repository("upstream")
/// .domain(testAwsCodeartifactDomain.domain())
/// .build());
///
/// var test = new Repository("test", RepositoryArgs.builder()
/// .repository("example")
/// .domain(example.domain())
/// .upstreams(RepositoryUpstreamArgs.builder()
/// .repositoryName(upstream.repository())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// upstream:
/// type: aws:codeartifact:Repository
/// properties:
/// repository: upstream
/// domain: ${testAwsCodeartifactDomain.domain}
/// test:
/// type: aws:codeartifact:Repository
/// properties:
/// repository: example
/// domain: ${example.domain}
/// upstreams:
/// - repositoryName: ${upstream.repository}
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ### With External Connection
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const upstream = new aws.codeartifact.Repository("upstream", {
/// repository: "upstream",
/// domain: testAwsCodeartifactDomain.domain,
/// });
/// const test = new aws.codeartifact.Repository("test", {
/// repository: "example",
/// domain: example.domain,
/// externalConnections: {
/// externalConnectionName: "public:npmjs",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// upstream = aws.codeartifact.Repository("upstream",
/// repository="upstream",
/// domain=test_aws_codeartifact_domain["domain"])
/// test = aws.codeartifact.Repository("test",
/// repository="example",
/// domain=example["domain"],
/// external_connections={
/// "external_connection_name": "public:npmjs",
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
/// var upstream = new Aws.CodeArtifact.Repository("upstream", new()
/// {
/// RepositoryName = "upstream",
/// Domain = testAwsCodeartifactDomain.Domain,
/// });
///
/// var test = new Aws.CodeArtifact.Repository("test", new()
/// {
/// RepositoryName = "example",
/// Domain = example.Domain,
/// ExternalConnections = new Aws.CodeArtifact.Inputs.RepositoryExternalConnectionsArgs
/// {
/// ExternalConnectionName = "public:npmjs",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codeartifact"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := codeartifact.NewRepository(ctx, "upstream", &codeartifact.RepositoryArgs{
/// Repository: pulumi.String("upstream"),
/// Domain:     pulumi.Any(testAwsCodeartifactDomain.Domain),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = codeartifact.NewRepository(ctx, "test", &codeartifact.RepositoryArgs{
/// Repository: pulumi.String("example"),
/// Domain:     pulumi.Any(example.Domain),
/// ExternalConnections: &codeartifact.RepositoryExternalConnectionsArgs{
/// ExternalConnectionName: pulumi.String("public:npmjs"),
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
/// import com.pulumi.aws.codeartifact.Repository;
/// import com.pulumi.aws.codeartifact.RepositoryArgs;
/// import com.pulumi.aws.codeartifact.inputs.RepositoryExternalConnectionsArgs;
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
/// var upstream = new Repository("upstream", RepositoryArgs.builder()
/// .repository("upstream")
/// .domain(testAwsCodeartifactDomain.domain())
/// .build());
///
/// var test = new Repository("test", RepositoryArgs.builder()
/// .repository("example")
/// .domain(example.domain())
/// .externalConnections(RepositoryExternalConnectionsArgs.builder()
/// .externalConnectionName("public:npmjs")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// upstream:
/// type: aws:codeartifact:Repository
/// properties:
/// repository: upstream
/// domain: ${testAwsCodeartifactDomain.domain}
/// test:
/// type: aws:codeartifact:Repository
/// properties:
/// repository: example
/// domain: ${example.domain}
/// externalConnections:
/// externalConnectionName: public:npmjs
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the CodeArtifact repository.
///
///
/// Using `pulumi import`, import CodeArtifact Repository using the CodeArtifact Repository ARN. For example:
///
/// ```sh
/// $ pulumi import aws:codeartifact/repository:Repository example arn:aws:codeartifact:us-west-2:012345678912:repository/tf-acc-test-6968272603913957763/tf-acc-test-6968272603913957763
/// ```
class Repository extends CustomResource {
  /// The account number of the AWS account that manages the repository.
  late final Output<String> administratorAccount;

  /// The ARN of the repository.
  late final Output<String> arn;

  /// The description of the repository.
  late final Output<String?> description;

  /// The domain that contains the created repository.
  late final Output<String> domain;

  /// The account number of the AWS account that owns the domain.
  late final Output<String> domainOwner;

  /// An array of external connections associated with the repository. Only one external connection can be set per repository. see External Connections.
  late final Output<RepositoryExternalConnections?> externalConnections;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the repository to create.
  late final Output<String> repository;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// A list of upstream repositories to associate with the repository. The order of the upstream repositories in the list determines their priority order when AWS CodeArtifact looks for a requested package version. see Upstream
  late final Output<List<RepositoryUpstream>?> upstreams;

  Repository(
    String name, {
    RepositoryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codeartifact/repository:Repository',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.administratorAccount = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.domain = Output.createUnknown<String>();
    this.domainOwner = Output.createUnknown<String>();
    this.externalConnections =
        Output.createUnknown<RepositoryExternalConnections?>();
    this.region = Output.createUnknown<String>();
    this.repository = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.upstreams = Output.createUnknown<List<RepositoryUpstream>?>();
  }
}
