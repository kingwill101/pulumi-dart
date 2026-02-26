// ignore_for_file: unused_element, unnecessary_cast

class ExperimentTemplateExperimentOptions {
  /// Specifies the account targeting setting for experiment options. Supports `single-account` and `multi-account`.
  final String? accountTargeting;

  /// Specifies the empty target resolution mode for experiment options. Supports <span pulumi-lang-nodejs="`fail`" pulumi-lang-dotnet="`Fail`" pulumi-lang-go="`fail`" pulumi-lang-python="`fail`" pulumi-lang-yaml="`fail`" pulumi-lang-java="`fail`">`fail`</span> and <span pulumi-lang-nodejs="`skip`" pulumi-lang-dotnet="`Skip`" pulumi-lang-go="`skip`" pulumi-lang-python="`skip`" pulumi-lang-yaml="`skip`" pulumi-lang-java="`skip`">`skip`</span>.
  final String? emptyTargetResolutionMode;

  ExperimentTemplateExperimentOptions({
    this.accountTargeting,
    this.emptyTargetResolutionMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountTargetingValue = accountTargeting;
    if (accountTargetingValue != null) {
      map['accountTargeting'] = accountTargetingValue;
    }
    final emptyTargetResolutionModeValue = emptyTargetResolutionMode;
    if (emptyTargetResolutionModeValue != null) {
      map['emptyTargetResolutionMode'] = emptyTargetResolutionModeValue;
    }
    return map;
  }

  factory ExperimentTemplateExperimentOptions.fromMap(
      Map<String, dynamic> map) {
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
