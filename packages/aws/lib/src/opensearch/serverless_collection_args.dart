// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_collection_timeouts.dart';

/// {@template pulumi_opensearch_serverless_collection_serverless_collection_args_doc}
/// The set of arguments for ServerlessCollection.
/// {@endtemplate}
/// {@macro pulumi_opensearch_serverless_collection_serverless_collection_args_doc}
class ServerlessCollectionArgs {
  /// Description of the collection.
  final pulumi.Input<String>? description;

  /// Name of the collection.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Indicates whether standby replicas should be used for a collection. One of `ENABLED` or `DISABLED`. Defaults to `ENABLED`.
  final pulumi.Input<String>? standbyReplicas;

  /// A map of tags to assign to the collection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ServerlessCollectionTimeouts>? timeouts;

  /// Type of collection. One of `SEARCH`, `TIMESERIES`, or `VECTORSEARCH`. Defaults to `TIMESERIES`.
  final pulumi.Input<String>? type;

  /// Creates a new [ServerlessCollectionArgs].
  /// [description] Description of the collection.
  /// [name] Name of the collection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [standbyReplicas] Indicates whether standby replicas should be used for a collection. One of `ENABLED` or `DISABLED`. Defaults to `ENABLED`.
  /// [tags] A map of tags to assign to the collection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [type] Type of collection. One of `SEARCH`, `TIMESERIES`, or `VECTORSEARCH`. Defaults to `TIMESERIES`.
  ServerlessCollectionArgs({
    String? description,
    String? name,
    String? region,
    String? standbyReplicas,
    Map<String, String>? tags,
    ServerlessCollectionTimeouts? timeouts,
    String? type,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        standbyReplicas = pulumi.Input.asOptionalInput<String>(standbyReplicas),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timeouts = pulumi.Input.asOptionalInput<ServerlessCollectionTimeouts>(
            timeouts),
        type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final standbyReplicasValue = standbyReplicas;
    if (standbyReplicasValue != null) {
      map['standbyReplicas'] = standbyReplicasValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ServerlessCollectionTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ServerlessCollectionArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessCollectionArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      standbyReplicas: map['standbyReplicas'] == null
          ? null
          : map['standbyReplicas'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : ServerlessCollectionTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
