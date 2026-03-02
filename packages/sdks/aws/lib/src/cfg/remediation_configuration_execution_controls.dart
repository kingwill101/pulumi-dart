// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remediation_configuration_execution_controls_ssm_controls.dart';

class RemediationConfigurationExecutionControls {
  /// Configuration block for SSM controls. See below.
  final pulumi.Input<RemediationConfigurationExecutionControlsSsmControls>? ssmControls;

  /// Creates a new [RemediationConfigurationExecutionControls].
  /// [ssmControls] Configuration block for SSM controls. See below.
  RemediationConfigurationExecutionControls({
    this.ssmControls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ssmControls': ?pulumi.Input.mapOptionalInputValue<RemediationConfigurationExecutionControlsSsmControls, Map<String, dynamic>>(ssmControls, (value) => value.toMap()),
    };
  }

  factory RemediationConfigurationExecutionControls.fromMap(Map<String, dynamic> map) {
    return RemediationConfigurationExecutionControls(
      ssmControls: map['ssmControls'] == null ? null : (RemediationConfigurationExecutionControlsSsmControls.fromMap((map['ssmControls'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

