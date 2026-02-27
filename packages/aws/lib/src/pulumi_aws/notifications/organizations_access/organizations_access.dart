import 'package:pulumi/pulumi.dart';
import '../organizations_access_timeouts/organizations_access_timeouts.dart';
import 'organizations_access_args.dart';

/// Resource for managing AWS User Notifications Organizations Access. This resource enables or disables organizations access for AWS User Notifications in AWS Organizations, allowing the service to access organization information.
///
/// > **NOTE:** This resource can only be used in the management account of an AWS Organization.
///
/// > **NOTE:** Deleting this resource will always disable organizations access for AWS User Notifications, regardless of the `enabled` attribute value.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Organizations Access using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/organizationsAccess:OrganizationsAccess example 123456789012
/// ```
class OrganizationsAccess extends CustomResource {
  /// Whether to enable organizations access for AWS User Notifications in AWS Organizations. When set to `true`, enables organizations access. When set to `false`, disables organizations access.
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
    this.enabled = registerOutput<bool>('enabled');
    this.timeouts = registerOutput<OrganizationsAccessTimeouts?>('timeouts');
  }
}
