// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExperimentTemplateExperimentOptions {
  /// Specifies the account targeting setting for experiment options. Supports `single-account` and `multi-account`.
  final pulumi.Input<String>? accountTargeting;
  /// Specifies the empty target resolution mode for experiment options. Supports `fail` and `skip`.
  final pulumi.Input<String>? emptyTargetResolutionMode;

  /// Creates a new [ExperimentTemplateExperimentOptions].
  /// [accountTargeting] Specifies the account targeting setting for experiment options. Supports `single-account` and `multi-account`.
  /// [emptyTargetResolutionMode] Specifies the empty target resolution mode for experiment options. Supports `fail` and `skip`.
  const ExperimentTemplateExperimentOptions({
    this.accountTargeting,
    this.emptyTargetResolutionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountTargeting': ?accountTargeting,
      'emptyTargetResolutionMode': ?emptyTargetResolutionMode,
    };
  }

  factory ExperimentTemplateExperimentOptions.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateExperimentOptions(
      accountTargeting: (() { final guardedValue = map['accountTargeting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emptyTargetResolutionMode: (() { final guardedValue = map['emptyTargetResolutionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

