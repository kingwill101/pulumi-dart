// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_query_pack_args_doc}
/// The set of arguments for QueryPack.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_query_pack_args_doc}
class QueryPackArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the Log Analytics QueryPack resource.
  final pulumi.Input<String>? queryPackName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [QueryPackArgs].
  /// [location] The geo-location where the resource lives
  /// [queryPackName] The name of the Log Analytics QueryPack resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  QueryPackArgs({
    String? location,
    String? queryPackName,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      queryPackName = pulumi.Input.asOptionalInput<String>(queryPackName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'queryPackName': ?queryPackName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory QueryPackArgs.fromMap(Map<String, dynamic> map) {
    return QueryPackArgs(
      location: map['location'] == null ? null : map['location'] as String,
      queryPackName: map['queryPackName'] == null ? null : map['queryPackName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

