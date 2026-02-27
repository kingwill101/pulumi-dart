import 'package:pulumi/pulumi.dart' as pulumi;
import 'organizations_access_servicecatalog_args.dart';

/// Manages Service Catalog AWS Organizations Access, a portfolio sharing feature through AWS Organizations. This allows Service Catalog to receive updates on your organization in order to sync your shares with the current structure. This resource will prompt AWS to set `organizations:EnableAWSServiceAccess` on your behalf so that your shares can be in sync with any changes in your AWS Organizations structure.
///
/// > **NOTE:** This resource can only be used by the management account in the organization. In other words, a delegated administrator is not authorized to use the resource.
///
/// ## Example Usage
///
/// ### Basic Usage
class OrganizationsAccessServicecatalog extends pulumi.CustomResource {
  /// Whether to enable AWS Organizations access.
  late final pulumi.Output<bool> enabled;

  OrganizationsAccessServicecatalog(
    String name, {
    OrganizationsAccessServicecatalogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/organizationsAccess:OrganizationsAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool>('enabled');
  }
}
