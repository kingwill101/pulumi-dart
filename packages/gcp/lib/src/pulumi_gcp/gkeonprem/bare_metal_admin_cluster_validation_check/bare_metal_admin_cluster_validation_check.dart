// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bare_metal_admin_cluster_validation_check_status/bare_metal_admin_cluster_validation_check_status.dart';

class BareMetalAdminClusterValidationCheck {
  /// (Output)
  /// Options used for the validation check.
  final String? options;

  /// (Output)
  /// The scenario when the preflight checks were run..
  final String? scenario;

  /// (Output)
  /// Specifies the detailed validation check status
  /// Structure is documented below.
  final List<BareMetalAdminClusterValidationCheckStatus>? statuses;

  BareMetalAdminClusterValidationCheck({
    this.options,
    this.scenario,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = optionsValue;
    }
    final scenarioValue = scenario;
    if (scenarioValue != null) {
      map['scenario'] = scenarioValue;
    }
    final statusesValue = statuses;
    if (statusesValue != null) {
      map['statuses'] = Input.encodeList<
          BareMetalAdminClusterValidationCheckStatus,
          Map<String, dynamic>>(statusesValue, (value) => value.toMap());
    }
    return map;
  }

  factory BareMetalAdminClusterValidationCheck.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminClusterValidationCheck(
      options: map['options'] == null ? null : map['options'] as String,
      scenario: map['scenario'] == null ? null : map['scenario'] as String,
      statuses: map['statuses'] == null
          ? null
          : Input.decodeList<BareMetalAdminClusterValidationCheckStatus>(
              map['statuses'],
              (value) => BareMetalAdminClusterValidationCheckStatus.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
