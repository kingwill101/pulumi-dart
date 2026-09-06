import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration to use NNI for Infrastructure Management. Example: True/False.
enum IsManagementType implements pulumi.PulumiEnum<String> {
  valueTrue("True"),
  valueFalse("False");

  const IsManagementType(this.wireValue);
  @override
  final String wireValue;

  static IsManagementType fromValue(String value) {
    for (final item in IsManagementType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsManagementType value: $value');
  }
}
