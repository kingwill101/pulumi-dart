import 'package:pulumi/pulumi.dart';
import '../enrollment_status_timeouts/enrollment_status_timeouts.dart';
import 'enrollment_status_args.dart';

/// Manages AWS Compute Optimizer enrollment status.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import enrollment status using the account ID. For example:
///
/// ```sh
/// $ pulumi import aws:computeoptimizer/enrollmentStatus:EnrollmentStatus example 123456789012
/// ```
class EnrollmentStatus extends CustomResource {
  /// Whether to enroll member accounts of the organization if the account is the management account of an organization. Default is `false`.
  late final Output<bool> includeMemberAccounts;

  /// The count of organization member accounts that are opted in to the service, if your account is an organization management account.
  late final Output<int> numberOfMemberAccountsOptedIn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The enrollment status of the account. Valid values: `Active`, `Inactive`.
  late final Output<String> status;
  late final Output<EnrollmentStatusTimeouts?> timeouts;

  EnrollmentStatus(
    String name, {
    EnrollmentStatusArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:computeoptimizer/enrollmentStatus:EnrollmentStatus',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.includeMemberAccounts = registerOutput<bool>('includeMemberAccounts');
    this.numberOfMemberAccountsOptedIn =
        registerOutput<int>('numberOfMemberAccountsOptedIn');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.timeouts = registerOutput<EnrollmentStatusTimeouts?>('timeouts');
  }
}
