import 'package:pulumi/pulumi.dart';
import 'application_access_scope_args.dart';

/// Resource for managing an AWS SSO Admin Application Access Scope.
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
/// const exampleApplicationAccessScope = new aws.ssoadmin.ApplicationAccessScope("example", {
/// applicationArn: exampleApplication.arn,
/// authorizedTargets: ["arn:aws:sso::123456789012:application/ssoins-123456789012/apl-123456789012"],
/// scope: "sso:account:access",
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
/// example_application_access_scope = aws.ssoadmin.ApplicationAccessScope("example",
/// application_arn=example_application.arn,
/// authorized_targets=["arn:aws:sso::123456789012:application/ssoins-123456789012/apl-123456789012"],
/// scope="sso:account:access")
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
/// var exampleApplicationAccessScope = new Aws.SsoAdmin.ApplicationAccessScope("example", new()
/// {
/// ApplicationArn = exampleApplication.Arn,
/// AuthorizedTargets = new[]
/// {
/// "arn:aws:sso::123456789012:application/ssoins-123456789012/apl-123456789012",
/// },
/// Scope = "sso:account:access",
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
/// exampleApplication, err := ssoadmin.NewApplication(ctx, "example", &ssoadmin.ApplicationArgs{
/// Name:                   pulumi.String("example"),
/// ApplicationProviderArn: pulumi.String("arn:aws:sso::aws:applicationProvider/custom"),
/// InstanceArn:            pulumi.String(example.Arns[0]),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ssoadmin.NewApplicationAccessScope(ctx, "example", &ssoadmin.ApplicationAccessScopeArgs{
/// ApplicationArn: exampleApplication.Arn,
/// AuthorizedTargets: pulumi.StringArray{
/// pulumi.String("arn:aws:sso::123456789012:application/ssoins-123456789012/apl-123456789012"),
/// },
/// Scope: pulumi.String("sso:account:access"),
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
/// import com.pulumi.aws.ssoadmin.ApplicationAccessScope;
/// import com.pulumi.aws.ssoadmin.ApplicationAccessScopeArgs;
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
/// var exampleApplicationAccessScope = new ApplicationAccessScope("exampleApplicationAccessScope", ApplicationAccessScopeArgs.builder()
/// .applicationArn(exampleApplication.arn())
/// .authorizedTargets("arn:aws:sso::123456789012:application/ssoins-123456789012/apl-123456789012")
/// .scope("sso:account:access")
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
/// exampleApplicationAccessScope:
/// type: aws:ssoadmin:ApplicationAccessScope
/// name: example
/// properties:
/// applicationArn: ${exampleApplication.arn}
/// authorizedTargets:
/// - arn:aws:sso::123456789012:application/ssoins-123456789012/apl-123456789012
/// scope: sso:account:access
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
/// Using `pulumi import`, import SSO Admin Application Access Scope using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/applicationAccessScope:ApplicationAccessScope example arn:aws:sso::123456789012:application/ssoins-123456789012/apl-123456789012,sso:account:access
/// ```
class ApplicationAccessScope extends CustomResource {
  /// Specifies the ARN of the application with the access scope with the targets to add or update.
  late final Output<String> applicationArn;

  /// Specifies an array list of ARNs that represent the authorized targets for this access scope.
  late final Output<List<String>?> authorizedTargets;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the name of the access scope to be associated with the specified targets.
  ///
  /// The following arguments are optional:
  late final Output<String> scope;

  ApplicationAccessScope(
    String name, {
    ApplicationAccessScopeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/applicationAccessScope:ApplicationAccessScope',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationArn = Output.createUnknown<String>();
    this.authorizedTargets = Output.createUnknown<List<String>?>();
    this.region = Output.createUnknown<String>();
    this.scope = Output.createUnknown<String>();
  }
}
