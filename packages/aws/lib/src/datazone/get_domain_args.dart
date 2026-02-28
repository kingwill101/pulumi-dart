// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datazone_get_domain_get_domain_args_doc}
/// Arguments for getDomain.
/// {@endtemplate}
/// {@macro pulumi_datazone_get_domain_get_domain_args_doc}
class GetDomainArgs {
  /// ID of the Domain. One of `name` or `id` is required
  final pulumi.Input<String>? id;

  /// Name of the Domain. One of `name` or `id` is required.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetDomainArgs].
  /// [id] ID of the Domain. One of `name` or `id` is required
  /// [name] Name of the Domain. One of `name` or `id` is required.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetDomainArgs({
    String? id,
    String? name,
    String? region,
  })  : id = pulumi.Input.asOptionalInput<String>(id),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainArgs(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
