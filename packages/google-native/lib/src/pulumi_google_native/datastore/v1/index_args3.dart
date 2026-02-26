// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_datastore_admin_v1_indexed_property.dart';
import 'index_ancestor.dart';

/// The set of arguments for Index.
class IndexArgs3 {
  /// The index's ancestor mode. Must not be ANCESTOR_MODE_UNSPECIFIED.
  final Input<IndexAncestor> ancestor;

  /// The entity kind to which this index applies.
  final Input<String> kind;
  final Input<String>? project;

  /// An ordered sequence of property names and their index attributes. Requires: * A maximum of 100 properties.
  final Input<List<GoogleDatastoreAdminV1IndexedProperty>> properties;

  IndexArgs3({
    required this.ancestor,
    required this.kind,
    this.project,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ancestor'] = Input.mapInputValue<IndexAncestor, String>(
        ancestor, (value) => value.value);
    map['kind'] = kind;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['properties'] = Input.mapInputValue<
            List<GoogleDatastoreAdminV1IndexedProperty>,
            List<Map<String, dynamic>>>(
        properties,
        (value) => Input.encodeList<GoogleDatastoreAdminV1IndexedProperty,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory IndexArgs3.fromMap(Map<String, dynamic> map) {
    return IndexArgs3(
      ancestor: Input.asInput<IndexAncestor>(map['ancestor']),
      kind: Input.asInput<String>(map['kind']),
      project: Input.asOptionalInput<String>(map['project']),
      properties: Input.asInput<List<GoogleDatastoreAdminV1IndexedProperty>>(
          map['properties']),
    );
  }
}
