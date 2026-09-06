import 'package:pulumi/pulumi.dart' as pulumi;

/// A value to describe how the outbound dependencies of a HDInsight cluster are managed. 'Managed' means that the outbound dependencies are managed by the HDInsight service. 'External' means that the outbound dependencies are managed by a customer specific solution.
enum OutboundDependenciesManagedType implements pulumi.PulumiEnum<String> {
  valueManaged("Managed"),
  valueExternal("External");

  const OutboundDependenciesManagedType(this.wireValue);
  @override
  final String wireValue;

  static OutboundDependenciesManagedType fromValue(String value) {
    for (final item in OutboundDependenciesManagedType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OutboundDependenciesManagedType value: $value');
  }
}
