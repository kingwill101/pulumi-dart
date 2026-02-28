// ignore_for_file: unused_element, unnecessary_cast

/// Usage configuration rules for the service. NOTE: Under development. Use this rule to configure unregistered calls for the service. Unregistered calls are calls that do not contain consumer project identity. (Example: calls that do not contain an API key). By default, API methods do not allow unregistered calls, and each method call must be identified by a consumer project identity. Use this rule to allow/disallow unregistered calls. Example of an API that wants to allow unregistered calls for entire service. usage: rules: - selector: "*" allow_unregistered_calls: true Example of a method that wants to allow unregistered calls. usage: rules: - selector: "google.example.library.v1.LibraryService.CreateBook" allow_unregistered_calls: true
class UsageRule {
  /// If true, the selected method allows unregistered calls, e.g. calls that don't identify any user or application.
  final bool? allowUnregisteredCalls;

  /// Selects the methods to which this rule applies. Use '*' to indicate all methods in all APIs. Refer to selector for syntax details.
  final String? selector;

  /// If true, the selected method should skip service control and the control plane features, such as quota and billing, will not be available. This flag is used by Google Cloud Endpoints to bypass checks for internal methods, such as service health check methods.
  final bool? skipServiceControl;

  /// Creates a new [UsageRule].
  /// [allowUnregisteredCalls] If true, the selected method allows unregistered calls, e.g. calls that don't identify any user or application.
  /// [selector] Selects the methods to which this rule applies. Use '*' to indicate all methods in all APIs. Refer to selector for syntax details.
  /// [skipServiceControl] If true, the selected method should skip service control and the control plane features, such as quota and billing, will not be available. This flag is used by Google Cloud Endpoints to bypass checks for internal methods, such as service health check methods.
  UsageRule({
    this.allowUnregisteredCalls,
    this.selector,
    this.skipServiceControl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowUnregisteredCallsValue = allowUnregisteredCalls;
    if (allowUnregisteredCallsValue != null) {
      map['allowUnregisteredCalls'] = allowUnregisteredCallsValue;
    }
    final selectorValue = selector;
    if (selectorValue != null) {
      map['selector'] = selectorValue;
    }
    final skipServiceControlValue = skipServiceControl;
    if (skipServiceControlValue != null) {
      map['skipServiceControl'] = skipServiceControlValue;
    }
    return map;
  }

  factory UsageRule.fromMap(Map<String, dynamic> map) {
    return UsageRule(
      allowUnregisteredCalls: map['allowUnregisteredCalls'] == null
          ? null
          : map['allowUnregisteredCalls'] as bool,
      selector: map['selector'] == null ? null : map['selector'] as String,
      skipServiceControl: map['skipServiceControl'] == null
          ? null
          : map['skipServiceControl'] as bool,
    );
  }
}
