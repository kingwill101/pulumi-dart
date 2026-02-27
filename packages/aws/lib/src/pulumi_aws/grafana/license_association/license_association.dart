import 'package:pulumi/pulumi.dart';
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
class LicenseAssociation extends CustomResource {
  /// If `license_type` is set to `ENTERPRISE_FREE_TRIAL`, this is the expiration date of the free trial.
  late final Output<String> freeTrialExpiration;

  /// A token from Grafana Labs that ties your AWS account with a Grafana Labs account.
  late final Output<String?> grafanaToken;

  /// If `license_type` is set to `ENTERPRISE`, this is the expiration date of the enterprise license.
  late final Output<String> licenseExpiration;

  /// The type of license for the workspace license association. Valid values are `ENTERPRISE` and `ENTERPRISE_FREE_TRIAL`.
  late final Output<String> licenseType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The workspace id.
  late final Output<String> workspaceId;

  LicenseAssociation(
    String name, {
    LicenseAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:grafana/licenseAssociation:LicenseAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.freeTrialExpiration = registerOutput<String>('freeTrialExpiration');
    this.grafanaToken = registerOutput<String?>('grafanaToken');
    this.licenseExpiration = registerOutput<String>('licenseExpiration');
    this.licenseType = registerOutput<String>('licenseType');
    this.region = registerOutput<String>('region');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
