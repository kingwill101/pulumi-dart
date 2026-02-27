import 'package:pulumi/pulumi.dart';
import 'control_plane_access_args.dart';

/// Authorize the Runtime components to access directly with Apigee Control Plane.
///
///
/// To get more information about ControlPlaneAccess, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations/updateControlPlaneAccess)
/// * How-to Guides
/// * [Enable ControlPlane access](https://cloud.google.com/apigee/docs/hybrid/v1.14/install-enable-control-plane-access)
///
/// ## Example Usage
///
/// ### Apigee Control Plane Access Basic Test
///
///
///
///
/// ## Import
///
/// ControlPlaneAccess can be imported using any of these accepted formats:
///
/// * `organizations/{{name}}/controlPlaneAccess`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ControlPlaneAccess can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/controlPlaneAccess:ControlPlaneAccess default organizations/{{name}}/controlPlaneAccess
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/controlPlaneAccess:ControlPlaneAccess default {{name}}
/// ```
class ControlPlaneAccess extends CustomResource {
  /// Array of service accounts authorized to publish analytics data to the control plane, each specified using the following format: `serviceAccount:service-account-name`.
  /// The `service-account-name` is formatted like an email address. For example: serviceAccount@my_project_id.iam.gserviceaccount.com
  /// You might specify multiple service accounts, for example, if you have multiple environments and wish to assign a unique service account to each one.
  late final Output<List<String>?> analyticsPublisherIdentities;

  /// Name of the Apigee organization.
  late final Output<String> name;

  /// Array of service accounts to grant access to control plane resources (for the Synchronizer component), each specified using the following format: `serviceAccount:service-account-name`.
  /// The `service-account-name` is formatted like an email address. For example: serviceAccount@my_project_id.iam.gserviceaccount.com
  /// You might specify multiple service accounts, for example, if you have multiple environments and wish to assign a unique service account to each one.
  /// The service accounts must have **Apigee Synchronizer Manager** role. See also [Create service accounts](https://cloud.google.com/apigee/docs/hybrid/v1.8/sa-about#create-the-service-accounts).
  late final Output<List<String>?> synchronizerIdentities;

  ControlPlaneAccess(
    String name, {
    ControlPlaneAccessArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/controlPlaneAccess:ControlPlaneAccess',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.analyticsPublisherIdentities =
        registerOutput<List<String>?>('analyticsPublisherIdentities');
    this.name = registerOutput<String>('name');
    this.synchronizerIdentities =
        registerOutput<List<String>?>('synchronizerIdentities');
  }
}
