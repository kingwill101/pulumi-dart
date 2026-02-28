// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotAppVariableDeclarationSchema {
  /// (Output)
  /// Optional. Defines the schema for additional properties allowed in an object.
  /// The value must be a valid JSON string representing the Schema object.
  /// (Note: OpenAPI also allows a boolean, this definition expects a Schema JSON).
  final String? additionalProperties;

  /// (Output)
  /// Optional. The instance value should be valid against at least one of the schemas in this list.
  final String? anyOf;

  /// (Output)
  /// Optional. Default value of the data. Represents a dynamically typed value
  /// which can be either null, a number, a string, a boolean, a struct,
  /// or a list of values. The provided default value must be compatible
  /// with the defined 'type' and other schema constraints.
  final String? default_;

  /// (Output)
  /// A map of definitions for use by ref. Only allowed at the root of the schema.
  final String? defs;

  /// The description of the app version.
  final String? description;

  /// (Output)
  /// Possible values of the element of primitive type with enum format.
  /// Examples:
  /// 1. We can define direction as :
  /// {type:STRING, format:enum, enum:["EAST", NORTH", "SOUTH", "WEST"]}
  /// 2. We can define apartment number as :
  /// {type:INTEGER, format:enum, enum:["101", "201", "301"]}
  final List<String>? enums;

  /// (Output)
  /// Schema of the elements of Type.ARRAY.
  final String? items;

  /// (Output)
  /// Indicates if the value may be null.
  final bool? nullable;

  /// (Output)
  /// Optional. Schemas of initial elements of Type.ARRAY.
  final String? prefixItems;

  /// (Output)
  /// Properties of Type.OBJECT.
  final String? properties;

  /// (Output)
  /// Allows indirect references between schema nodes. The value should be a
  /// valid reference to a child of the root `defs`.
  /// For example, the following schema defines a reference to a schema node
  /// named "Pet":
  /// type: object
  /// properties:
  /// pet:
  /// ref: #/defs/Pet
  /// defs:
  /// Pet:
  /// type: object
  /// properties:
  /// name:
  /// type: string
  /// The value of the "pet" property is a reference to the schema node
  /// named "Pet".
  /// See details in
  /// https://json-schema.org/understanding-json-schema/structuring.
  final String? ref;

  /// (Output)
  /// Required properties of Type.OBJECT.
  final List<String>? requireds;

  /// (Output)
  /// The type of the data store. This field is readonly and populated by the
  /// server.
  /// Possible values:
  /// PUBLIC_WEB
  /// UNSTRUCTURED
  /// FAQ
  /// CONNECTOR
  final String? type;

  /// (Output)
  /// Indicate the items in the array must be unique. Only applies to TYPE.ARRAY.
  final bool? uniqueItems;

  /// Creates a new [AppVersionSnapshotAppVariableDeclarationSchema].
  /// [additionalProperties] (Output)
  /// [anyOf] (Output)
  /// [default_] (Output)
  /// [defs] (Output)
  /// [description] The description of the app version.
  /// [enums] (Output)
  /// [items] (Output)
  /// [nullable] (Output)
  /// [prefixItems] (Output)
  /// [properties] (Output)
  /// [ref] (Output)
  /// [requireds] (Output)
  /// [type] (Output)
  /// [uniqueItems] (Output)
  AppVersionSnapshotAppVariableDeclarationSchema({
    this.additionalProperties,
    this.anyOf,
    this.default_,
    this.defs,
    this.description,
    this.enums,
    this.items,
    this.nullable,
    this.prefixItems,
    this.properties,
    this.ref,
    this.requireds,
    this.type,
    this.uniqueItems,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalPropertiesValue = additionalProperties;
    if (additionalPropertiesValue != null) {
      map['additionalProperties'] = additionalPropertiesValue;
    }
    final anyOfValue = anyOf;
    if (anyOfValue != null) {
      map['anyOf'] = anyOfValue;
    }
    final default_Value = default_;
    if (default_Value != null) {
      map['default'] = default_Value;
    }
    final defsValue = defs;
    if (defsValue != null) {
      map['defs'] = defsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enumsValue = enums;
    if (enumsValue != null) {
      map['enums'] = enumsValue;
    }
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = itemsValue;
    }
    final nullableValue = nullable;
    if (nullableValue != null) {
      map['nullable'] = nullableValue;
    }
    final prefixItemsValue = prefixItems;
    if (prefixItemsValue != null) {
      map['prefixItems'] = prefixItemsValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    final refValue = ref;
    if (refValue != null) {
      map['ref'] = refValue;
    }
    final requiredsValue = requireds;
    if (requiredsValue != null) {
      map['requireds'] = requiredsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final uniqueItemsValue = uniqueItems;
    if (uniqueItemsValue != null) {
      map['uniqueItems'] = uniqueItemsValue;
    }
    return map;
  }

  factory AppVersionSnapshotAppVariableDeclarationSchema.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotAppVariableDeclarationSchema(
      additionalProperties: map['additionalProperties'] == null
          ? null
          : map['additionalProperties'] as String,
      anyOf: map['anyOf'] == null ? null : map['anyOf'] as String,
      default_: map['default'] == null ? null : map['default'] as String,
      defs: map['defs'] == null ? null : map['defs'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      enums:
          map['enums'] == null ? null : (map['enums'] as List).cast<String>(),
      items: map['items'] == null ? null : map['items'] as String,
      nullable: map['nullable'] == null ? null : map['nullable'] as bool,
      prefixItems:
          map['prefixItems'] == null ? null : map['prefixItems'] as String,
      properties:
          map['properties'] == null ? null : map['properties'] as String,
      ref: map['ref'] == null ? null : map['ref'] as String,
      requireds: map['requireds'] == null
          ? null
          : (map['requireds'] as List).cast<String>(),
      type: map['type'] == null ? null : map['type'] as String,
      uniqueItems:
          map['uniqueItems'] == null ? null : map['uniqueItems'] as bool,
    );
  }
}
