// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardDashboardPublishOptionsSheetControlsOption {
  /// Visibility state. Possibles values: EXPANDED, COLLAPSED.
  final pulumi.Input<String>? visibilityState;

  /// Creates a new [DashboardDashboardPublishOptionsSheetControlsOption].
  /// [visibilityState] Visibility state. Possibles values: EXPANDED, COLLAPSED.
  const DashboardDashboardPublishOptionsSheetControlsOption({
    this.visibilityState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'visibilityState': ?visibilityState,
    };
  }

  factory DashboardDashboardPublishOptionsSheetControlsOption.fromMap(Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsSheetControlsOption(
      visibilityState: (() { final guardedValue = map['visibilityState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
