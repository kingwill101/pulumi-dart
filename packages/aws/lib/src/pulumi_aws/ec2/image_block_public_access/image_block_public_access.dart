import 'package:pulumi/pulumi.dart';
import 'image_block_public_access_args.dart';

/// Provides a regional public access block for AMIs. This prevents AMIs from being made publicly accessible.
/// If you already have public AMIs, they will remain publicly available.
///
/// > **NOTE:** Deleting this resource does not change the block public access value, the resource in simply removed from state instead.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Prevent making AMIs publicly accessible in the region and account for which the provider is configured
/// const test = new aws.ec2.ImageBlockPublicAccess("test", {state: "block-new-sharing"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Prevent making AMIs publicly accessible in the region and account for which the provider is configured
/// test = aws.ec2.ImageBlockPublicAccess("test", state="block-new-sharing")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Prevent making AMIs publicly accessible in the region and account for which the provider is configured
/// var test = new Aws.Ec2.ImageBlockPublicAccess("test", new()
/// {
/// State = "block-new-sharing",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Prevent making AMIs publicly accessible in the region and account for which the provider is configured
/// _, err := ec2.NewImageBlockPublicAccess(ctx, "test", &ec2.ImageBlockPublicAccessArgs{
/// State: pulumi.String("block-new-sharing"),
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
/// import com.pulumi.aws.ec2.ImageBlockPublicAccess;
/// import com.pulumi.aws.ec2.ImageBlockPublicAccessArgs;
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
/// // Prevent making AMIs publicly accessible in the region and account for which the provider is configured
/// var test = new ImageBlockPublicAccess("test", ImageBlockPublicAccessArgs.builder()
/// .state("block-new-sharing")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Prevent making AMIs publicly accessible in the region and account for which the provider is configured
/// test:
/// type: aws:ec2:ImageBlockPublicAccess
/// properties:
/// state: block-new-sharing
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// You cannot import this resource.
class ImageBlockPublicAccess extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The state of block public access for AMIs at the account level in the configured AWS Region. Valid values: <span pulumi-lang-nodejs="`unblocked`" pulumi-lang-dotnet="`Unblocked`" pulumi-lang-go="`unblocked`" pulumi-lang-python="`unblocked`" pulumi-lang-yaml="`unblocked`" pulumi-lang-java="`unblocked`">`unblocked`</span> and `block-new-sharing`.
  late final Output<String> state;

  ImageBlockPublicAccess(
    String name, {
    ImageBlockPublicAccessArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/imageBlockPublicAccess:ImageBlockPublicAccess',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
  }
}
