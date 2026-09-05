import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_args.dart';
import 'repository_external_connections.dart';
import 'repository_state.dart';
import 'repository_upstream.dart';

/// Provides a CodeArtifact Repository Resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {description: "domain key"});
/// const exampleDomain = new aws.codeartifact.Domain("example", {
///     domain: "example",
///     encryptionKey: example.arn,
/// });
/// const test = new aws.codeartifact.Repository("test", {
///     repository: "example",
///     domain: exampleDomain.domain,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example", description="domain key")
/// example_domain = aws.codeartifact.Domain("example",
///     domain="example",
///     encryption_key=example.arn)
/// test = aws.codeartifact.Repository("test",
///     repository="example",
///     domain=example_domain.domain)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "domain key",
///     });
///
///     var exampleDomain = new Aws.CodeArtifact.Domain("example", new()
///     {
///         DomainName = "example",
///         EncryptionKey = example.Arn,
///     });
///
///     var test = new Aws.CodeArtifact.Repository("test", new()
///     {
///         RepositoryName = "example",
///         Domain = exampleDomain.DomainName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codeartifact"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description: pulumi.String("domain key"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDomain, err := codeartifact.NewDomain(ctx, "example", &codeartifact.DomainArgs{
/// 			Domain:        pulumi.String("example"),
/// 			EncryptionKey: example.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = codeartifact.NewRepository(ctx, "test", &codeartifact.RepositoryArgs{
/// 			Repository: pulumi.String("example"),
/// 			Domain:     exampleDomain.Domain,
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
/// resource "aws_kms_key" "example" {
///   description = "domain key"
/// }
/// resource "aws_codeartifact_domain" "example" {
///   domain         = "example"
///   encryption_key = aws_kms_key.example.arn
/// }
/// resource "aws_codeartifact_repository" "test" {
///   repository = "example"
///   domain     = aws_codeartifact_domain.example.domain
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("domain key")
///             .build());
///
///         var exampleDomain = new Domain("exampleDomain", DomainArgs.builder()
///             .domain("example")
///             .encryptionKey(example.arn())
///             .build());
///
///         var test = new Repository("test", RepositoryArgs.builder()
///             .repository("example")
///             .domain(exampleDomain.domain())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       description: domain key
///   exampleDomain:
///     type: aws:codeartifact:Domain
///     name: example
///     properties:
///       domain: example
///       encryptionKey: ${example.arn}
///   test:
///     type: aws:codeartifact:Repository
///     properties:
///       repository: example
///       domain: ${exampleDomain.domain}
/// ```
///
///
/// ### Example Usage with upstream repository
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const upstream = new aws.codeartifact.Repository("upstream", {
///     repository: "upstream",
///     domain: testAwsCodeartifactDomain.domain,
/// });
/// const test = new aws.codeartifact.Repository("test", {
///     upstreams: [{
///         repositoryName: upstream.repository,
///     }],
///     repository: "example",
///     domain: example.domain,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// upstream = aws.codeartifact.Repository("upstream",
///     repository="upstream",
///     domain=test_aws_codeartifact_domain["domain"])
/// test = aws.codeartifact.Repository("test",
///     upstreams=[{
///         "repository_name": upstream.repository,
///     }],
///     repository="example",
///     domain=example["domain"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var upstream = new Aws.CodeArtifact.Repository("upstream", new()
///     {
///         RepositoryName = "upstream",
///         Domain = testAwsCodeartifactDomain.Domain,
///     });
///
///     var test = new Aws.CodeArtifact.Repository("test", new()
///     {
///         Upstreams = new[]
///         {
///             new Aws.CodeArtifact.Inputs.RepositoryUpstreamArgs
///             {
///                 RepositoryName = upstream.RepositoryName,
///             },
///         },
///         RepositoryName = "example",
///         Domain = example.Domain,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codeartifact"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		upstream, err := codeartifact.NewRepository(ctx, "upstream", &codeartifact.RepositoryArgs{
/// 			Repository: pulumi.String("upstream"),
/// 			Domain:     pulumi.Any(testAwsCodeartifactDomain.Domain),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = codeartifact.NewRepository(ctx, "test", &codeartifact.RepositoryArgs{
/// 			Upstreams: codeartifact.RepositoryUpstreamArray{
/// 				&codeartifact.RepositoryUpstreamArgs{
/// 					RepositoryName: upstream.Repository,
/// 				},
/// 			},
/// 			Repository: pulumi.String("example"),
/// 			Domain:     pulumi.Any(example.Domain),
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
/// resource "aws_codeartifact_repository" "upstream" {
///   repository = "upstream"
///   domain     = testAwsCodeartifactDomain.domain
/// }
/// resource "aws_codeartifact_repository" "test" {
///   upstreams {
///     repository_name = aws_codeartifact_repository.upstream.repository
///   }
///   repository = "example"
///   domain     = example.domain
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
///         var upstream = new Repository("upstream", RepositoryArgs.builder()
///             .repository("upstream")
///             .domain(testAwsCodeartifactDomain.domain())
///             .build());
///
///         var test = new Repository("test", RepositoryArgs.builder()
///             .upstreams(RepositoryUpstreamArgs.builder()
///                 .repositoryName(upstream.repository())
///                 .build())
///             .repository("example")
///             .domain(example.domain())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   upstream:
///     type: aws:codeartifact:Repository
///     properties:
///       repository: upstream
///       domain: ${testAwsCodeartifactDomain.domain}
///   test:
///     type: aws:codeartifact:Repository
///     properties:
///       upstreams:
///         - repositoryName: ${upstream.repository}
///       repository: example
///       domain: ${example.domain}
/// ```
///
///
/// ### Example Usage with external connection
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const upstream = new aws.codeartifact.Repository("upstream", {
///     repository: "upstream",
///     domain: testAwsCodeartifactDomain.domain,
/// });
/// const test = new aws.codeartifact.Repository("test", {
///     externalConnections: {
///         externalConnectionName: "public:npmjs",
///     },
///     repository: "example",
///     domain: example.domain,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// upstream = aws.codeartifact.Repository("upstream",
///     repository="upstream",
///     domain=test_aws_codeartifact_domain["domain"])
/// test = aws.codeartifact.Repository("test",
///     external_connections={
///         "external_connection_name": "public:npmjs",
///     },
///     repository="example",
///     domain=example["domain"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var upstream = new Aws.CodeArtifact.Repository("upstream", new()
///     {
///         RepositoryName = "upstream",
///         Domain = testAwsCodeartifactDomain.Domain,
///     });
///
///     var test = new Aws.CodeArtifact.Repository("test", new()
///     {
///         ExternalConnections = new Aws.CodeArtifact.Inputs.RepositoryExternalConnectionsArgs
///         {
///             ExternalConnectionName = "public:npmjs",
///         },
///         RepositoryName = "example",
///         Domain = example.Domain,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codeartifact"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codeartifact.NewRepository(ctx, "upstream", &codeartifact.RepositoryArgs{
/// 			Repository: pulumi.String("upstream"),
/// 			Domain:     pulumi.Any(testAwsCodeartifactDomain.Domain),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = codeartifact.NewRepository(ctx, "test", &codeartifact.RepositoryArgs{
/// 			ExternalConnections: &codeartifact.RepositoryExternalConnectionsArgs{
/// 				ExternalConnectionName: pulumi.String("public:npmjs"),
/// 			},
/// 			Repository: pulumi.String("example"),
/// 			Domain:     pulumi.Any(example.Domain),
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
/// resource "aws_codeartifact_repository" "upstream" {
///   repository = "upstream"
///   domain     = testAwsCodeartifactDomain.domain
/// }
/// resource "aws_codeartifact_repository" "test" {
///   external_connections = {
///     external_connection_name = "public:npmjs"
///   }
///   repository = "example"
///   domain     = example.domain
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
///         var upstream = new Repository("upstream", RepositoryArgs.builder()
///             .repository("upstream")
///             .domain(testAwsCodeartifactDomain.domain())
///             .build());
///
///         var test = new Repository("test", RepositoryArgs.builder()
///             .externalConnections(RepositoryExternalConnectionsArgs.builder()
///                 .externalConnectionName("public:npmjs")
///                 .build())
///             .repository("example")
///             .domain(example.domain())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   upstream:
///     type: aws:codeartifact:Repository
///     properties:
///       repository: upstream
///       domain: ${testAwsCodeartifactDomain.domain}
///   test:
///     type: aws:codeartifact:Repository
///     properties:
///       externalConnections:
///         externalConnectionName: public:npmjs
///       repository: example
///       domain: ${example.domain}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the CodeArtifact repository.
///
///
/// Using `pulumi import`, import CodeArtifact Repository using the CodeArtifact Repository ARN. For example:
///
/// ```sh
/// $ pulumi import aws:codeartifact/repository:Repository example arn:aws:codeartifact:us-west-2:012345678912:repository/tf-acc-test-6968272603913957763/tf-acc-test-6968272603913957763
/// ```
class Repository extends pulumi.CustomResource {
  /// The account number of the AWS account that manages the repository.
  late final pulumi.Output<String> administratorAccount;
  /// The ARN of the repository.
  late final pulumi.Output<String> arn;
  /// The description of the repository.
  late final pulumi.Output<String?> description;
  /// The domain that contains the created repository.
  late final pulumi.Output<String> domain;
  /// The account number of the AWS account that owns the domain.
  late final pulumi.Output<String> domainOwner;
  /// An array of external connections associated with the repository. Only one external connection can be set per repository. see External Connections.
  late final pulumi.Output<RepositoryExternalConnections?> externalConnections;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The name of the repository to create.
  late final pulumi.Output<String> repository;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// A list of upstream repositories to associate with the repository. The order of the upstream repositories in the list determines their priority order when AWS CodeArtifact looks for a requested package version. see Upstream
  late final pulumi.Output<List<RepositoryUpstream>?> upstreams;

  /// Creates a new [Repository].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Repository]. {@macro pulumi_codeartifact_repository_repository_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Repository(
    String name, {
    RepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codeartifact/repository:Repository',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    administratorAccount = registerOutput<String>('administratorAccount');
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    domain = registerOutput<String>('domain');
    domainOwner = registerOutput<String>('domainOwner');
    externalConnections = registerOutput<RepositoryExternalConnections?>('externalConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryExternalConnections.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    repository = registerOutput<String>('repository');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    upstreams = registerOutput<List<RepositoryUpstream>?>('upstreams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RepositoryUpstream>(guardedValue, (value) => RepositoryUpstream.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Repository] resource's state with the given [name] and [id].
  static Repository get(
    String name,
    pulumi.Input<String> id, {
    RepositoryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Repository._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Repository._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codeartifact/repository:Repository',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administratorAccount = registerOutput<String>('administratorAccount');
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    domain = registerOutput<String>('domain');
    domainOwner = registerOutput<String>('domainOwner');
    externalConnections = registerOutput<RepositoryExternalConnections?>('externalConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryExternalConnections.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    repository = registerOutput<String>('repository');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    upstreams = registerOutput<List<RepositoryUpstream>?>('upstreams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RepositoryUpstream>(guardedValue, (value) => RepositoryUpstream.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Repository] resource.
  Repository.reference(String urn)
    : super(
        'aws:codeartifact/repository:Repository',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    administratorAccount = registerOutput<String>('administratorAccount');
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    domain = registerOutput<String>('domain');
    domainOwner = registerOutput<String>('domainOwner');
    externalConnections = registerOutput<RepositoryExternalConnections?>('externalConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryExternalConnections.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    repository = registerOutput<String>('repository');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    upstreams = registerOutput<List<RepositoryUpstream>?>('upstreams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RepositoryUpstream>(guardedValue, (value) => RepositoryUpstream.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
