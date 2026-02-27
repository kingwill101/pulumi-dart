// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_remotebuildexecution_admin_v1alpha_feature_policy.dart';

/// The set of arguments for Instance.
class InstanceRemotebuildexecutionV1alphaArgs {
  /// The policy to define whether or not RBE features can be used or how they can be used.
  final pulumi
      .Input<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy>?
      featurePolicy;

  /// ID of the created instance. A valid `instance_id` must: be 6-50 characters long, contain only lowercase letters, digits, hyphens and underscores, start with a lowercase letter, and end with a lowercase letter or a digit.
  final pulumi.Input<String>? instanceId;

  /// The location is a GCP region. Currently only `us-central1` is supported.
  final pulumi.Input<String>? location;

  /// Resource name of the project containing the instance. Format: `projects/[PROJECT_ID]`.
  final pulumi.Input<String>? parent;
  final pulumi.Input<String>? project;

  InstanceRemotebuildexecutionV1alphaArgs({
    this.featurePolicy,
    this.instanceId,
    this.location,
    this.parent,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final featurePolicyValue = featurePolicy;
    if (featurePolicyValue != null) {
      map['featurePolicy'] = pulumi.Input.mapOptionalInputValue<
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy,
          Map<String, dynamic>>(featurePolicyValue, (value) => value.toMap());
    }
    final instanceIdValue = instanceId;
    if (instanceIdValue != null) {
      map['instanceId'] = instanceIdValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InstanceRemotebuildexecutionV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return InstanceRemotebuildexecutionV1alphaArgs(
      featurePolicy: pulumi.Input.asOptionalInput<
              GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy>(
          map['featurePolicy']),
      instanceId: pulumi.Input.asOptionalInput<String>(map['instanceId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      parent: pulumi.Input.asOptionalInput<String>(map['parent']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
