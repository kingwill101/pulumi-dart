// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_datastore_admin_v1_indexed_property.dart';
import 'index_ancestor.dart';

/// The set of arguments for Index.
class IndexDatastoreV1Args {
  /// The index's ancestor mode. Must not be ANCESTOR_MODE_UNSPECIFIED.
  final pulumi.Input<IndexAncestor> ancestor;

  /// The entity kind to which this index applies.
  final pulumi.Input<String> kind;
  final pulumi.Input<String>? project;

  /// An ordered sequence of property names and their index attributes. Requires: * A maximum of 100 properties.
  final pulumi.Input<List<GoogleDatastoreAdminV1IndexedProperty>> properties;

  IndexDatastoreV1Args({
    required this.ancestor,
    required this.kind,
    this.project,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ancestor'] = pulumi.Input.mapInputValue<IndexAncestor, String>(
        ancestor, (value) => value.value);
    map['kind'] = kind;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['properties'] = pulumi.Input.mapInputValue<
            List<GoogleDatastoreAdminV1IndexedProperty>,
            List<Map<String, dynamic>>>(
        properties,
        (value) => pulumi.Input.encodeList<
            GoogleDatastoreAdminV1IndexedProperty,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory IndexDatastoreV1Args.fromMap(Map<String, dynamic> map) {
    return IndexDatastoreV1Args(
      ancestor: pulumi.Input.asInput<IndexAncestor>(map['ancestor']),
      kind: pulumi.Input.asInput<String>(map['kind']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      properties:
          pulumi.Input.asInput<List<GoogleDatastoreAdminV1IndexedProperty>>(
              map['properties']),
    );
  }
}
