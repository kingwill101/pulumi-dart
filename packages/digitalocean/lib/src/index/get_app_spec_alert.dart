// ignore_for_file: unused_element, unnecessary_cast

import 'get_app_spec_alert_destinations.dart';

class GetAppSpecAlert {
  final GetAppSpecAlertDestinations? destinations;
  /// Determines whether or not the alert is disabled (default: `false`).
  final bool? disabled;
  /// The type of the alert to configure. Component app alert policies can be: `CPU_UTILIZATION`, `MEM_UTILIZATION`, or `RESTART_COUNT`.
  final String rule;

  /// Creates a new [GetAppSpecAlert].
  /// [destinations] Optional.
  /// [disabled] Determines whether or not the alert is disabled (default: `false`).
  /// [rule] The type of the alert to configure. Component app alert policies can be: `CPU_UTILIZATION`, `MEM_UTILIZATION`, or `RESTART_COUNT`.
  GetAppSpecAlert({
    this.destinations,
    this.disabled,
    required this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations == null ? null : destinations!.toMap(),
      'disabled': ?disabled,
      'rule': rule,
    };
  }

  factory GetAppSpecAlert.fromMap(Map<String, dynamic> map) {
    return GetAppSpecAlert(
      destinations: map['destinations'] == null ? null : GetAppSpecAlertDestinations.fromMap((map['destinations'] as Map).cast<String, dynamic>()),
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      rule: map['rule'] as String,
    );
  }
}

