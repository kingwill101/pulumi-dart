// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_datastore_admin_v1_indexed_property.dart';
import 'index_ancestor.dart';

/// {@template pulumi_datastore_v1_index_args_doc}
/// The set of arguments for Index.
/// {@endtemplate}
/// {@macro pulumi_datastore_v1_index_args_doc}
class IndexArgs {
  /// The index's ancestor mode. Must not be ANCESTOR_MODE_UNSPECIFIED.
  final pulumi.Input<IndexAncestor> ancestor;
  /// The entity kind to which this index applies.
  final pulumi.Input<String> kind;
  final pulumi.Input<String>? project;
  /// An ordered sequence of property names and their index attributes. Requires: * A maximum of 100 properties.
  final pulumi.Input<List<GoogleDatastoreAdminV1IndexedProperty>> properties;

  /// Creates a new [IndexArgs].
  /// [ancestor] The index's ancestor mode. Must not be ANCESTOR_MODE_UNSPECIFIED.
  /// [kind] The entity kind to which this index applies.
  /// [project] Optional.
  /// [properties] An ordered sequence of property names and their index attributes. Requires: * A maximum of 100 properties.
  IndexArgs({
    required IndexAncestor ancestor,
    required String kind,
    String? project,
    required List<GoogleDatastoreAdminV1IndexedProperty> properties,
  }) :
      ancestor = pulumi.Input.asInput<IndexAncestor>(ancestor),
      kind = pulumi.Input.asInput<String>(kind),
      project = pulumi.Input.asOptionalInput<String>(project),
      properties = pulumi.Input.asInput<List<GoogleDatastoreAdminV1IndexedProperty>>(properties);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ancestor': pulumi.Input.mapInputValue<IndexAncestor, String>(ancestor, (value) => value.value),
      'kind': kind,
      'project': ?project,
      'properties': pulumi.Input.mapInputValue<List<GoogleDatastoreAdminV1IndexedProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<GoogleDatastoreAdminV1IndexedProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IndexArgs.fromMap(Map<String, dynamic> map) {
    return IndexArgs(
      ancestor: IndexAncestor.fromValue(map['ancestor'] as String),
      kind: map['kind'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      properties: pulumi.Input.decodeList<GoogleDatastoreAdminV1IndexedProperty>(map['properties'], (value) => GoogleDatastoreAdminV1IndexedProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

