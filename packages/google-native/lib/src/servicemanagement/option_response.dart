// ignore_for_file: unused_element, unnecessary_cast

/// A protocol buffer option, which can be attached to a message, field, enumeration, etc.
class OptionResponse {
  /// The option's name. For protobuf built-in options (options defined in descriptor.proto), this is the short name. For example, `"map_entry"`. For custom options, it should be the fully-qualified name. For example, `"google.api.http"`.
  final String name;

  /// The option's value packed in an Any message. If the value is a primitive, the corresponding wrapper type defined in google/protobuf/wrappers.proto should be used. If the value is an enum, it should be stored as an int32 value using the google.protobuf.Int32Value type.
  final Map<String, String> value;

  /// Creates a new [OptionResponse].
  /// [name] The option's name. For protobuf built-in options (options defined in descriptor.proto), this is the short name. For example, `"map_entry"`. For custom options, it should be the fully-qualified name. For example, `"google.api.http"`.
  /// [value] The option's value packed in an Any message. If the value is a primitive, the corresponding wrapper type defined in google/protobuf/wrappers.proto should be used. If the value is an enum, it should be stored as an int32 value using the google.protobuf.Int32Value type.
  OptionResponse({required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory OptionResponse.fromMap(Map<String, dynamic> map) {
    return OptionResponse(
      name: map['name'] as String,
      value: (map['value'] as Map).cast<String, String>(),
    );
  }
}
