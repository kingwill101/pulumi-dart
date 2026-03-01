// ignore_for_file: unused_element, unnecessary_cast


class AsyncOperationPollingRulesResponse {
  /// The additional options.
  final String? additionalOptions;
  /// The authorization actions.
  final List<String>? authorizationActions;

  /// Creates a new [AsyncOperationPollingRulesResponse].
  /// [additionalOptions] The additional options.
  /// [authorizationActions] The authorization actions.
  AsyncOperationPollingRulesResponse({
    this.additionalOptions,
    this.authorizationActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalOptions': ?additionalOptions,
      'authorizationActions': ?authorizationActions,
    };
  }

  factory AsyncOperationPollingRulesResponse.fromMap(Map<String, dynamic> map) {
    return AsyncOperationPollingRulesResponse(
      additionalOptions: map['additionalOptions'] == null ? null : map['additionalOptions'] as String,
      authorizationActions: map['authorizationActions'] == null ? null : (map['authorizationActions'] as List).cast<String>(),
    );
  }
}

