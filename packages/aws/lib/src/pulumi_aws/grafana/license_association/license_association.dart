import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_association_args.dart';

/// Provides an Amazon Managed Grafana workspace license association resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Grafana workspace license association using the workspace's `id`. For example:
///
/// ```sh
/// $ pulumi import aws:grafana/licenseAssociation:LicenseAssociation example g-2054c75a02
/// ```
class LicenseAssociation extends pulumi.CustomResource {
  /// If `license_type` is set to `ENTERPRISE_FREE_TRIAL`, this is the expiration date of the free trial.
  late final pulumi.Output<String> freeTrialExpiration;

  /// A token from Grafana Labs that ties your AWS account with a Grafana Labs account.
  late final pulumi.Output<String?> grafanaToken;

  /// If `license_type` is set to `ENTERPRISE`, this is the expiration date of the enterprise license.
  late final pulumi.Output<String> licenseExpiration;

  /// The type of license for the workspace license association. Valid values are `ENTERPRISE` and `ENTERPRISE_FREE_TRIAL`.
  late final pulumi.Output<String> licenseType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The workspace id.
  late final pulumi.Output<String> workspaceId;

  LicenseAssociation(
    String name, {
    LicenseAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:grafana/licenseAssociation:LicenseAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.freeTrialExpiration = registerOutput<String>('freeTrialExpiration');
    this.grafanaToken = registerOutput<String?>('grafanaToken');
    this.licenseExpiration = registerOutput<String>('licenseExpiration');
    this.licenseType = registerOutput<String>('licenseType');
    this.region = registerOutput<String>('region');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
