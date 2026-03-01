// ignore_for_file: unused_element, unnecessary_cast

class ExperimentTemplateExperimentOptions {
  /// Specifies the account targeting setting for experiment options. Supports `single-account` and `multi-account`.
  final String? accountTargeting;

  /// Specifies the empty target resolution mode for experiment options. Supports `fail` and `skip`.
  final String? emptyTargetResolutionMode;

  /// Creates a new [ExperimentTemplateExperimentOptions].
  /// [accountTargeting] Specifies the account targeting setting for experiment options. Supports `single-account` and `multi-account`.
  /// [emptyTargetResolutionMode] Specifies the empty target resolution mode for experiment options. Supports `fail` and `skip`.
  ExperimentTemplateExperimentOptions({
    this.accountTargeting,
    this.emptyTargetResolutionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountTargeting': ?accountTargeting,
      'emptyTargetResolutionMode': ?emptyTargetResolutionMode,
    };
  }

  factory ExperimentTemplateExperimentOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExperimentTemplateExperimentOptions(
      accountTargeting: map['accountTargeting'] == null
          ? null
          : map['accountTargeting'] as String,
      emptyTargetResolutionMode: map['emptyTargetResolutionMode'] == null
          ? null
          : map['emptyTargetResolutionMode'] as String,
    );
  }
}
