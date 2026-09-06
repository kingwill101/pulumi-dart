import 'package:pulumi/pulumi.dart' as pulumi;

/// The restriction level applied to the cluster's node resource group. If not specified, the default is 'Unrestricted'
enum RestrictionLevel implements pulumi.PulumiEnum<String> {
  valueUnrestricted("Unrestricted"),
  valueReadOnly("ReadOnly");

  const RestrictionLevel(this.wireValue);
  @override
  final String wireValue;

  static RestrictionLevel fromValue(String value) {
    for (final item in RestrictionLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RestrictionLevel value: $value');
  }
}
