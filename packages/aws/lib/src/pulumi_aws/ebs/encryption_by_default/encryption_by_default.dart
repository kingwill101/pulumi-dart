import 'package:pulumi/pulumi.dart';
import 'encryption_by_default_args.dart';

/// Provides a resource to manage whether default EBS encryption is enabled for your AWS account in the current AWS region. To manage the default KMS key for the region, see the <span pulumi-lang-nodejs="`aws.ebs.DefaultKmsKey`" pulumi-lang-dotnet="`aws.ebs.DefaultKmsKey`" pulumi-lang-go="`ebs.DefaultKmsKey`" pulumi-lang-python="`ebs.DefaultKmsKey`" pulumi-lang-yaml="`aws.ebs.DefaultKmsKey`" pulumi-lang-java="`aws.ebs.DefaultKmsKey`">`aws.ebs.DefaultKmsKey`</span> resource.
///
/// > **NOTE:** Removing this resource disables default EBS encryption.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ebs.EncryptionByDefault("example", {enabled: true});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ebs.EncryptionByDefault("example", enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ebs.EncryptionByDefault("example", new()
/// {
/// Enabled = true,
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
/// _, err := ebs.NewEncryptionByDefault(ctx, "example", &ebs.EncryptionByDefaultArgs{
/// Enabled: pulumi.Bool(true),
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
/// import com.pulumi.aws.ebs.EncryptionByDefault;
/// import com.pulumi.aws.ebs.EncryptionByDefaultArgs;
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
/// var example = new EncryptionByDefault("example", EncryptionByDefaultArgs.builder()
/// .enabled(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ebs:EncryptionByDefault
/// properties:
/// enabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import the default EBS encryption state. For example:
///
/// ```sh
/// $ pulumi import aws:ebs/encryptionByDefault:EncryptionByDefault example default
/// ```
class EncryptionByDefault extends CustomResource {
  /// Whether or not default EBS encryption is enabled. Valid values are <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  EncryptionByDefault(
    String name, {
    EncryptionByDefaultArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ebs/encryptionByDefault:EncryptionByDefault',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.enabled = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
  }
}
