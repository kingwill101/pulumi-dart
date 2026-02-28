// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_control_plane_access_control_plane_access_args_doc}
/// The set of arguments for ControlPlaneAccess.
/// {@endtemplate}
/// {@macro pulumi_apigee_control_plane_access_control_plane_access_args_doc}
class ControlPlaneAccessArgs {
  /// Array of service accounts authorized to publish analytics data to the control plane, each specified using the following format: `serviceAccount:service-account-name`.
  /// The `service-account-name` is formatted like an email address. For example: serviceAccount@my_project_id.iam.gserviceaccount.com
  /// You might specify multiple service accounts, for example, if you have multiple environments and wish to assign a unique service account to each one.
  final pulumi.Input<List<String>>? analyticsPublisherIdentities;

  /// Name of the Apigee organization.
  final pulumi.Input<String>? name;

  /// Array of service accounts to grant access to control plane resources (for the Synchronizer component), each specified using the following format: `serviceAccount:service-account-name`.
  /// The `service-account-name` is formatted like an email address. For example: serviceAccount@my_project_id.iam.gserviceaccount.com
  /// You might specify multiple service accounts, for example, if you have multiple environments and wish to assign a unique service account to each one.
  /// The service accounts must have **Apigee Synchronizer Manager** role. See also [Create service accounts](https://cloud.google.com/apigee/docs/hybrid/v1.8/sa-about#create-the-service-accounts).
  final pulumi.Input<List<String>>? synchronizerIdentities;

  /// Creates a new [ControlPlaneAccessArgs].
  /// [analyticsPublisherIdentities] Array of service accounts authorized to publish analytics data to the control plane, each specified using the following format: `serviceAccount:service-account-name`.
  /// [name] Name of the Apigee organization.
  /// [synchronizerIdentities] Array of service accounts to grant access to control plane resources (for the Synchronizer component), each specified using the following format: `serviceAccount:service-account-name`.
  ControlPlaneAccessArgs({
    List<String>? analyticsPublisherIdentities,
    String? name,
    List<String>? synchronizerIdentities,
  })  : analyticsPublisherIdentities =
            pulumi.Input.asOptionalInput<List<String>>(
                analyticsPublisherIdentities),
        name = pulumi.Input.asOptionalInput<String>(name),
        synchronizerIdentities =
            pulumi.Input.asOptionalInput<List<String>>(synchronizerIdentities);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final analyticsPublisherIdentitiesValue = analyticsPublisherIdentities;
    if (analyticsPublisherIdentitiesValue != null) {
      map['analyticsPublisherIdentities'] = analyticsPublisherIdentitiesValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final synchronizerIdentitiesValue = synchronizerIdentities;
    if (synchronizerIdentitiesValue != null) {
      map['synchronizerIdentities'] = synchronizerIdentitiesValue;
    }
    return map;
  }

  factory ControlPlaneAccessArgs.fromMap(Map<String, dynamic> map) {
    return ControlPlaneAccessArgs(
      analyticsPublisherIdentities: map['analyticsPublisherIdentities'] == null
          ? null
          : (map['analyticsPublisherIdentities'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      synchronizerIdentities: map['synchronizerIdentities'] == null
          ? null
          : (map['synchronizerIdentities'] as List).cast<String>(),
    );
  }
}
