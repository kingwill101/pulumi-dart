// ignore_for_file: unused_element, unnecessary_cast

import '../remediation_configuration_execution_controls_ssm_controls/remediation_configuration_execution_controls_ssm_controls.dart';

class RemediationConfigurationExecutionControls {
  /// Configuration block for SSM controls. See below.
  final RemediationConfigurationExecutionControlsSsmControls? ssmControls;

  RemediationConfigurationExecutionControls({
    this.ssmControls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ssmControlsValue = ssmControls;
    if (ssmControlsValue != null) {
      map['ssmControls'] = ssmControlsValue.toMap();
    }
    return map;
  }

  factory RemediationConfigurationExecutionControls.fromMap(
      Map<String, dynamic> map) {
    return RemediationConfigurationExecutionControls(
      ssmControls: map['ssmControls'] == null
          ? null
          : RemediationConfigurationExecutionControlsSsmControls.fromMap(
              (map['ssmControls'] as Map).cast<String, dynamic>()),
    );
  }
}
