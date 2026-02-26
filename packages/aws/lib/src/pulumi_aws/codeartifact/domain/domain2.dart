import 'package:pulumi/pulumi.dart';
import 'domain_args2.dart';

/// Provides a CodeArtifact Domain Resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.CodeArtifact.Domain("example", new()
/// {
/// DomainName = "example",
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
/// _, err := codeartifact.NewDomain(ctx, "example", &codeartifact.DomainArgs{
/// Domain: pulumi.String("example"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Domain("example", DomainArgs.builder()
/// .domain("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:codeartifact:Domain
/// properties:
/// domain: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the CodeArtifact domain.
///
///
/// Using `pulumi import`, import CodeArtifact Domain using the CodeArtifact Domain arn. For example:
///
/// ```sh
/// $ pulumi import aws:codeartifact/domain:Domain example arn:aws:codeartifact:us-west-2:012345678912:domain/tf-acc-test-8593714120730241305
/// ```
class Domain2 extends CustomResource {
  /// The ARN of the Domain.
  late final Output<String> arn;

  /// The total size of all assets in the domain.
  late final Output<String> assetSizeBytes;

  /// A timestamp that represents the date and time the domain was created in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final Output<String> createdTime;

  /// The name of the domain to create. All domain names in an AWS Region that are in the same AWS account must be unique. The domain name is used as the prefix in DNS hostnames. Do not use sensitive information in a domain name because it is publicly discoverable.
  late final Output<String> domain;

  /// The encryption key for the domain. This is used to encrypt content stored in a domain. The KMS Key Amazon Resource Name (ARN). The default aws/codeartifact AWS KMS master key is used if this element is absent.
  late final Output<String> encryptionKey;

  /// The AWS account ID that owns the domain.
  late final Output<String> owner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The number of repositories in the domain.
  late final Output<int> repositoryCount;

  /// The ARN of the Amazon S3 bucket that is used to store package assets in the domain.
  late final Output<String> s3BucketArn;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Domain2(
    String name, {
    DomainArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codeartifact/domain:Domain',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.assetSizeBytes = Output.createUnknown<String>();
    this.createdTime = Output.createUnknown<String>();
    this.domain = Output.createUnknown<String>();
    this.encryptionKey = Output.createUnknown<String>();
    this.owner = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.repositoryCount = Output.createUnknown<int>();
    this.s3BucketArn = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
