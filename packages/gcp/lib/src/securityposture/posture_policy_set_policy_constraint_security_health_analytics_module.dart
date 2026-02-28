// ignore_for_file: unused_element, unnecessary_cast

class PosturePolicySetPolicyConstraintSecurityHealthAnalyticsModule {
  /// The state of enablement for the module at its level of the resource hierarchy.
  /// Possible values are: `ENABLEMENT_STATE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final String? moduleEnablementState;

  /// The name of the module eg: BIGQUERY_TABLE_CMEK_DISABLED.
  final String moduleName;

  /// Creates a new [PosturePolicySetPolicyConstraintSecurityHealthAnalyticsModule].
  /// [moduleEnablementState] The state of enablement for the module at its level of the resource hierarchy.
  /// [moduleName] The name of the module eg: BIGQUERY_TABLE_CMEK_DISABLED.
  PosturePolicySetPolicyConstraintSecurityHealthAnalyticsModule({
    this.moduleEnablementState,
    required this.moduleName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final moduleEnablementStateValue = moduleEnablementState;
    if (moduleEnablementStateValue != null) {
      map['moduleEnablementState'] = moduleEnablementStateValue;
    }
    map['moduleName'] = moduleName;
    return map;
  }

  factory PosturePolicySetPolicyConstraintSecurityHealthAnalyticsModule.fromMap(
      Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraintSecurityHealthAnalyticsModule(
      moduleEnablementState: map['moduleEnablementState'] == null
          ? null
          : map['moduleEnablementState'] as String,
      moduleName: map['moduleName'] as String,
    );
  }
}
