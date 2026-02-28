// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getWorkloadIdentityPool.
class GetWorkloadIdentityPoolResult {
  /// A description of the pool. Cannot exceed 256 characters.
  final String description;

  /// Whether the pool is disabled. You cannot use a disabled pool to exchange tokens, or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  final bool disabled;

  /// A display name for the pool. Cannot exceed 32 characters.
  final String displayName;

  /// Time after which the workload identity pool will be permanently purged and cannot be recovered.
  final String expireTime;

  /// The resource name of the pool.
  final String name;

  /// The state of the pool.
  final String state;

  /// Creates a new [GetWorkloadIdentityPoolResult].
  /// [description] A description of the pool. Cannot exceed 256 characters.
  /// [disabled] Whether the pool is disabled. You cannot use a disabled pool to exchange tokens, or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  /// [displayName] A display name for the pool. Cannot exceed 32 characters.
  /// [expireTime] Time after which the workload identity pool will be permanently purged and cannot be recovered.
  /// [name] The resource name of the pool.
  /// [state] The state of the pool.
  GetWorkloadIdentityPoolResult({
    required this.description,
    required this.disabled,
    required this.displayName,
    required this.expireTime,
    required this.name,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['disabled'] = disabled;
    map['displayName'] = displayName;
    map['expireTime'] = expireTime;
    map['name'] = name;
    map['state'] = state;
    return map;
  }

  factory GetWorkloadIdentityPoolResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolResult(
      description: map['description'] as String,
      disabled: map['disabled'] as bool,
      displayName: map['displayName'] as String,
      expireTime: map['expireTime'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
    );
  }
}
