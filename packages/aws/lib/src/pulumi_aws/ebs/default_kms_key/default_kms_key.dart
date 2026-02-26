import 'package:pulumi/pulumi.dart';
import 'default_kms_key_args.dart';

/// Provides a resource to manage the default customer master key (CMK) that your AWS account uses to encrypt EBS volumes.
///
/// Your AWS account has an AWS-managed default CMK that is used for encrypting an EBS volume when no CMK is specified in the API call that creates the volume.
/// By using the <span pulumi-lang-nodejs="`aws.ebs.DefaultKmsKey`" pulumi-lang-dotnet="`aws.ebs.DefaultKmsKey`" pulumi-lang-go="`ebs.DefaultKmsKey`" pulumi-lang-python="`ebs.DefaultKmsKey`" pulumi-lang-yaml="`aws.ebs.DefaultKmsKey`" pulumi-lang-java="`aws.ebs.DefaultKmsKey`">`aws.ebs.DefaultKmsKey`</span> resource, you can specify a customer-managed CMK to use in place of the AWS-managed default CMK.
///
/// > **NOTE:** Creating an <span pulumi-lang-nodejs="`aws.ebs.DefaultKmsKey`" pulumi-lang-dotnet="`aws.ebs.DefaultKmsKey`" pulumi-lang-go="`ebs.DefaultKmsKey`" pulumi-lang-python="`ebs.DefaultKmsKey`" pulumi-lang-yaml="`aws.ebs.DefaultKmsKey`" pulumi-lang-java="`aws.ebs.DefaultKmsKey`">`aws.ebs.DefaultKmsKey`</span> resource does not enable default EBS encryption. Use the <span pulumi-lang-nodejs="`aws.ebs.EncryptionByDefault`" pulumi-lang-dotnet="`aws.ebs.EncryptionByDefault`" pulumi-lang-go="`ebs.EncryptionByDefault`" pulumi-lang-python="`ebs.EncryptionByDefault`" pulumi-lang-yaml="`aws.ebs.EncryptionByDefault`" pulumi-lang-java="`aws.ebs.EncryptionByDefault`">`aws.ebs.EncryptionByDefault`</span> to enable default EBS encryption.
///
/// > **NOTE:** Destroying this resource will reset the default CMK to the account's AWS-managed default CMK for EBS.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ebs.DefaultKmsKey("example", {keyArn: exampleAwsKmsKey.arn});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ebs.DefaultKmsKey("example", key_arn=example_aws_kms_key["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ebs.DefaultKmsKey("example", new()
/// {
/// KeyArn = exampleAwsKmsKey.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ebs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ebs.NewDefaultKmsKey(ctx, "example", &ebs.DefaultKmsKeyArgs{
/// KeyArn: pulumi.Any(exampleAwsKmsKey.Arn),
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
/// import com.pulumi.aws.ebs.DefaultKmsKey;
/// import com.pulumi.aws.ebs.DefaultKmsKeyArgs;
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
/// var example = new DefaultKmsKey("example", DefaultKmsKeyArgs.builder()
/// .keyArn(exampleAwsKmsKey.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ebs:DefaultKmsKey
/// properties:
/// keyArn: ${exampleAwsKmsKey.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import the EBS default KMS CMK using the KMS key ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ebs/defaultKmsKey:DefaultKmsKey example arn:aws:kms:us-east-1:123456789012:key/abcd-1234
/// ```
class DefaultKmsKey extends CustomResource {
  /// The ARN of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use to encrypt the EBS volume.
  late final Output<String> keyArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  DefaultKmsKey(
    String name, {
    DefaultKmsKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ebs/defaultKmsKey:DefaultKmsKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.keyArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
