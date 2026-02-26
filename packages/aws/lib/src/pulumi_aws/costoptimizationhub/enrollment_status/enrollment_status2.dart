import 'package:pulumi/pulumi.dart';
import 'enrollment_status_args2.dart';

/// Resource for managing AWS Cost Optimization Hub Enrollment Status.
///
/// > **TIP:** The Cost Optimization Hub only has a `us-east-1` endpoint. However, you can access the service globally with the AWS Provider from other regions. Other tools, such as the [AWS CLI](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/cost-optimization-hub/index.html), may require you to specify the `us-east-1` region when using the service.
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
/// const example = new aws.costoptimizationhub.EnrollmentStatus("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.costoptimizationhub.EnrollmentStatus("example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CostOptimizationHub.EnrollmentStatus("example");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/costoptimizationhub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := costoptimizationhub.NewEnrollmentStatus(ctx, "example", nil)
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
/// import com.pulumi.aws.costoptimizationhub.EnrollmentStatus;
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
/// var example = new EnrollmentStatus("example");
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:costoptimizationhub:EnrollmentStatus
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Usage with all the arguments
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.costoptimizationhub.EnrollmentStatus("example", {includeMemberAccounts: true});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.costoptimizationhub.EnrollmentStatus("example", include_member_accounts=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CostOptimizationHub.EnrollmentStatus("example", new()
/// {
/// IncludeMemberAccounts = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/costoptimizationhub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := costoptimizationhub.NewEnrollmentStatus(ctx, "example", &costoptimizationhub.EnrollmentStatusArgs{
/// IncludeMemberAccounts: pulumi.Bool(true),
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
/// import com.pulumi.aws.costoptimizationhub.EnrollmentStatus;
/// import com.pulumi.aws.costoptimizationhub.EnrollmentStatusArgs;
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
/// var example = new EnrollmentStatus("example", EnrollmentStatusArgs.builder()
/// .includeMemberAccounts(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:costoptimizationhub:EnrollmentStatus
/// properties:
/// includeMemberAccounts: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Cost Optimization Hub Enrollment Status using your AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:costoptimizationhub/enrollmentStatus:EnrollmentStatus example 111222333444
/// ```
class EnrollmentStatus2 extends CustomResource {
  /// Flag to enroll member accounts of the organization if the account is the management account. No drift detection is currently supported for this argument. Default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> includeMemberAccounts;

  /// Status of enrollment. When the resource is present in Terraform, its status will always be `Active`.
  late final Output<String> status;

  EnrollmentStatus2(
    String name, {
    EnrollmentStatusArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:costoptimizationhub/enrollmentStatus:EnrollmentStatus',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.includeMemberAccounts = registerOutput<bool>('includeMemberAccounts');
    this.status = registerOutput<String>('status');
  }
}
