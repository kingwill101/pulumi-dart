import 'package:pulumi/pulumi.dart' as pulumi;

/// The scope of dynamic vnet assignment.
enum DynamicVNetAssignmentScope implements pulumi.PulumiEnum<String> {
  none("none"),
  job("job");

  const DynamicVNetAssignmentScope(this.wireValue);
  @override
  final String wireValue;

  static DynamicVNetAssignmentScope fromValue(String value) {
    for (final item in DynamicVNetAssignmentScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicVNetAssignmentScope value: $value');
  }
}
