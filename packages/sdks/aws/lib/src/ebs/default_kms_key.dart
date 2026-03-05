import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_kms_key_args.dart';
import 'default_kms_key_state.dart';

/// Provides a resource to manage the default customer master key (CMK) that your AWS account uses to encrypt EBS volumes.
///
/// Your AWS account has an AWS-managed default CMK that is used for encrypting an EBS volume when no CMK is specified in the API call that creates the volume.
/// By using the `aws.ebs.DefaultKmsKey` resource, you can specify a customer-managed CMK to use in place of the AWS-managed default CMK.
///
/// &gt; **NOTE:** Creating an `aws.ebs.DefaultKmsKey` resource does not enable default EBS encryption. Use the `aws.ebs.EncryptionByDefault` to enable default EBS encryption.
///
/// &gt; **NOTE:** Destroying this resource will reset the default CMK to the account's AWS-managed default CMK for EBS.
///
/// ## Example Usage
///
///
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
///     var example = new Aws.Ebs.DefaultKmsKey("example", new()
///     {
///         KeyArn = exampleAwsKmsKey.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ebs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ebs.NewDefaultKmsKey(ctx, "example", &ebs.DefaultKmsKeyArgs{
/// 			KeyArn: pulumi.Any(exampleAwsKmsKey.Arn),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new DefaultKmsKey("example", DefaultKmsKeyArgs.builder()
///             .keyArn(exampleAwsKmsKey.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ebs:DefaultKmsKey
///     properties:
///       keyArn: ${exampleAwsKmsKey.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import the EBS default KMS CMK using the KMS key ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ebs/defaultKmsKey:DefaultKmsKey example arn:aws:kms:us-east-1:123456789012:key/abcd-1234
/// ```
class DefaultKmsKey extends pulumi.CustomResource {
  /// The ARN of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use to encrypt the EBS volume.
  late final pulumi.Output<String> keyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [DefaultKmsKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultKmsKey]. {@macro pulumi_ebs_default_kms_key_default_kms_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultKmsKey(
    String name, {
    DefaultKmsKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ebs/defaultKmsKey:DefaultKmsKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    keyArn = registerOutput<String>('keyArn');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [DefaultKmsKey] resource's state with the given [name] and [id].
  static DefaultKmsKey get(
    String name,
    pulumi.Input<String> id, {
    DefaultKmsKeyState? state,
  }) {
    return DefaultKmsKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DefaultKmsKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ebs/defaultKmsKey:DefaultKmsKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    keyArn = registerOutput<String>('keyArn');
    region = registerOutput<String>('region');
  }
}
