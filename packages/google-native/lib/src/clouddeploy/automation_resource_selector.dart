// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_attribute.dart';

/// AutomationResourceSelector contains the information to select the resources to which an Automation is going to be applied.
class AutomationResourceSelector {
  /// Contains attributes about a target.
  final List<TargetAttribute>? targets;

  /// Creates a new [AutomationResourceSelector].
  /// [targets] Contains attributes about a target.
  AutomationResourceSelector({
    this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targets': ?targets == null ? null : pulumi.Input.encodeList<TargetAttribute, Map<String, dynamic>>(targets!, (value) => value.toMap()),
    };
  }

  factory AutomationResourceSelector.fromMap(Map<String, dynamic> map) {
    return AutomationResourceSelector(
      targets: map['targets'] == null ? null : pulumi.Input.decodeList<TargetAttribute>(map['targets'], (value) => TargetAttribute.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

