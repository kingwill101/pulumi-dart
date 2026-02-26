// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'app_profile_priority.dart';
import 'multi_cluster_routing_use_any.dart';
import 'single_cluster_routing.dart';
import 'standard_isolation.dart';

/// The set of arguments for AppProfile.
class AppProfileArgs {
  /// Required. The ID to be used when referring to the new app profile within its instance, e.g., just `myprofile` rather than `projects/myproject/instances/myinstance/appProfiles/myprofile`.
  final Input<String> appProfileId;

  /// Long form description of the use case for this AppProfile.
  final Input<String>? description;

  /// Strongly validated etag for optimistic concurrency control. Preserve the value returned from `GetAppProfile` when calling `UpdateAppProfile` to fail the request if there has been a modification in the mean time. The `update_mask` of the request need not include `etag` for this protection to apply. See [Wikipedia](https://en.wikipedia.org/wiki/HTTP_ETag) and [RFC 7232](https://tools.ietf.org/html/rfc7232#section-2.3) for more details.
  final Input<String>? etag;

  /// If true, ignore safety checks when creating the app profile.
  final Input<bool>? ignoreWarnings;
  final Input<String> instanceId;

  /// Use a multi-cluster routing policy.
  final Input<MultiClusterRoutingUseAny>? multiClusterRoutingUseAny;

  /// The unique name of the app profile. Values are of the form `projects/{project}/instances/{instance}/appProfiles/_a-zA-Z0-9*`.
  final Input<String>? name;

  /// This field has been deprecated in favor of `standard_isolation.priority`. If you set this field, `standard_isolation.priority` will be set instead. The priority of requests sent using this app profile.
  final Input<AppProfilePriority>? priority;
  final Input<String>? project;

  /// Use a single-cluster routing policy.
  final Input<SingleClusterRouting>? singleClusterRouting;

  /// The standard options used for isolating this app profile's traffic from other use cases.
  final Input<StandardIsolation>? standardIsolation;

  AppProfileArgs({
    required this.appProfileId,
    this.description,
    this.etag,
    this.ignoreWarnings,
    required this.instanceId,
    this.multiClusterRoutingUseAny,
    this.name,
    this.priority,
    this.project,
    this.singleClusterRouting,
    this.standardIsolation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appProfileId'] = appProfileId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final ignoreWarningsValue = ignoreWarnings;
    if (ignoreWarningsValue != null) {
      map['ignoreWarnings'] = ignoreWarningsValue;
    }
    map['instanceId'] = instanceId;
    final multiClusterRoutingUseAnyValue = multiClusterRoutingUseAny;
    if (multiClusterRoutingUseAnyValue != null) {
      map['multiClusterRoutingUseAny'] = Input.mapOptionalInputValue<
              MultiClusterRoutingUseAny, Map<String, dynamic>>(
          multiClusterRoutingUseAnyValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = Input.mapOptionalInputValue<AppProfilePriority, String>(
          priorityValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final singleClusterRoutingValue = singleClusterRouting;
    if (singleClusterRoutingValue != null) {
      map['singleClusterRouting'] = Input.mapOptionalInputValue<
              SingleClusterRouting, Map<String, dynamic>>(
          singleClusterRoutingValue, (value) => value.toMap());
    }
    final standardIsolationValue = standardIsolation;
    if (standardIsolationValue != null) {
      map['standardIsolation'] =
          Input.mapOptionalInputValue<StandardIsolation, Map<String, dynamic>>(
              standardIsolationValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppProfileArgs.fromMap(Map<String, dynamic> map) {
    return AppProfileArgs(
      appProfileId: Input.asInput<String>(map['appProfileId']),
      description: Input.asOptionalInput<String>(map['description']),
      etag: Input.asOptionalInput<String>(map['etag']),
      ignoreWarnings: Input.asOptionalInput<bool>(map['ignoreWarnings']),
      instanceId: Input.asInput<String>(map['instanceId']),
      multiClusterRoutingUseAny:
          Input.asOptionalInput<MultiClusterRoutingUseAny>(
              map['multiClusterRoutingUseAny']),
      name: Input.asOptionalInput<String>(map['name']),
      priority: Input.asOptionalInput<AppProfilePriority>(map['priority']),
      project: Input.asOptionalInput<String>(map['project']),
      singleClusterRouting: Input.asOptionalInput<SingleClusterRouting>(
          map['singleClusterRouting']),
      standardIsolation:
          Input.asOptionalInput<StandardIsolation>(map['standardIsolation']),
    );
  }
}
