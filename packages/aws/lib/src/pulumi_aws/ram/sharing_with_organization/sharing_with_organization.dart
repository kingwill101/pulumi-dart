import 'package:pulumi/pulumi.dart';

/// Manages Resource Access Manager (RAM) Resource Sharing with AWS Organizations. If you enable sharing with your organization, you can share resources without using invitations. Refer to the [AWS RAM user guide](https://docs.aws.amazon.com/ram/latest/userguide/getting-started-sharing.html#getting-started-sharing-orgs) for more details.
///
/// > **NOTE:** Use this resource to manage resource sharing within your organization, **not** the <span pulumi-lang-nodejs="`aws.organizations.Organization`" pulumi-lang-dotnet="`aws.organizations.Organization`" pulumi-lang-go="`organizations.Organization`" pulumi-lang-python="`organizations.Organization`" pulumi-lang-yaml="`aws.organizations.Organization`" pulumi-lang-java="`aws.organizations.Organization`">`aws.organizations.Organization`</span> resource with `ram.amazonaws.com` configured in <span pulumi-lang-nodejs="`awsServiceAccessPrincipals`" pulumi-lang-dotnet="`AwsServiceAccessPrincipals`" pulumi-lang-go="`awsServiceAccessPrincipals`" pulumi-lang-python="`aws_service_access_principals`" pulumi-lang-yaml="`awsServiceAccessPrincipals`" pulumi-lang-java="`awsServiceAccessPrincipals`">`aws_service_access_principals`</span>.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ram.SharingWithOrganization("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ram.SharingWithOrganization("example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ram.SharingWithOrganization("example");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ram"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ram.NewSharingWithOrganization(ctx, "example", nil)
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
/// import com.pulumi.aws.ram.SharingWithOrganization;
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
/// var example = new SharingWithOrganization("example");
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ram:SharingWithOrganization
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import the resource using the current AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:ram/sharingWithOrganization:SharingWithOrganization example 123456789012
/// ```
class SharingWithOrganization extends CustomResource {
  SharingWithOrganization(
    String name, {
    Map<String, dynamic>? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ram/sharingWithOrganization:SharingWithOrganization',
          name,
          Input.mapToInputs(args ?? const {}),
          options ?? CustomResourceOptions(),
        );
}
