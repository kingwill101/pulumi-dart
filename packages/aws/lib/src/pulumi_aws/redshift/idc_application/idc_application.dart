import 'package:pulumi/pulumi.dart';
import '../idc_application_authorized_token_issuer/idc_application_authorized_token_issuer.dart';
import '../idc_application_service_integration/idc_application_service_integration.dart';
import 'idc_application_args.dart';

/// Creates a new Amazon Redshift IDC application.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.IdcApplication("example", {
/// iamRoleArn: exampleAwsIamRole.arn,
/// idcDisplayName: "example",
/// idcInstanceArn: exampleAwsSsoadminInstances.arns[0],
/// identityNamespace: "example",
/// redshiftIdcApplicationName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.IdcApplication("example",
/// iam_role_arn=example_aws_iam_role["arn"],
/// idc_display_name="example",
/// idc_instance_arn=example_aws_ssoadmin_instances["arns"][0],
/// identity_namespace="example",
/// redshift_idc_application_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.RedShift.IdcApplication("example", new()
/// {
/// IamRoleArn = exampleAwsIamRole.Arn,
/// IdcDisplayName = "example",
/// IdcInstanceArn = exampleAwsSsoadminInstances.Arns[0],
/// IdentityNamespace = "example",
/// RedshiftIdcApplicationName = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redshift.NewIdcApplication(ctx, "example", &redshift.IdcApplicationArgs{
/// IamRoleArn:                 pulumi.Any(exampleAwsIamRole.Arn),
/// IdcDisplayName:             pulumi.String("example"),
/// IdcInstanceArn:             pulumi.Any(exampleAwsSsoadminInstances.Arns[0]),
/// IdentityNamespace:          pulumi.String("example"),
/// RedshiftIdcApplicationName: pulumi.String("example"),
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
/// import com.pulumi.aws.redshift.IdcApplication;
/// import com.pulumi.aws.redshift.IdcApplicationArgs;
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
/// var example = new IdcApplication("example", IdcApplicationArgs.builder()
/// .iamRoleArn(exampleAwsIamRole.arn())
/// .idcDisplayName("example")
/// .idcInstanceArn(exampleAwsSsoadminInstances.arns()[0])
/// .identityNamespace("example")
/// .redshiftIdcApplicationName("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:redshift:IdcApplication
/// properties:
/// iamRoleArn: ${exampleAwsIamRole.arn}
/// idcDisplayName: example
/// idcInstanceArn: ${exampleAwsSsoadminInstances.arns[0]}
/// identityNamespace: example
/// redshiftIdcApplicationName: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Redshift endpoint access using the <span pulumi-lang-nodejs="`redshiftIdcApplicationArn`" pulumi-lang-dotnet="`RedshiftIdcApplicationArn`" pulumi-lang-go="`redshiftIdcApplicationArn`" pulumi-lang-python="`redshift_idc_application_arn`" pulumi-lang-yaml="`redshiftIdcApplicationArn`" pulumi-lang-java="`redshiftIdcApplicationArn`">`redshift_idc_application_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/idcApplication:IdcApplication example example
/// ```
class IdcApplication extends CustomResource {
  /// Type of application being created. Valid values are `None` or `Lakehouse`.
  late final Output<String> applicationType;

  /// Token issuer list for the Amazon Redshift IAM Identity Center application instance. Refer to the<span pulumi-lang-nodejs=" authorizedTokenIssuer " pulumi-lang-dotnet=" AuthorizedTokenIssuer " pulumi-lang-go=" authorizedTokenIssuer " pulumi-lang-python=" authorized_token_issuer " pulumi-lang-yaml=" authorizedTokenIssuer " pulumi-lang-java=" authorizedTokenIssuer "> authorized_token_issuer </span>documentation for more details.
  late final Output<IdcApplicationAuthorizedTokenIssuer?> authorizedTokenIssuer;

  /// IAM role ARN for the Amazon Redshift IAM Identity Center application instance.
  late final Output<String> iamRoleArn;

  /// Display name for the Amazon Redshift IAM Identity Center application instance.
  late final Output<String> idcDisplayName;

  /// ARN of the IAM Identity Center instance where Amazon Redshift creates a new managed application.
  late final Output<String> idcInstanceArn;

  /// ARN for the Amazon Redshift IAM Identity Center application.
  late final Output<String> idcManagedApplicationArn;

  /// Namespace for the Amazon Redshift IAM Identity Center application instance.
  late final Output<String> identityNamespace;

  /// ARN of the Redshift application in IAM Identity Center.
  late final Output<String> redshiftIdcApplicationArn;

  /// Name of the Redshift application in IAM Identity Center.
  late final Output<String> redshiftIdcApplicationName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Collection of service integrations for the Redshift IAM Identity Center application. Refer to the<span pulumi-lang-nodejs=" serviceIntegration " pulumi-lang-dotnet=" ServiceIntegration " pulumi-lang-go=" serviceIntegration " pulumi-lang-python=" service_integration " pulumi-lang-yaml=" serviceIntegration " pulumi-lang-java=" serviceIntegration "> service_integration </span>documentation for more details.
  late final Output<IdcApplicationServiceIntegration?> serviceIntegration;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  IdcApplication(
    String name, {
    IdcApplicationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/idcApplication:IdcApplication',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationType = Output.createUnknown<String>();
    this.authorizedTokenIssuer =
        Output.createUnknown<IdcApplicationAuthorizedTokenIssuer?>();
    this.iamRoleArn = Output.createUnknown<String>();
    this.idcDisplayName = Output.createUnknown<String>();
    this.idcInstanceArn = Output.createUnknown<String>();
    this.idcManagedApplicationArn = Output.createUnknown<String>();
    this.identityNamespace = Output.createUnknown<String>();
    this.redshiftIdcApplicationArn = Output.createUnknown<String>();
    this.redshiftIdcApplicationName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.serviceIntegration =
        Output.createUnknown<IdcApplicationServiceIntegration?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
