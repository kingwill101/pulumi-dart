// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lex_get_slot_type_get_slot_type_args_doc}
/// Arguments for getSlotType.
/// {@endtemplate}
/// {@macro pulumi_lex_get_slot_type_get_slot_type_args_doc}
class GetSlotTypeArgs {
  /// Name of the slot type. The name is case sensitive.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Version of the slot type.
  final pulumi.Input<String>? version;

  /// Creates a new [GetSlotTypeArgs].
  /// [name] Name of the slot type. The name is case sensitive.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [version] Version of the slot type.
  GetSlotTypeArgs({required String name, String? region, String? version})
    : name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'version': ?version,
    };
  }

  factory GetSlotTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetSlotTypeArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
