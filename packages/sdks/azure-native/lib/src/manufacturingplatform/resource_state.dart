import 'package:pulumi/pulumi.dart' as pulumi;

/// State of the resource
enum ResourceState implements pulumi.PulumiEnum<String> {
  active("Active"),
  inactive("Inactive");

  const ResourceState(this.wireValue);
  @override
  final String wireValue;

  static ResourceState fromValue(String value) {
    for (final item in ResourceState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceState value: $value');
  }
}
