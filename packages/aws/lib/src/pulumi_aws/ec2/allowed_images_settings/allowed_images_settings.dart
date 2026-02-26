import 'package:pulumi/pulumi.dart';
import '../allowed_images_settings_image_criterion/allowed_images_settings_image_criterion.dart';
import 'allowed_images_settings_args.dart';

/// Provides EC2 allowed images settings for an AWS account. This feature allows you to control which AMIs can be used to launch EC2 instances in your account based on specified criteria.
///
/// For more information about the image criteria that can be set, see the [AWS documentation on Allowed AMIs JSON configuration](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-allowed-amis.html#allowed-amis-json-configuration).
///
/// > **NOTE:** The AWS API does not delete this resource. When you run <span pulumi-lang-nodejs="`destroy`" pulumi-lang-dotnet="`Destroy`" pulumi-lang-go="`destroy`" pulumi-lang-python="`destroy`" pulumi-lang-yaml="`destroy`" pulumi-lang-java="`destroy`">`destroy`</span>, the provider will attempt to disable the setting.
///
/// > **NOTE:** There is only one allowed images settings configuration per AWS account and region. Creating this resource will configure the account-level settings.
///
/// ## Example Usage
///
/// ### Enable with Amazon AMIs only
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.AllowedImagesSettings("example", {
/// state: "enabled",
/// imageCriterions: [{
/// imageProviders: ["amazon"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.AllowedImagesSettings("example",
/// state="enabled",
/// image_criterions=[{
/// "image_providers": ["amazon"],
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
/// var example = new Aws.Ec2.AllowedImagesSettings("example", new()
/// {
/// State = "enabled",
/// ImageCriterions = new[]
/// {
/// new Aws.Ec2.Inputs.AllowedImagesSettingsImageCriterionArgs
/// {
/// ImageProviders = new[]
/// {
/// "amazon",
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewAllowedImagesSettings(ctx, "example", &ec2.AllowedImagesSettingsArgs{
/// State: pulumi.String("enabled"),
/// ImageCriterions: ec2.AllowedImagesSettingsImageCriterionArray{
/// &ec2.AllowedImagesSettingsImageCriterionArgs{
/// ImageProviders: pulumi.StringArray{
/// pulumi.String("amazon"),
/// },
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
/// import com.pulumi.aws.ec2.AllowedImagesSettings;
/// import com.pulumi.aws.ec2.AllowedImagesSettingsArgs;
/// import com.pulumi.aws.ec2.inputs.AllowedImagesSettingsImageCriterionArgs;
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
/// var example = new AllowedImagesSettings("example", AllowedImagesSettingsArgs.builder()
/// .state("enabled")
/// .imageCriterions(AllowedImagesSettingsImageCriterionArgs.builder()
/// .imageProviders("amazon")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:AllowedImagesSettings
/// properties:
/// state: enabled
/// imageCriterions:
/// - imageProviders:
/// - amazon
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Enable audit mode with specific account IDs
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.AllowedImagesSettings("example", {
/// state: "audit-mode",
/// imageCriterions: [{
/// imageProviders: [
/// "amazon",
/// "123456789012",
/// ],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.AllowedImagesSettings("example",
/// state="audit-mode",
/// image_criterions=[{
/// "image_providers": [
/// "amazon",
/// "123456789012",
/// ],
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
/// var example = new Aws.Ec2.AllowedImagesSettings("example", new()
/// {
/// State = "audit-mode",
/// ImageCriterions = new[]
/// {
/// new Aws.Ec2.Inputs.AllowedImagesSettingsImageCriterionArgs
/// {
/// ImageProviders = new[]
/// {
/// "amazon",
/// "123456789012",
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewAllowedImagesSettings(ctx, "example", &ec2.AllowedImagesSettingsArgs{
/// State: pulumi.String("audit-mode"),
/// ImageCriterions: ec2.AllowedImagesSettingsImageCriterionArray{
/// &ec2.AllowedImagesSettingsImageCriterionArgs{
/// ImageProviders: pulumi.StringArray{
/// pulumi.String("amazon"),
/// pulumi.String("123456789012"),
/// },
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
/// import com.pulumi.aws.ec2.AllowedImagesSettings;
/// import com.pulumi.aws.ec2.AllowedImagesSettingsArgs;
/// import com.pulumi.aws.ec2.inputs.AllowedImagesSettingsImageCriterionArgs;
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
/// var example = new AllowedImagesSettings("example", AllowedImagesSettingsArgs.builder()
/// .state("audit-mode")
/// .imageCriterions(AllowedImagesSettingsImageCriterionArgs.builder()
/// .imageProviders(
/// "amazon",
/// "123456789012")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:AllowedImagesSettings
/// properties:
/// state: audit-mode
/// imageCriterions:
/// - imageProviders:
/// - amazon
/// - '123456789012'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import EC2 allowed images settings. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/allowedImagesSettings:AllowedImagesSettings example us-east-1
/// ```
class AllowedImagesSettings extends CustomResource {
  /// List of image criteria. Maximum of 10 criterion blocks allowed. See <span pulumi-lang-nodejs="`imageCriterion`" pulumi-lang-dotnet="`ImageCriterion`" pulumi-lang-go="`imageCriterion`" pulumi-lang-python="`image_criterion`" pulumi-lang-yaml="`imageCriterion`" pulumi-lang-java="`imageCriterion`">`image_criterion`</span> below.
  late final Output<List<AllowedImagesSettingsImageCriterion>?> imageCriterions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// State of the allowed images settings. Valid values are <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span> or `audit-mode`.
  late final Output<String> state;

  AllowedImagesSettings(
    String name, {
    AllowedImagesSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/allowedImagesSettings:AllowedImagesSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.imageCriterions =
        Output.createUnknown<List<AllowedImagesSettingsImageCriterion>?>();
    this.region = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
  }
}
