// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'monitored_resource.dart';

/// A widget that displays a list of incidents
class IncidentList {
  /// Optional. The monitored resource for which incidents are listed. The resource doesn't need to be fully specified. That is, you can specify the resource type but not the values of the resource labels. The resource type and labels are used for filtering.
  final List<MonitoredResource>? monitoredResources;

  /// Optional. A list of alert policy names to filter the incident list by. Don't include the project ID prefix in the policy name. For example, use alertPolicies/utilization.
  final List<String>? policyNames;

  IncidentList({
    this.monitoredResources,
    this.policyNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final monitoredResourcesValue = monitoredResources;
    if (monitoredResourcesValue != null) {
      map['monitoredResources'] =
          Input.encodeList<MonitoredResource, Map<String, dynamic>>(
              monitoredResourcesValue, (value) => value.toMap());
    }
    final policyNamesValue = policyNames;
    if (policyNamesValue != null) {
      map['policyNames'] = policyNamesValue;
    }
    return map;
  }

  factory IncidentList.fromMap(Map<String, dynamic> map) {
    return IncidentList(
      monitoredResources: map['monitoredResources'] == null
          ? null
          : Input.decodeList<MonitoredResource>(
              map['monitoredResources'],
              (value) => MonitoredResource.fromMap(
                  (value as Map).cast<String, dynamic>())),
      policyNames: map['policyNames'] == null
          ? null
          : (map['policyNames'] as List).cast<String>(),
    );
  }
}
