// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_definition.dart';

/// {@template pulumi_verifiedpermissions_schema_schema_args_doc}
/// The set of arguments for Schema.
/// {@endtemplate}
/// {@macro pulumi_verifiedpermissions_schema_schema_args_doc}
class SchemaArgs {
  /// The definition of the schema.
  final pulumi.Input<SchemaDefinition> definition;
  /// The ID of the Policy Store.
  final pulumi.Input<String> policyStoreId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [SchemaArgs].
  /// [definition] The definition of the schema.
  /// [policyStoreId] The ID of the Policy Store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  SchemaArgs({
    required this.definition,
    required this.policyStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': pulumi.Input.mapInputValue<SchemaDefinition, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'policyStoreId': policyStoreId,
      'region': ?region,
    };
  }

  factory SchemaArgs.fromMap(Map<String, dynamic> map) {
    return SchemaArgs(
      definition: (SchemaDefinition.fromMap((map['definition']! as Map).cast<String, dynamic>())).input(),
      policyStoreId: (map['policyStoreId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

