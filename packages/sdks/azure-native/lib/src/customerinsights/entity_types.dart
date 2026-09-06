import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of entity.
enum EntityTypes implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueProfile("Profile"),
  valueInteraction("Interaction"),
  valueRelationship("Relationship");

  const EntityTypes(this.wireValue);
  @override
  final String wireValue;

  static EntityTypes fromValue(String value) {
    for (final item in EntityTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTypes value: $value');
  }
}
