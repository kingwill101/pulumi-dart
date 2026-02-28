// ignore_for_file: unused_element, unnecessary_cast

class StackSetAutoDeployment {
  /// Whether or not auto-deployment is enabled.
  final bool? enabled;

  /// Whether or not to retain stacks when the account is removed.
  final bool? retainStacksOnAccountRemoval;

  /// Creates a new [StackSetAutoDeployment].
  /// [enabled] Whether or not auto-deployment is enabled.
  /// [retainStacksOnAccountRemoval] Whether or not to retain stacks when the account is removed.
  StackSetAutoDeployment({
    this.enabled,
    this.retainStacksOnAccountRemoval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final retainStacksOnAccountRemovalValue = retainStacksOnAccountRemoval;
    if (retainStacksOnAccountRemovalValue != null) {
      map['retainStacksOnAccountRemoval'] = retainStacksOnAccountRemovalValue;
    }
    return map;
  }

  factory StackSetAutoDeployment.fromMap(Map<String, dynamic> map) {
    return StackSetAutoDeployment(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      retainStacksOnAccountRemoval: map['retainStacksOnAccountRemoval'] == null
          ? null
          : map['retainStacksOnAccountRemoval'] as bool,
    );
  }
}
