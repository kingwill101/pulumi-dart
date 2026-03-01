// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zone_rrset_get_zone_rrset_args_doc}
/// Arguments for getZoneRrset.
/// {@endtemplate}
/// {@macro pulumi_index_get_zone_rrset_get_zone_rrset_args_doc}
class GetZoneRrsetArgs {
  /// ID of the Zone RRSet.
  final pulumi.Input<String>? id;
  /// Name of the Zone RRSet.
  final pulumi.Input<String>? name;
  /// Type of the Zone RRSet.
  final pulumi.Input<String>? type;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final pulumi.Input<String>? withSelector;
  /// ID or Name of the parent Zone.
  final pulumi.Input<String> zone;

  /// Creates a new [GetZoneRrsetArgs].
  /// [id] ID of the Zone RRSet.
  /// [name] Name of the Zone RRSet.
  /// [type] Type of the Zone RRSet.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  /// [zone] ID or Name of the parent Zone.
  GetZoneRrsetArgs({
    String? id,
    String? name,
    String? type,
    String? withSelector,
    required String zone,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      type = pulumi.Input.asOptionalInput<String>(type),
      withSelector = pulumi.Input.asOptionalInput<String>(withSelector),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'type': ?type,
      'withSelector': ?withSelector,
      'zone': zone,
    };
  }

  factory GetZoneRrsetArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneRrsetArgs(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      withSelector: map['withSelector'] == null ? null : map['withSelector'] as String,
      zone: map['zone'] as String,
    );
  }
}

