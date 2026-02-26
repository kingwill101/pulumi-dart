import 'package:pulumi/pulumi.dart';
import 'ami_launch_permission_args.dart';

/// Adds a launch permission to an Amazon Machine Image (AMI).
///
/// ## Example Usage
///
/// ### AWS Account ID
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.AmiLaunchPermission("example", {
/// imageId: "ami-12345678",
/// accountId: "123456789012",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.AmiLaunchPermission("example",
/// image_id="ami-12345678",
/// account_id="123456789012")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.AmiLaunchPermission("example", new()
/// {
/// ImageId = "ami-12345678",
/// AccountId = "123456789012",
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
/// _, err := ec2.NewAmiLaunchPermission(ctx, "example", &ec2.AmiLaunchPermissionArgs{
/// ImageId:   pulumi.String("ami-12345678"),
/// AccountId: pulumi.String("123456789012"),
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
/// import com.pulumi.aws.ec2.AmiLaunchPermission;
/// import com.pulumi.aws.ec2.AmiLaunchPermissionArgs;
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
/// var example = new AmiLaunchPermission("example", AmiLaunchPermissionArgs.builder()
/// .imageId("ami-12345678")
/// .accountId("123456789012")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:AmiLaunchPermission
/// properties:
/// imageId: ami-12345678
/// accountId: '123456789012'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Public Access
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.AmiLaunchPermission("example", {
/// imageId: "ami-12345678",
/// group: "all",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.AmiLaunchPermission("example",
/// image_id="ami-12345678",
/// group="all")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.AmiLaunchPermission("example", new()
/// {
/// ImageId = "ami-12345678",
/// Group = "all",
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
/// _, err := ec2.NewAmiLaunchPermission(ctx, "example", &ec2.AmiLaunchPermissionArgs{
/// ImageId: pulumi.String("ami-12345678"),
/// Group:   pulumi.String("all"),
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
/// import com.pulumi.aws.ec2.AmiLaunchPermission;
/// import com.pulumi.aws.ec2.AmiLaunchPermissionArgs;
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
/// var example = new AmiLaunchPermission("example", AmiLaunchPermissionArgs.builder()
/// .imageId("ami-12345678")
/// .group("all")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:AmiLaunchPermission
/// properties:
/// imageId: ami-12345678
/// group: all
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Organization Access
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.organizations.getOrganization({});
/// const example = new aws.ec2.AmiLaunchPermission("example", {
/// imageId: "ami-12345678",
/// organizationArn: current.then(current => current.arn),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.organizations.get_organization()
/// example = aws.ec2.AmiLaunchPermission("example",
/// image_id="ami-12345678",
/// organization_arn=current.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.Organizations.GetOrganization.Invoke();
///
/// var example = new Aws.Ec2.AmiLaunchPermission("example", new()
/// {
/// ImageId = "ami-12345678",
/// OrganizationArn = current.Apply(getOrganizationResult => getOrganizationResult.Arn),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := organizations.LookupOrganization(ctx, &organizations.LookupOrganizationArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewAmiLaunchPermission(ctx, "example", &ec2.AmiLaunchPermissionArgs{
/// ImageId:         pulumi.String("ami-12345678"),
/// OrganizationArn: pulumi.String(current.Arn),
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
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetOrganizationArgs;
/// import com.pulumi.aws.ec2.AmiLaunchPermission;
/// import com.pulumi.aws.ec2.AmiLaunchPermissionArgs;
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
/// final var current = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
/// .build());
///
/// var example = new AmiLaunchPermission("example", AmiLaunchPermissionArgs.builder()
/// .imageId("ami-12345678")
/// .organizationArn(current.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:AmiLaunchPermission
/// properties:
/// imageId: ami-12345678
/// organizationArn: ${current.arn}
/// variables:
/// current:
/// fn::invoke:
/// function: aws:organizations:getOrganization
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AMI Launch Permissions using `[ACCOUNT-ID|GROUP-NAME|ORGANIZATION-ARN|ORGANIZATIONAL-UNIT-ARN]/IMAGE-ID`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/amiLaunchPermission:AmiLaunchPermission example 123456789012/ami-12345678
/// ```
class AmiLaunchPermission extends CustomResource {
  /// AWS account ID for the launch permission.
  late final Output<String?> accountId;

  /// Name of the group for the launch permission. Valid values: `"all"`.
  late final Output<String?> group;

  /// ID of the AMI.
  late final Output<String> imageId;

  /// ARN of an organization for the launch permission.
  late final Output<String?> organizationArn;

  /// ARN of an organizational unit for the launch permission.
  late final Output<String?> organizationalUnitArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  AmiLaunchPermission(
    String name, {
    AmiLaunchPermissionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/amiLaunchPermission:AmiLaunchPermission',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = Output.createUnknown<String?>();
    this.group = Output.createUnknown<String?>();
    this.imageId = Output.createUnknown<String>();
    this.organizationArn = Output.createUnknown<String?>();
    this.organizationalUnitArn = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
  }
}
