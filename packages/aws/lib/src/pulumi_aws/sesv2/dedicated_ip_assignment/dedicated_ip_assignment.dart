import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_ip_assignment_args.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Dedicated IP Assignment.
///
/// This resource is used with "Standard" dedicated IP addresses. This includes addresses [requested and relinquished manually](https://docs.aws.amazon.com/ses/latest/dg/dedicated-ip-case.html) via an AWS support case, or [Bring Your Own IP](https://docs.aws.amazon.com/ses/latest/dg/dedicated-ip-byo.html) addresses. Once no longer assigned, this resource returns the IP to the [`ses-default-dedicated-pool`](https://docs.aws.amazon.com/ses/latest/dg/managing-ip-pools.html), managed by AWS.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Dedicated IP Assignment using the `id`, which is a comma-separated string made up of `ip` and `destination_pool_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/dedicatedIpAssignment:DedicatedIpAssignment example "0.0.0.0,my-pool"
/// ```
class DedicatedIpAssignment extends pulumi.CustomResource {
  /// Dedicated IP address.
  late final pulumi.Output<String> destinationPoolName;

  /// Dedicated IP address.
  late final pulumi.Output<String> ip;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  DedicatedIpAssignment(
    String name, {
    DedicatedIpAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/dedicatedIpAssignment:DedicatedIpAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.destinationPoolName = registerOutput<String>('destinationPoolName');
    this.ip = registerOutput<String>('ip');
    this.region = registerOutput<String>('region');
  }
}
