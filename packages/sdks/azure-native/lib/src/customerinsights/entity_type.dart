import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of target entity.
enum EntityType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueProfile("Profile"),
  valueInteraction("Interaction"),
  valueRelationship("Relationship");

  const EntityType(this.wireValue);
  @override
  final String wireValue;

  static EntityType fromValue(String value) {
    for (final item in EntityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityType value: $value');
  }
}
