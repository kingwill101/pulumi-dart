/// What action should be used to replace instances. See minimal_action.REPLACE
enum InstanceGroupManagerUpdatePolicyReplacementMethod2 {
  recreate("RECREATE"),
  substitute("SUBSTITUTE");

  const InstanceGroupManagerUpdatePolicyReplacementMethod2(this.value);
  final String value;

  static InstanceGroupManagerUpdatePolicyReplacementMethod2 fromValue(
      String value) {
    for (final item
        in InstanceGroupManagerUpdatePolicyReplacementMethod2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceGroupManagerUpdatePolicyReplacementMethod2 value: $value');
  }
}
