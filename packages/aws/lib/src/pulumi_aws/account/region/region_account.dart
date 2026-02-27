import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_args.dart';

/// Enable (Opt-In) or Disable (Opt-Out) a particular Region for an AWS account.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`. For example:
///
/// ```sh
/// $ pulumi import aws:account/region:Region example ap-southeast-3
/// ```
class RegionAccount extends pulumi.CustomResource {
  /// The ID of the target account when managing member accounts. Will manage current user's account by default if omitted. To use this parameter, the caller must be an identity in the organization's management account or a delegated administrator account. The specified account ID must also be a member account in the same organization. The organization must have all features enabled, and the organization must have trusted access enabled for the Account Management service, and optionally a delegated admin account assigned.
  late final pulumi.Output<String?> accountId;

  /// Whether the region is enabled.
  late final pulumi.Output<bool> enabled;

  /// The region opt status.
  late final pulumi.Output<String> optStatus;

  /// The region name to manage.
  late final pulumi.Output<String> regionName;

  RegionAccount(
    String name, {
    RegionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:account/region:Region',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String?>('accountId');
    this.enabled = registerOutput<bool>('enabled');
    this.optStatus = registerOutput<String>('optStatus');
    this.regionName = registerOutput<String>('regionName');
  }
}
