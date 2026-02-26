import 'package:pulumi/pulumi.dart';
import 'account_public_access_block_args.dart';

/// Manages S3 account-level Public Access Block configuration. For more information about these settings, see the [AWS S3 Block Public Access documentation](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html).
///
/// > **NOTE:** Each AWS account may only have one S3 Public Access Block configuration. Multiple configurations of the resource against the same AWS account will cause a perpetual difference.
///
/// > Advanced usage: To use a custom API endpoint for this resource, use the <span pulumi-lang-nodejs="`s3control`" pulumi-lang-dotnet="`S3control`" pulumi-lang-go="`s3control`" pulumi-lang-python="`s3control`" pulumi-lang-yaml="`s3control`" pulumi-lang-java="`s3control`">`s3control`</span> endpoint provider configuration, not the <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span> endpoint provider configuration.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.AccountPublicAccessBlock("example", {
/// blockPublicAcls: true,
/// blockPublicPolicy: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.AccountPublicAccessBlock("example",
/// block_public_acls=True,
/// block_public_policy=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.S3.AccountPublicAccessBlock("example", new()
/// {
/// BlockPublicAcls = true,
/// BlockPublicPolicy = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := s3.NewAccountPublicAccessBlock(ctx, "example", &s3.AccountPublicAccessBlockArgs{
/// BlockPublicAcls:   pulumi.Bool(true),
/// BlockPublicPolicy: pulumi.Bool(true),
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
/// import com.pulumi.aws.s3.AccountPublicAccessBlock;
/// import com.pulumi.aws.s3.AccountPublicAccessBlockArgs;
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
/// var example = new AccountPublicAccessBlock("example", AccountPublicAccessBlockArgs.builder()
/// .blockPublicAcls(true)
/// .blockPublicPolicy(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:AccountPublicAccessBlock
/// properties:
/// blockPublicAcls: true
/// blockPublicPolicy: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.s3.AccountPublicAccessBlock`" pulumi-lang-dotnet="`aws.s3.AccountPublicAccessBlock`" pulumi-lang-go="`s3.AccountPublicAccessBlock`" pulumi-lang-python="`s3.AccountPublicAccessBlock`" pulumi-lang-yaml="`aws.s3.AccountPublicAccessBlock`" pulumi-lang-java="`aws.s3.AccountPublicAccessBlock`">`aws.s3.AccountPublicAccessBlock`</span> using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:s3/accountPublicAccessBlock:AccountPublicAccessBlock example 123456789012
/// ```
class AccountPublicAccessBlock extends CustomResource {
  /// AWS account ID to configure. Defaults to automatically determined account ID of the this provider AWS provider.
  late final Output<String> accountId;

  /// Whether Amazon S3 should block public ACLs for buckets in this account. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Enabling this setting does not affect existing policies or ACLs. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> causes the following behavior:
  /// * PUT Bucket acl and PUT Object acl calls will fail if the specified ACL allows public access.
  /// * PUT Object calls fail if the request includes a public ACL.
  late final Output<bool?> blockPublicAcls;

  /// Whether Amazon S3 should block public bucket policies for buckets in this account. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Enabling this setting does not affect existing bucket policies. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> causes Amazon S3 to:
  /// * Reject calls to PUT Bucket policy if the specified bucket policy allows public access.
  late final Output<bool?> blockPublicPolicy;

  /// Whether Amazon S3 should ignore public ACLs for buckets in this account. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Enabling this setting does not affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> causes Amazon S3 to:
  /// * Ignore all public ACLs on buckets in this account and any objects that they contain.
  late final Output<bool?> ignorePublicAcls;

  /// Whether Amazon S3 should restrict public bucket policies for buckets in this account. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Enabling this setting does not affect previously stored bucket policies, except that public and cross-account access within any public bucket policy, including non-public delegation to specific accounts, is blocked. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>:
  /// * Only the bucket owner and AWS Services can access buckets with public policies.
  late final Output<bool?> restrictPublicBuckets;

  AccountPublicAccessBlock(
    String name, {
    AccountPublicAccessBlockArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/accountPublicAccessBlock:AccountPublicAccessBlock',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.blockPublicAcls = registerOutput<bool?>('blockPublicAcls');
    this.blockPublicPolicy = registerOutput<bool?>('blockPublicPolicy');
    this.ignorePublicAcls = registerOutput<bool?>('ignorePublicAcls');
    this.restrictPublicBuckets = registerOutput<bool?>('restrictPublicBuckets');
  }
}
