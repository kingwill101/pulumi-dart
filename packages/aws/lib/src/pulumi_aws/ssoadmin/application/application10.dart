import 'package:pulumi/pulumi.dart';
import '../application_portal_options/application_portal_options.dart';
import 'application_args10.dart';

/// Resource for managing an AWS SSO Admin Application.
///
/// > The `CreateApplication` API only supports custom OAuth 2.0 applications.
/// Creation of 3rd party SAML or OAuth 2.0 applications require setup to be done through the associated app service or AWS console.
/// See this issue for additional context.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleApplication = new aws.ssoadmin.Application("example", {
/// name: "example",
/// applicationProviderArn: "arn:aws:sso::aws:applicationProvider/custom",
/// instanceArn: example.then(example => example.arns?.[0]),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_application = aws.ssoadmin.Application("example",
/// name="example",
/// application_provider_arn="arn:aws:sso::aws:applicationProvider/custom",
/// instance_arn=example.arns[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.SsoAdmin.GetInstances.Invoke();
///
/// var exampleApplication = new Aws.SsoAdmin.Application("example", new()
/// {
/// Name = "example",
/// ApplicationProviderArn = "arn:aws:sso::aws:applicationProvider/custom",
/// InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ssoadmin.NewApplication(ctx, "example", &ssoadmin.ApplicationArgs{
/// Name:                   pulumi.String("example"),
/// ApplicationProviderArn: pulumi.String("arn:aws:sso::aws:applicationProvider/custom"),
/// InstanceArn:            pulumi.String(example.Arns[0]),
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.Application;
/// import com.pulumi.aws.ssoadmin.ApplicationArgs;
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
/// final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
/// .build());
///
/// var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
/// .name("example")
/// .applicationProviderArn("arn:aws:sso::aws:applicationProvider/custom")
/// .instanceArn(example.arns()[0])
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleApplication:
/// type: aws:ssoadmin:Application
/// name: example
/// properties:
/// name: example
/// applicationProviderArn: arn:aws:sso::aws:applicationProvider/custom
/// instanceArn: ${example.arns[0]}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssoadmin:getInstances
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Portal Options
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleApplication = new aws.ssoadmin.Application("example", {
/// name: "example",
/// applicationProviderArn: "arn:aws:sso::aws:applicationProvider/custom",
/// instanceArn: example.then(example => example.arns?.[0]),
/// portalOptions: {
/// visibility: "ENABLED",
/// signInOptions: {
/// applicationUrl: "http://example.com",
/// origin: "APPLICATION",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_application = aws.ssoadmin.Application("example",
/// name="example",
/// application_provider_arn="arn:aws:sso::aws:applicationProvider/custom",
/// instance_arn=example.arns[0],
/// portal_options={
/// "visibility": "ENABLED",
/// "sign_in_options": {
/// "application_url": "http://example.com",
/// "origin": "APPLICATION",
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.SsoAdmin.GetInstances.Invoke();
///
/// var exampleApplication = new Aws.SsoAdmin.Application("example", new()
/// {
/// Name = "example",
/// ApplicationProviderArn = "arn:aws:sso::aws:applicationProvider/custom",
/// InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
/// PortalOptions = new Aws.SsoAdmin.Inputs.ApplicationPortalOptionsArgs
/// {
/// Visibility = "ENABLED",
/// SignInOptions = new Aws.SsoAdmin.Inputs.ApplicationPortalOptionsSignInOptionsArgs
/// {
/// ApplicationUrl = "http://example.com",
/// Origin = "APPLICATION",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ssoadmin.NewApplication(ctx, "example", &ssoadmin.ApplicationArgs{
/// Name:                   pulumi.String("example"),
/// ApplicationProviderArn: pulumi.String("arn:aws:sso::aws:applicationProvider/custom"),
/// InstanceArn:            pulumi.String(example.Arns[0]),
/// PortalOptions: &ssoadmin.ApplicationPortalOptionsArgs{
/// Visibility: pulumi.String("ENABLED"),
/// SignInOptions: &ssoadmin.ApplicationPortalOptionsSignInOptionsArgs{
/// ApplicationUrl: pulumi.String("http://example.com"),
/// Origin:         pulumi.String("APPLICATION"),
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.Application;
/// import com.pulumi.aws.ssoadmin.ApplicationArgs;
/// import com.pulumi.aws.ssoadmin.inputs.ApplicationPortalOptionsArgs;
/// import com.pulumi.aws.ssoadmin.inputs.ApplicationPortalOptionsSignInOptionsArgs;
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
/// final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
/// .build());
///
/// var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
/// .name("example")
/// .applicationProviderArn("arn:aws:sso::aws:applicationProvider/custom")
/// .instanceArn(example.arns()[0])
/// .portalOptions(ApplicationPortalOptionsArgs.builder()
/// .visibility("ENABLED")
/// .signInOptions(ApplicationPortalOptionsSignInOptionsArgs.builder()
/// .applicationUrl("http://example.com")
/// .origin("APPLICATION")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleApplication:
/// type: aws:ssoadmin:Application
/// name: example
/// properties:
/// name: example
/// applicationProviderArn: arn:aws:sso::aws:applicationProvider/custom
/// instanceArn: ${example.arns[0]}
/// portalOptions:
/// visibility: ENABLED
/// signInOptions:
/// applicationUrl: http://example.com
/// origin: APPLICATION
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssoadmin:getInstances
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the SSO application.
///
///
/// Using `pulumi import`, import SSO Admin Application using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/application:Application example arn:aws:sso::123456789012:application/id-12345678
/// ```
class Application10 extends CustomResource {
  /// AWS account ID.
  late final Output<String> applicationAccount;

  /// (**Deprecated** Reference <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> instead) ARN of the application.
  late final Output<String> applicationArn;

  /// ARN of the application provider.
  late final Output<String> applicationProviderArn;

  /// ARN of the application.
  late final Output<String> arn;

  /// A unique, case-sensitive ID that you provide to ensure the idempotency of the request. AWS generates a random value when not provided.
  late final Output<String?> clientToken;

  /// Description of the application.
  late final Output<String?> description;

  /// ARN of the instance of IAM Identity Center.
  late final Output<String> instanceArn;

  /// Name of the application.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Options for the portal associated with an application. See <span pulumi-lang-nodejs="`portalOptions`" pulumi-lang-dotnet="`PortalOptions`" pulumi-lang-go="`portalOptions`" pulumi-lang-python="`portal_options`" pulumi-lang-yaml="`portalOptions`" pulumi-lang-java="`portalOptions`">`portal_options`</span> below.
  late final Output<ApplicationPortalOptions?> portalOptions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Status of the application. Valid values are `ENABLED` and `DISABLED`.
  late final Output<String> status;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Application10(
    String name, {
    ApplicationArgs10? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/application:Application',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationAccount = Output.createUnknown<String>();
    this.applicationArn = Output.createUnknown<String>();
    this.applicationProviderArn = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.clientToken = Output.createUnknown<String?>();
    this.description = Output.createUnknown<String?>();
    this.instanceArn = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.portalOptions = Output.createUnknown<ApplicationPortalOptions?>();
    this.region = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
