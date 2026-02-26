// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../schema_definition/schema_definition.dart';

/// The set of arguments for Schema.
class SchemaArgs3 {
  /// The definition of the schema.
  final Input<SchemaDefinition> definition;

  /// The ID of the Policy Store.
  final Input<String> policyStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  SchemaArgs3({
    required this.definition,
    required this.policyStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['definition'] =
        Input.mapInputValue<SchemaDefinition, Map<String, dynamic>>(
            definition, (value) => value.toMap());
    map['policyStoreId'] = policyStoreId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory SchemaArgs3.fromMap(Map<String, dynamic> map) {
    return SchemaArgs3(
      definition: Input.asInput<SchemaDefinition>(map['definition']),
      policyStoreId: Input.asInput<String>(map['policyStoreId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
