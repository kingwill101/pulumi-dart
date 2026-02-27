// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_devtools_remotebuildexecution_admin_v1alpha_feature_policy.dart';

/// The set of arguments for Instance.
class InstanceArgs22 {
  /// The policy to define whether or not RBE features can be used or how they can be used.
  final Input<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy>?
      featurePolicy;

  /// ID of the created instance. A valid `instance_id` must: be 6-50 characters long, contain only lowercase letters, digits, hyphens and underscores, start with a lowercase letter, and end with a lowercase letter or a digit.
  final Input<String>? instanceId;

  /// The location is a GCP region. Currently only `us-central1` is supported.
  final Input<String>? location;

  /// Resource name of the project containing the instance. Format: `projects/[PROJECT_ID]`.
  final Input<String>? parent;
  final Input<String>? project;

  InstanceArgs22({
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
      map['featurePolicy'] = Input.mapOptionalInputValue<
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

  factory InstanceArgs22.fromMap(Map<String, dynamic> map) {
    return InstanceArgs22(
      featurePolicy: Input.asOptionalInput<
              GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy>(
          map['featurePolicy']),
      instanceId: Input.asOptionalInput<String>(map['instanceId']),
      location: Input.asOptionalInput<String>(map['location']),
      parent: Input.asOptionalInput<String>(map['parent']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
