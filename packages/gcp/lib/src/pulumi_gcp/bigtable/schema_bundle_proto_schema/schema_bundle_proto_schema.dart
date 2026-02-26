// ignore_for_file: unused_element, unnecessary_cast

class SchemaBundleProtoSchema {
  /// Base64 encoded content of the file.
  final String protoDescriptors;

  SchemaBundleProtoSchema({
    required this.protoDescriptors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['protoDescriptors'] = protoDescriptors;
    return map;
  }

  factory SchemaBundleProtoSchema.fromMap(Map<String, dynamic> map) {
    return SchemaBundleProtoSchema(
      protoDescriptors: map['protoDescriptors'] as String,
    );
  }
}
