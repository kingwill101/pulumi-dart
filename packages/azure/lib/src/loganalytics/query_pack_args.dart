// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loganalytics_query_pack_query_pack_args_doc}
/// The set of arguments for QueryPack.
/// {@endtemplate}
/// {@macro pulumi_loganalytics_query_pack_query_pack_args_doc}
class QueryPackArgs {
  /// The Azure Region where the Log Analytics Query Pack should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Log Analytics Query Pack. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Log Analytics Query Pack should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Log Analytics Query Pack.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [QueryPackArgs].
  /// [location] The Azure Region where the Log Analytics Query Pack should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Log Analytics Query Pack. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Log Analytics Query Pack should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Log Analytics Query Pack.
  QueryPackArgs({
    String? location,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory QueryPackArgs.fromMap(Map<String, dynamic> map) {
    return QueryPackArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

