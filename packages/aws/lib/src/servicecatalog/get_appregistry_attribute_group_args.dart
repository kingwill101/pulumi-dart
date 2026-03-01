// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_get_appregistry_attribute_group_get_appregistry_attribute_group_args_doc}
/// Arguments for getAppregistryAttributeGroup.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_get_appregistry_attribute_group_get_appregistry_attribute_group_args_doc}
class GetAppregistryAttributeGroupArgs {
  /// ARN of the Attribute Group to find.
  final pulumi.Input<String>? arn;

  /// ID of the Attribute Group to find.
  final pulumi.Input<String>? id;

  /// Name of the Attribute Group to find.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// > Exactly one of `arn`, `id`, or `name` must be set.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAppregistryAttributeGroupArgs].
  /// [arn] ARN of the Attribute Group to find.
  /// [id] ID of the Attribute Group to find.
  /// [name] Name of the Attribute Group to find.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetAppregistryAttributeGroupArgs({
    String? arn,
    String? id,
    String? name,
    String? region,
  }) : arn = pulumi.Input.asOptionalInput<String>(arn),
       id = pulumi.Input.asOptionalInput<String>(id),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetAppregistryAttributeGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetAppregistryAttributeGroupArgs(
      arn: map['arn'] == null ? null : map['arn'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
