// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spaces_key_grant.dart';

/// {@template pulumi_index_spaces_key_spaces_key_args_doc}
/// The set of arguments for SpacesKey.
/// {@endtemplate}
/// {@macro pulumi_index_spaces_key_spaces_key_args_doc}
class SpacesKeyArgs {
  /// A grant for the key (documented below).
  final pulumi.Input<List<SpacesKeyGrant>>? grants;
  /// The name of the key
  final pulumi.Input<String>? name;

  /// Creates a new [SpacesKeyArgs].
  /// [grants] A grant for the key (documented below).
  /// [name] The name of the key
  SpacesKeyArgs({
    List<SpacesKeyGrant>? grants,
    String? name,
  }) :
      grants = pulumi.Input.asOptionalInput<List<SpacesKeyGrant>>(grants),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grants': ?pulumi.Input.mapOptionalInputValue<List<SpacesKeyGrant>, List<Map<String, dynamic>>>(grants, (value) => pulumi.Input.encodeList<SpacesKeyGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory SpacesKeyArgs.fromMap(Map<String, dynamic> map) {
    return SpacesKeyArgs(
      grants: map['grants'] == null ? null : pulumi.Input.decodeList<SpacesKeyGrant>(map['grants'], (value) => SpacesKeyGrant.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

