import 'package:pulumi/pulumi.dart';
import 'organizations_access_args2.dart';

/// Manages Service Catalog AWS Organizations Access, a portfolio sharing feature through AWS Organizations. This allows Service Catalog to receive updates on your organization in order to sync your shares with the current structure. This resource will prompt AWS to set `organizations:EnableAWSServiceAccess` on your behalf so that your shares can be in sync with any changes in your AWS Organizations structure.
///
/// > **NOTE:** This resource can only be used by the management account in the organization. In other words, a delegated administrator is not authorized to use the resource.
///
/// ## Example Usage
///
/// ### Basic Usage
class OrganizationsAccess2 extends CustomResource {
  /// Whether to enable AWS Organizations access.
  late final Output<bool> enabled;

  OrganizationsAccess2(
    String name, {
    OrganizationsAccessArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/organizationsAccess:OrganizationsAccess',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool>('enabled');
  }
}
