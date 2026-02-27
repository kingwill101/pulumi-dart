// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_attribute.dart';

/// AutomationResourceSelector contains the information to select the resources to which an Automation is going to be applied.
class AutomationResourceSelector {
  /// Contains attributes about a target.
  final List<TargetAttribute>? targets;

  AutomationResourceSelector({
    this.targets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final targetsValue = targets;
    if (targetsValue != null) {
      map['targets'] =
          pulumi.Input.encodeList<TargetAttribute, Map<String, dynamic>>(
              targetsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AutomationResourceSelector.fromMap(Map<String, dynamic> map) {
    return AutomationResourceSelector(
      targets: map['targets'] == null
          ? null
          : pulumi.Input.decodeList<TargetAttribute>(
              map['targets'],
              (value) => TargetAttribute.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
