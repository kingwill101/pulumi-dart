// ignore_for_file: unused_element, unnecessary_cast

import 'remediation_configuration_execution_controls_ssm_controls.dart';

class RemediationConfigurationExecutionControls {
  /// Configuration block for SSM controls. See below.
  final RemediationConfigurationExecutionControlsSsmControls? ssmControls;

  /// Creates a new [RemediationConfigurationExecutionControls].
  /// [ssmControls] Configuration block for SSM controls. See below.
  RemediationConfigurationExecutionControls({this.ssmControls});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ssmControls': ?ssmControls == null ? null : ssmControls!.toMap(),
    };
  }

  factory RemediationConfigurationExecutionControls.fromMap(
    Map<String, dynamic> map,
  ) {
    return RemediationConfigurationExecutionControls(
      ssmControls: map['ssmControls'] == null
          ? null
          : RemediationConfigurationExecutionControlsSsmControls.fromMap(
              (map['ssmControls'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
