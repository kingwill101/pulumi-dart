// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../schema_definition/schema_definition.dart';

/// The set of arguments for Schema.
class SchemaVerifiedpermissionsArgs {
  /// The definition of the schema.
  final pulumi.Input<SchemaDefinition> definition;

  /// The ID of the Policy Store.
  final pulumi.Input<String> policyStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  SchemaVerifiedpermissionsArgs({
    required this.definition,
    required this.policyStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['definition'] =
        pulumi.Input.mapInputValue<SchemaDefinition, Map<String, dynamic>>(
            definition, (value) => value.toMap());
    map['policyStoreId'] = policyStoreId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory SchemaVerifiedpermissionsArgs.fromMap(Map<String, dynamic> map) {
    return SchemaVerifiedpermissionsArgs(
      definition: pulumi.Input.asInput<SchemaDefinition>(map['definition']),
      policyStoreId: pulumi.Input.asInput<String>(map['policyStoreId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
