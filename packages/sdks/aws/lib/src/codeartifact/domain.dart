import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_state.dart';

/// Provides a CodeArtifact Domain Resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codeartifact.Domain("example", {domain: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codeartifact.Domain("example", domain="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CodeArtifact.Domain("example", new()
///     {
///         DomainName = "example",
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
/// 		_, err := codeartifact.NewDomain(ctx, "example", &codeartifact.DomainArgs{
/// 			Domain: pulumi.String("example"),
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
/// import com.pulumi.aws.codeartifact.Domain;
/// import com.pulumi.aws.codeartifact.DomainArgs;
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
///         var example = new Domain("example", DomainArgs.builder()
///             .domain("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:codeartifact:Domain
///     properties:
///       domain: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeArtifact domain.
///
///
/// Using `pulumi import`, import CodeArtifact Domain using the CodeArtifact Domain arn. For example:
///
/// ```sh
/// $ pulumi import aws:codeartifact/domain:Domain example arn:aws:codeartifact:us-west-2:012345678912:domain/tf-acc-test-8593714120730241305
/// ```
class Domain extends pulumi.CustomResource {
  /// The ARN of the Domain.
  late final pulumi.Output<String> arn;
  /// The total size of all assets in the domain.
  late final pulumi.Output<String> assetSizeBytes;
  /// A timestamp that represents the date and time the domain was created in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final pulumi.Output<String> createdTime;
  /// The name of the domain to create. All domain names in an AWS Region that are in the same AWS account must be unique. The domain name is used as the prefix in DNS hostnames. Do not use sensitive information in a domain name because it is publicly discoverable.
  late final pulumi.Output<String> domain;
  /// The encryption key for the domain. This is used to encrypt content stored in a domain. The KMS Key Amazon Resource Name (ARN). The default aws/codeartifact AWS KMS master key is used if this element is absent.
  late final pulumi.Output<String> encryptionKey;
  /// The AWS account ID that owns the domain.
  late final pulumi.Output<String> owner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The number of repositories in the domain.
  late final pulumi.Output<int> repositoryCount;
  /// The ARN of the Amazon S3 bucket that is used to store package assets in the domain.
  late final pulumi.Output<String> s3BucketArn;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_codeartifact_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codeartifact/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assetSizeBytes = registerOutput<String>('assetSizeBytes');
    this.createdTime = registerOutput<String>('createdTime');
    this.domain = registerOutput<String>('domain');
    this.encryptionKey = registerOutput<String>('encryptionKey');
    this.owner = registerOutput<String>('owner');
    this.region = registerOutput<String>('region');
    this.repositoryCount = registerOutput<int>('repositoryCount');
    this.s3BucketArn = registerOutput<String>('s3BucketArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Domain] resource's state with the given [name] and [id].
  static Domain get(
    String name,
    pulumi.Input<String> id, {
    DomainState? state,
  }) {
    return Domain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Domain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codeartifact/domain:Domain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assetSizeBytes = registerOutput<String>('assetSizeBytes');
    this.createdTime = registerOutput<String>('createdTime');
    this.domain = registerOutput<String>('domain');
    this.encryptionKey = registerOutput<String>('encryptionKey');
    this.owner = registerOutput<String>('owner');
    this.region = registerOutput<String>('region');
    this.repositoryCount = registerOutput<int>('repositoryCount');
    this.s3BucketArn = registerOutput<String>('s3BucketArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
