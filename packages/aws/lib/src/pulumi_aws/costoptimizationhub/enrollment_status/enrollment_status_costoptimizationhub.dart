import 'package:pulumi/pulumi.dart' as pulumi;
import 'enrollment_status_costoptimizationhub_args.dart';

/// Resource for managing AWS Cost Optimization Hub Enrollment Status.
///
/// > **TIP:** The Cost Optimization Hub only has a `us-east-1` endpoint. However, you can access the service globally with the AWS Provider from other regions. Other tools, such as the [AWS CLI](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/cost-optimization-hub/index.html), may require you to specify the `us-east-1` region when using the service.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Usage with all the arguments
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cost Optimization Hub Enrollment Status using your AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:costoptimizationhub/enrollmentStatus:EnrollmentStatus example 111222333444
/// ```
class EnrollmentStatusCostoptimizationhub extends pulumi.CustomResource {
  /// Flag to enroll member accounts of the organization if the account is the management account. No drift detection is currently supported for this argument. Default value is `false`.
  late final pulumi.Output<bool> includeMemberAccounts;

  /// Status of enrollment. When the resource is present in Terraform, its status will always be `Active`.
  late final pulumi.Output<String> status;

  EnrollmentStatusCostoptimizationhub(
    String name, {
    EnrollmentStatusCostoptimizationhubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:costoptimizationhub/enrollmentStatus:EnrollmentStatus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.includeMemberAccounts = registerOutput<bool>('includeMemberAccounts');
    this.status = registerOutput<String>('status');
  }
}
