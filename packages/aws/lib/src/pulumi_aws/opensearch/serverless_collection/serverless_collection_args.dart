// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../serverless_collection_timeouts/serverless_collection_timeouts.dart';

/// The set of arguments for ServerlessCollection.
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

  ServerlessCollectionArgs({
    this.description,
    this.name,
    this.region,
    this.standbyReplicas,
    this.tags,
    this.timeouts,
    this.type,
  });

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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      standbyReplicas:
          pulumi.Input.asOptionalInput<String>(map['standbyReplicas']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<ServerlessCollectionTimeouts>(
          map['timeouts']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
