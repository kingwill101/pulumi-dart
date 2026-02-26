/// What action should be used to replace instances. See minimal_action.REPLACE
enum InstanceGroupManagerUpdatePolicyReplacementMethod3 {
  recreate("RECREATE"),
  substitute("SUBSTITUTE");

  const InstanceGroupManagerUpdatePolicyReplacementMethod3(this.value);
  final String value;

  static InstanceGroupManagerUpdatePolicyReplacementMethod3 fromValue(
      String value) {
    for (final item
        in InstanceGroupManagerUpdatePolicyReplacementMethod3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceGroupManagerUpdatePolicyReplacementMethod3 value: $value');
  }
}
