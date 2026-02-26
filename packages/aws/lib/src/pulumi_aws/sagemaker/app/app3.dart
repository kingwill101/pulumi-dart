import 'package:pulumi/pulumi.dart';
import '../app_resource_spec/app_resource_spec.dart';
import 'app_args3.dart';

/// Provides a SageMaker AI App resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.App("example", {
/// domainId: exampleAwsSagemakerDomain.id,
/// userProfileName: exampleAwsSagemakerUserProfile.userProfileName,
/// appName: "example",
/// appType: "JupyterServer",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.App("example",
/// domain_id=example_aws_sagemaker_domain["id"],
/// user_profile_name=example_aws_sagemaker_user_profile["userProfileName"],
/// app_name="example",
/// app_type="JupyterServer")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Sagemaker.App("example", new()
/// {
/// DomainId = exampleAwsSagemakerDomain.Id,
/// UserProfileName = exampleAwsSagemakerUserProfile.UserProfileName,
/// AppName = "example",
/// AppType = "JupyterServer",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sagemaker.NewApp(ctx, "example", &sagemaker.AppArgs{
/// DomainId:        pulumi.Any(exampleAwsSagemakerDomain.Id),
/// UserProfileName: pulumi.Any(exampleAwsSagemakerUserProfile.UserProfileName),
/// AppName:         pulumi.String("example"),
/// AppType:         pulumi.String("JupyterServer"),
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
/// import com.pulumi.aws.sagemaker.App;
/// import com.pulumi.aws.sagemaker.AppArgs;
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
/// var example = new App("example", AppArgs.builder()
/// .domainId(exampleAwsSagemakerDomain.id())
/// .userProfileName(exampleAwsSagemakerUserProfile.userProfileName())
/// .appName("example")
/// .appType("JupyterServer")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sagemaker:App
/// properties:
/// domainId: ${exampleAwsSagemakerDomain.id}
/// userProfileName: ${exampleAwsSagemakerUserProfile.userProfileName}
/// appName: example
/// appType: JupyterServer
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Apps using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/app:App example arn:aws:sagemaker:us-west-2:012345678912:app/domain-id/user-profile-name/app-type/app-name
/// ```
class App3 extends CustomResource {
  /// The name of the app.
  late final Output<String> appName;

  /// The type of app. Valid values are `JupyterServer`, `KernelGateway`, `RStudioServerPro`, `RSessionGateway`, `TensorBoard`, `CodeEditor`, `JupyterLab`, `DetailedProfiler`, and `Canvas`.
  late final Output<String> appType;

  /// The Amazon Resource Name (ARN) of the app.
  late final Output<String> arn;

  /// The domain ID.
  late final Output<String> domainId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance.See Resource Spec below.
  late final Output<AppResourceSpec> resourceSpec;

  /// The name of the space. At least one of <span pulumi-lang-nodejs="`userProfileName`" pulumi-lang-dotnet="`UserProfileName`" pulumi-lang-go="`userProfileName`" pulumi-lang-python="`user_profile_name`" pulumi-lang-yaml="`userProfileName`" pulumi-lang-java="`userProfileName`">`user_profile_name`</span> or <span pulumi-lang-nodejs="`spaceName`" pulumi-lang-dotnet="`SpaceName`" pulumi-lang-go="`spaceName`" pulumi-lang-python="`space_name`" pulumi-lang-yaml="`spaceName`" pulumi-lang-java="`spaceName`">`space_name`</span> required.
  late final Output<String?> spaceName;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The user profile name. At least one of <span pulumi-lang-nodejs="`userProfileName`" pulumi-lang-dotnet="`UserProfileName`" pulumi-lang-go="`userProfileName`" pulumi-lang-python="`user_profile_name`" pulumi-lang-yaml="`userProfileName`" pulumi-lang-java="`userProfileName`">`user_profile_name`</span> or <span pulumi-lang-nodejs="`spaceName`" pulumi-lang-dotnet="`SpaceName`" pulumi-lang-go="`spaceName`" pulumi-lang-python="`space_name`" pulumi-lang-yaml="`spaceName`" pulumi-lang-java="`spaceName`">`space_name`</span> required.
  late final Output<String?> userProfileName;

  App3(
    String name, {
    AppArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/app:App',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appName = registerOutput<String>('appName');
    this.appType = registerOutput<String>('appType');
    this.arn = registerOutput<String>('arn');
    this.domainId = registerOutput<String>('domainId');
    this.region = registerOutput<String>('region');
    this.resourceSpec = registerOutput<AppResourceSpec>('resourceSpec');
    this.spaceName = registerOutput<String?>('spaceName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userProfileName = registerOutput<String?>('userProfileName');
  }
}
