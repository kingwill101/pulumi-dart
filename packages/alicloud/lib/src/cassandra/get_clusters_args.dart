// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cassandra_get_clusters_get_clusters_args_doc}
/// Arguments for getClusters.
/// {@endtemplate}
/// {@macro pulumi_cassandra_get_clusters_get_clusters_args_doc}
class GetClustersArgs {
  /// The list of Cassandra cluster ids.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to apply to the cluster name.
  final pulumi.Input<String>? nameRegex;
  /// The name of file that can save the collection of clusters after running `pulumi preview`.
  final pulumi.Input<String>? outputFile;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetClustersArgs].
  /// [ids] The list of Cassandra cluster ids.
  /// [nameRegex] A regex string to apply to the cluster name.
  /// [outputFile] The name of file that can save the collection of clusters after running `pulumi preview`.
  /// [tags] A mapping of tags to assign to the resource.
  GetClustersArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    Map<String, String>? tags,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetClustersArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

