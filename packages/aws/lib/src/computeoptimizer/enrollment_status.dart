import 'package:pulumi/pulumi.dart' as pulumi;
import 'enrollment_status_args.dart';
import 'enrollment_status_timeouts.dart';

/// Manages AWS Compute Optimizer enrollment status.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.computeoptimizer.EnrollmentStatus("example", {status: "Active"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.computeoptimizer.EnrollmentStatus("example", status="Active")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ComputeOptimizer.EnrollmentStatus("example", new()
///     {
///         Status = "Active",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/computeoptimizer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := computeoptimizer.NewEnrollmentStatus(ctx, "example", &computeoptimizer.EnrollmentStatusArgs{
/// 			Status: pulumi.String("Active"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.computeoptimizer.EnrollmentStatus;
/// import com.pulumi.aws.computeoptimizer.EnrollmentStatusArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .status("Active")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:computeoptimizer:EnrollmentStatus
///     properties:
///       status: Active
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import enrollment status using the account ID. For example:
///
/// ```sh
/// $ pulumi import aws:computeoptimizer/enrollmentStatus:EnrollmentStatus example 123456789012
/// ```
class EnrollmentStatus extends pulumi.CustomResource {
  /// Whether to enroll member accounts of the organization if the account is the management account of an organization. Default is `false`.
  late final pulumi.Output<bool> includeMemberAccounts;
  /// The count of organization member accounts that are opted in to the service, if your account is an organization management account.
  late final pulumi.Output<int> numberOfMemberAccountsOptedIn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The enrollment status of the account. Valid values: `Active`, `Inactive`.
  late final pulumi.Output<String> status;
  late final pulumi.Output<EnrollmentStatusTimeouts?> timeouts;

  /// Creates a new [EnrollmentStatus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnrollmentStatus]. {@macro pulumi_computeoptimizer_enrollment_status_enrollment_status_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnrollmentStatus(
    String name, {
    EnrollmentStatusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:computeoptimizer/enrollmentStatus:EnrollmentStatus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.includeMemberAccounts = registerOutput<bool>('includeMemberAccounts');
    this.numberOfMemberAccountsOptedIn = registerOutput<int>('numberOfMemberAccountsOptedIn');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.timeouts = registerOutput<EnrollmentStatusTimeouts?>('timeouts');
  }
}
