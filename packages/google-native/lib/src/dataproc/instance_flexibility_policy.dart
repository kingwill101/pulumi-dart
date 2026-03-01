// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_selection.dart';

/// Instance flexibility Policy allowing a mixture of VM shapes and provisioning models.
class InstanceFlexibilityPolicy {
  /// Optional. List of instance selection options that the group will use when creating new VMs.
  final List<InstanceSelection>? instanceSelectionList;

  /// Creates a new [InstanceFlexibilityPolicy].
  /// [instanceSelectionList] Optional. List of instance selection options that the group will use when creating new VMs.
  InstanceFlexibilityPolicy({this.instanceSelectionList});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSelectionList': ?instanceSelectionList == null
          ? null
          : pulumi.Input.encodeList<InstanceSelection, Map<String, dynamic>>(
              instanceSelectionList!,
              (value) => value.toMap(),
            ),
    };
  }

  factory InstanceFlexibilityPolicy.fromMap(Map<String, dynamic> map) {
    return InstanceFlexibilityPolicy(
      instanceSelectionList: map['instanceSelectionList'] == null
          ? null
          : pulumi.Input.decodeList<InstanceSelection>(
              map['instanceSelectionList'],
              (value) => InstanceSelection.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
