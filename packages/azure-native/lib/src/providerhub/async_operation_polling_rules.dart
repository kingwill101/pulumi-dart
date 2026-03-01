// ignore_for_file: unused_element, unnecessary_cast


class AsyncOperationPollingRules {
  /// The additional options.
  final String? additionalOptions;
  /// The authorization actions.
  final List<String>? authorizationActions;

  /// Creates a new [AsyncOperationPollingRules].
  /// [additionalOptions] The additional options.
  /// [authorizationActions] The authorization actions.
  AsyncOperationPollingRules({
    this.additionalOptions,
    this.authorizationActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalOptions': ?additionalOptions,
      'authorizationActions': ?authorizationActions,
    };
  }

  factory AsyncOperationPollingRules.fromMap(Map<String, dynamic> map) {
    return AsyncOperationPollingRules(
      additionalOptions: map['additionalOptions'] == null ? null : map['additionalOptions'] as String,
      authorizationActions: map['authorizationActions'] == null ? null : (map['authorizationActions'] as List).cast<String>(),
    );
  }
}

