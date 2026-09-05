import 'package:pulumi/pulumi.dart' as pulumi;
import 'enrollment_status_args.dart';
import 'enrollment_status_state.dart';

/// Resource for managing AWS Cost Optimization Hub Enrollment Status.
///
/// &gt; **TIP:** The Cost Optimization Hub only has a `us-east-1` endpoint. However, you can access the service globally with the AWS Provider from other regions. Other tools, such as the [AWS CLI](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/cost-optimization-hub/index.html), may require you to specify the `us-east-1` region when using the service.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
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
///     var example = new Aws.CostOptimizationHub.EnrollmentStatus("example");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/costoptimizationhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costoptimizationhub.NewEnrollmentStatus(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_costoptimizationhub_enrollmentstatus" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.costoptimizationhub.EnrollmentStatus;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new EnrollmentStatus("example");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:costoptimizationhub:EnrollmentStatus
/// ```
///
///
/// ### Usage with all the arguments
///
///
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
///     var example = new Aws.CostOptimizationHub.EnrollmentStatus("example", new()
///     {
///         IncludeMemberAccounts = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/costoptimizationhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costoptimizationhub.NewEnrollmentStatus(ctx, "example", &costoptimizationhub.EnrollmentStatusArgs{
/// 			IncludeMemberAccounts: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_costoptimizationhub_enrollmentstatus" "example" {
///   include_member_accounts = true
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new EnrollmentStatus("example", EnrollmentStatusArgs.builder()
///             .includeMemberAccounts(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:costoptimizationhub:EnrollmentStatus
///     properties:
///       includeMemberAccounts: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cost Optimization Hub Enrollment Status using your AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:costoptimizationhub/enrollmentStatus:EnrollmentStatus example 111222333444
/// ```
class EnrollmentStatus extends pulumi.CustomResource {
  /// Flag to enroll member accounts of the organization if the account is the management account. No drift detection is currently supported for this argument. Default value is `false`.
  late final pulumi.Output<bool> includeMemberAccounts;
  /// Status of enrollment. When the resource is present in Terraform, its status will always be `Active`.
  late final pulumi.Output<String> status;

  /// Creates a new [EnrollmentStatus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnrollmentStatus]. {@macro pulumi_costoptimizationhub_enrollment_status_enrollment_status_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnrollmentStatus(
    String name, {
    EnrollmentStatusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:costoptimizationhub/enrollmentStatus:EnrollmentStatus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    includeMemberAccounts = registerOutput<bool>('includeMemberAccounts');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [EnrollmentStatus] resource's state with the given [name] and [id].
  static EnrollmentStatus get(
    String name,
    pulumi.Input<String> id, {
    EnrollmentStatusState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EnrollmentStatus._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EnrollmentStatus._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:costoptimizationhub/enrollmentStatus:EnrollmentStatus',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    includeMemberAccounts = registerOutput<bool>('includeMemberAccounts');
    status = registerOutput<String>('status');
  }

  /// Creates a typed reference to an existing [EnrollmentStatus] resource.
  EnrollmentStatus.reference(String urn)
    : super(
        'aws:costoptimizationhub/enrollmentStatus:EnrollmentStatus',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    includeMemberAccounts = registerOutput<bool>('includeMemberAccounts');
    status = registerOutput<String>('status');
  }
}
