import 'package:pulumi/pulumi.dart';
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
class Region2 extends CustomResource {
  /// The ID of the target account when managing member accounts. Will manage current user's account by default if omitted. To use this parameter, the caller must be an identity in the organization's management account or a delegated administrator account. The specified account ID must also be a member account in the same organization. The organization must have all features enabled, and the organization must have trusted access enabled for the Account Management service, and optionally a delegated admin account assigned.
  late final Output<String?> accountId;

  /// Whether the region is enabled.
  late final Output<bool> enabled;

  /// The region opt status.
  late final Output<String> optStatus;

  /// The region name to manage.
  late final Output<String> regionName;

  Region2(
    String name, {
    RegionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:account/region:Region',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String?>('accountId');
    this.enabled = registerOutput<bool>('enabled');
    this.optStatus = registerOutput<String>('optStatus');
    this.regionName = registerOutput<String>('regionName');
  }
}
