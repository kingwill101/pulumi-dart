// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TemplateService resources.
class TemplateServiceState {
  /// Status of the quota template. Valid values:
  /// - `-1`: disabled.
  final pulumi.Input<int>? serviceStatus;

  /// Creates a new [TemplateServiceState].
  /// [serviceStatus] Status of the quota template. Valid values:
  const TemplateServiceState({
    this.serviceStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceStatus': ?serviceStatus,
    };
  }

  factory TemplateServiceState.fromMap(Map<String, dynamic> map) {
    return TemplateServiceState(
      serviceStatus: (() { final guardedValue = map['serviceStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

