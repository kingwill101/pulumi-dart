// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_environment_entry_args_doc}
/// The set of arguments for EnvironmentEntry.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_environment_entry_args_doc}
class EnvironmentEntryArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> keyvaluemapId;
  /// Resource URI that can be used to identify the scope of the key value map entries.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// Data or payload that is being retrieved and associated with the unique key.
  final pulumi.Input<String> value;

  /// Creates a new [EnvironmentEntryArgs].
  /// [environmentId] Required.
  /// [keyvaluemapId] Required.
  /// [name] Resource URI that can be used to identify the scope of the key value map entries.
  /// [organizationId] Required.
  /// [value] Data or payload that is being retrieved and associated with the unique key.
  EnvironmentEntryArgs({
    required String environmentId,
    required String keyvaluemapId,
    String? name,
    required String organizationId,
    required String value,
  }) :
      environmentId = pulumi.Input.asInput<String>(environmentId),
      keyvaluemapId = pulumi.Input.asInput<String>(keyvaluemapId),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'keyvaluemapId': keyvaluemapId,
      'name': ?name,
      'organizationId': organizationId,
      'value': value,
    };
  }

  factory EnvironmentEntryArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentEntryArgs(
      environmentId: map['environmentId'] as String,
      keyvaluemapId: map['keyvaluemapId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
      value: map['value'] as String,
    );
  }
}

