// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThingTypeProperties {
  /// The description of the thing type.
  final pulumi.Input<String>? description;

  /// A list of searchable thing attribute names.
  final pulumi.Input<List<String>>? searchableAttributes;

  /// Creates a new [ThingTypeProperties].
  /// [description] The description of the thing type.
  /// [searchableAttributes] A list of searchable thing attribute names.
  ThingTypeProperties({this.description, this.searchableAttributes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'searchableAttributes': ?searchableAttributes,
    };
  }

  factory ThingTypeProperties.fromMap(Map<String, dynamic> map) {
    return ThingTypeProperties(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      searchableAttributes: (() {
        final guardedValue = map['searchableAttributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
