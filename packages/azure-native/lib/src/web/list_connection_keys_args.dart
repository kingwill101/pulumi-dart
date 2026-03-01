// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_connection_keys_args_doc}
/// Arguments for listConnectionKeys.
/// {@endtemplate}
/// {@macro pulumi_web_list_connection_keys_args_doc}
class ListConnectionKeysArgs {
  /// The connection name.
  final pulumi.Input<String> connectionName;
  /// Resource Id
  final pulumi.Input<String>? id;
  /// Kind of resource
  final pulumi.Input<String>? kind;
  /// Resource Location
  final pulumi.Input<String>? location;
  /// Resource Name
  final pulumi.Input<String>? name;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// Resource type
  final pulumi.Input<String>? type;
  /// time span for how long the keys will be valid
  final pulumi.Input<String>? validityTimeSpan;

  /// Creates a new [ListConnectionKeysArgs].
  /// [connectionName] The connection name.
  /// [id] Resource Id
  /// [kind] Kind of resource
  /// [location] Resource Location
  /// [name] Resource Name
  /// [resourceGroupName] The resource group name.
  /// [tags] Resource tags
  /// [type] Resource type
  /// [validityTimeSpan] time span for how long the keys will be valid
  ListConnectionKeysArgs({
    required String connectionName,
    String? id,
    String? kind,
    String? location,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
    String? type,
    String? validityTimeSpan,
  }) :
      connectionName = pulumi.Input.asInput<String>(connectionName),
      id = pulumi.Input.asOptionalInput<String>(id),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      validityTimeSpan = pulumi.Input.asOptionalInput<String>(validityTimeSpan);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'type': ?type,
      'validityTimeSpan': ?validityTimeSpan,
    };
  }

  factory ListConnectionKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListConnectionKeysArgs(
      connectionName: map['connectionName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
      validityTimeSpan: map['validityTimeSpan'] == null ? null : map['validityTimeSpan'] as String,
    );
  }
}

