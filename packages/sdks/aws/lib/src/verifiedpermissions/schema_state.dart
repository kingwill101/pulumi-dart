// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_definition.dart';

/// Input properties used for looking up and filtering Schema resources.
class SchemaState {
  /// The definition of the schema.
  final pulumi.Input<SchemaDefinition>? definition;
  /// (Optional) Identifies the namespaces of the entities referenced by this schema.
  final pulumi.Input<List<String>>? namespaces;
  /// The ID of the Policy Store.
  final pulumi.Input<String>? policyStoreId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [SchemaState].
  /// [definition] The definition of the schema.
  /// [namespaces] (Optional) Identifies the namespaces of the entities referenced by this schema.
  /// [policyStoreId] The ID of the Policy Store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  SchemaState({
    pulumi.Output<SchemaDefinition>? definition,
    pulumi.Output<List<String>>? namespaces,
    pulumi.Output<String>? policyStoreId,
    pulumi.Output<String>? region,
  }) :
      definition = pulumi.Input.asOptionalInput<SchemaDefinition>(definition),
      namespaces = pulumi.Input.asOptionalInput<List<String>>(namespaces),
      policyStoreId = pulumi.Input.asOptionalInput<String>(policyStoreId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': ?pulumi.Input.mapOptionalInputValue<SchemaDefinition, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'namespaces': ?namespaces,
      'policyStoreId': ?policyStoreId,
      'region': ?region,
    };
  }

  factory SchemaState.fromMap(Map<String, dynamic> map) {
    return SchemaState(
      definition: map['definition'] == null ? null : pulumi.Output.create<SchemaDefinition>(SchemaDefinition.fromMap((map['definition'] as Map).cast<String, dynamic>())),
      namespaces: map['namespaces'] == null ? null : pulumi.Output.create<List<String>>((map['namespaces'] as List).cast<String>()),
      policyStoreId: map['policyStoreId'] == null ? null : pulumi.Output.create<String>(map['policyStoreId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

