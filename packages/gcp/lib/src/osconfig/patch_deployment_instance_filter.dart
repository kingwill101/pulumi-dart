// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_deployment_instance_filter_group_label.dart';

class PatchDeploymentInstanceFilter {
  /// Target all VM instances in the project. If true, no other criteria is permitted.
  final bool? all;

  /// Targets VM instances matching ANY of these GroupLabels. This allows targeting of disparate groups of VM instances.
  /// Structure is documented below.
  final List<PatchDeploymentInstanceFilterGroupLabel>? groupLabels;

  /// Targets VMs whose name starts with one of these prefixes. Similar to labels, this is another way to group
  /// VMs when targeting configs, for example prefix="prod-".
  final List<String>? instanceNamePrefixes;

  /// Targets any of the VM instances specified. Instances are specified by their URI in the `form zones/{{zone}}/instances/{{instance_name}}`,
  /// `projects/{{project_id}}/zones/{{zone}}/instances/{{instance_name}}`, or
  /// `https://www.googleapis.com/compute/v1/projects/{{project_id}}/zones/{{zone}}/instances/{{instance_name}}`
  final List<String>? instances;

  /// Targets VM instances in ANY of these zones. Leave empty to target VM instances in any zone.
  final List<String>? zones;

  /// Creates a new [PatchDeploymentInstanceFilter].
  /// [all] Target all VM instances in the project. If true, no other criteria is permitted.
  /// [groupLabels] Targets VM instances matching ANY of these GroupLabels. This allows targeting of disparate groups of VM instances.
  /// [instanceNamePrefixes] Targets VMs whose name starts with one of these prefixes. Similar to labels, this is another way to group
  /// [instances] Targets any of the VM instances specified. Instances are specified by their URI in the `form zones/{{zone}}/instances/{{instance_name}}`,
  /// [zones] Targets VM instances in ANY of these zones. Leave empty to target VM instances in any zone.
  PatchDeploymentInstanceFilter({
    this.all,
    this.groupLabels,
    this.instanceNamePrefixes,
    this.instances,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allValue = all;
    if (allValue != null) {
      map['all'] = allValue;
    }
    final groupLabelsValue = groupLabels;
    if (groupLabelsValue != null) {
      map['groupLabels'] = pulumi.Input.encodeList<
          PatchDeploymentInstanceFilterGroupLabel,
          Map<String, dynamic>>(groupLabelsValue, (value) => value.toMap());
    }
    final instanceNamePrefixesValue = instanceNamePrefixes;
    if (instanceNamePrefixesValue != null) {
      map['instanceNamePrefixes'] = instanceNamePrefixesValue;
    }
    final instancesValue = instances;
    if (instancesValue != null) {
      map['instances'] = instancesValue;
    }
    final zonesValue = zones;
    if (zonesValue != null) {
      map['zones'] = zonesValue;
    }
    return map;
  }

  factory PatchDeploymentInstanceFilter.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentInstanceFilter(
      all: map['all'] == null ? null : map['all'] as bool,
      groupLabels: map['groupLabels'] == null
          ? null
          : pulumi.Input.decodeList<PatchDeploymentInstanceFilterGroupLabel>(
              map['groupLabels'],
              (value) => PatchDeploymentInstanceFilterGroupLabel.fromMap(
                  (value as Map).cast<String, dynamic>())),
      instanceNamePrefixes: map['instanceNamePrefixes'] == null
          ? null
          : (map['instanceNamePrefixes'] as List).cast<String>(),
      instances: map['instances'] == null
          ? null
          : (map['instances'] as List).cast<String>(),
      zones:
          map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}
