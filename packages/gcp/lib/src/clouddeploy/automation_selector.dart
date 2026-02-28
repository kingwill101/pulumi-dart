// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_selector_target.dart';

class AutomationSelector {
  /// Contains attributes about a target.
  /// Structure is documented below.
  final List<AutomationSelectorTarget> targets;

  /// Creates a new [AutomationSelector].
  /// [targets] Contains attributes about a target.
  AutomationSelector({
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targets'] =
        pulumi.Input.encodeList<AutomationSelectorTarget, Map<String, dynamic>>(
            targets, (value) => value.toMap());
    return map;
  }

  factory AutomationSelector.fromMap(Map<String, dynamic> map) {
    return AutomationSelector(
      targets: pulumi.Input.decodeList<AutomationSelectorTarget>(
          map['targets'],
          (value) => AutomationSelectorTarget.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
