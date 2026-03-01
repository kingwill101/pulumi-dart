/// What action should be used to replace instances. See minimal_action.REPLACE
enum InstanceGroupManagerUpdatePolicyReplacementMethodComputeBeta {
  recreate("RECREATE"),
  substitute("SUBSTITUTE");

  const InstanceGroupManagerUpdatePolicyReplacementMethodComputeBeta(
    this.value,
  );
  final String value;

  static InstanceGroupManagerUpdatePolicyReplacementMethodComputeBeta fromValue(
    String value,
  ) {
    for (final item
        in InstanceGroupManagerUpdatePolicyReplacementMethodComputeBeta
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstanceGroupManagerUpdatePolicyReplacementMethodComputeBeta value: $value',
    );
  }
}
