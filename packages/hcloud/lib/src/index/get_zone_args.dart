// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zone_get_zone_args_doc}
/// Arguments for getZone.
/// {@endtemplate}
/// {@macro pulumi_index_get_zone_get_zone_args_doc}
class GetZoneArgs {
  /// ID of the Zone.
  final pulumi.Input<int>? id;
  /// Name of the Zone.
  final pulumi.Input<String>? name;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetZoneArgs].
  /// [id] ID of the Zone.
  /// [name] Name of the Zone.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  GetZoneArgs({
    int? id,
    String? name,
    String? withSelector,
  }) :
      id = pulumi.Input.asOptionalInput<int>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      withSelector = pulumi.Input.asOptionalInput<String>(withSelector);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'withSelector': ?withSelector,
    };
  }

  factory GetZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneArgs(
      id: map['id'] == null ? null : map['id'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      withSelector: map['withSelector'] == null ? null : map['withSelector'] as String,
    );
  }
}

