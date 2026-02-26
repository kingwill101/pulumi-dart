import 'package:pulumi/pulumi.dart';
import '../organizations_access_timeouts/organizations_access_timeouts.dart';
import 'organizations_access_args.dart';

/// Resource for managing AWS User Notifications Organizations Access. This resource enables or disables organizations access for AWS User Notifications in AWS Organizations, allowing the service to access organization information.
///
/// > **NOTE:** This resource can only be used in the management account of an AWS Organization.
///
/// > **NOTE:** Deleting this resource will always disable organizations access for AWS User Notifications, regardless of the <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span> attribute value.
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
/// const example = new aws.notifications.OrganizationsAccess("example", {enabled: true});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.notifications.OrganizationsAccess("example", enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Notifications.OrganizationsAccess("example", new()
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/notifications"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := notifications.NewOrganizationsAccess(ctx, "example", &notifications.OrganizationsAccessArgs{
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
/// import com.pulumi.aws.notifications.OrganizationsAccess;
/// import com.pulumi.aws.notifications.OrganizationsAccessArgs;
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
/// var example = new OrganizationsAccess("example", OrganizationsAccessArgs.builder()
/// .enabled(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:notifications:OrganizationsAccess
/// properties:
/// enabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Organizations Access using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/organizationsAccess:OrganizationsAccess example 123456789012
/// ```
class OrganizationsAccess extends CustomResource {
  /// Whether to enable organizations access for AWS User Notifications in AWS Organizations. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, enables organizations access. When set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, disables organizations access.
  late final Output<bool> enabled;
  late final Output<OrganizationsAccessTimeouts?> timeouts;

  OrganizationsAccess(
    String name, {
    OrganizationsAccessArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:notifications/organizationsAccess:OrganizationsAccess',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.enabled = Output.createUnknown<bool>();
    this.timeouts = Output.createUnknown<OrganizationsAccessTimeouts?>();
  }
}
