// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'instance_selection.dart';

/// Instance flexibility Policy allowing a mixture of VM shapes and provisioning models.
class InstanceFlexibilityPolicy {
  /// Optional. List of instance selection options that the group will use when creating new VMs.
  final List<InstanceSelection>? instanceSelectionList;

  InstanceFlexibilityPolicy({
    this.instanceSelectionList,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceSelectionListValue = instanceSelectionList;
    if (instanceSelectionListValue != null) {
      map['instanceSelectionList'] =
          Input.encodeList<InstanceSelection, Map<String, dynamic>>(
              instanceSelectionListValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceFlexibilityPolicy.fromMap(Map<String, dynamic> map) {
    return InstanceFlexibilityPolicy(
      instanceSelectionList: map['instanceSelectionList'] == null
          ? null
          : Input.decodeList<InstanceSelection>(
              map['instanceSelectionList'],
              (value) => InstanceSelection.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
