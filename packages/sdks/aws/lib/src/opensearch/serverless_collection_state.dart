// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_collection_timeouts.dart';

/// Input properties used for looking up and filtering ServerlessCollection resources.
class ServerlessCollectionState {
  /// Amazon Resource Name (ARN) of the collection.
  final pulumi.Input<String>? arn;
  /// Collection-specific endpoint used to submit index, search, and data upload requests to an OpenSearch Serverless collection.
  final pulumi.Input<String>? collectionEndpoint;
  /// Collection-specific endpoint used to access OpenSearch Dashboards.
  final pulumi.Input<String>? dashboardEndpoint;
  /// Description of the collection.
  final pulumi.Input<String>? description;
  /// The ARN of the Amazon Web Services KMS key used to encrypt the collection.
  final pulumi.Input<String>? kmsKeyArn;
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
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ServerlessCollectionTimeouts>? timeouts;
  /// Type of collection. One of `SEARCH`, `TIMESERIES`, or `VECTORSEARCH`. Defaults to `TIMESERIES`.
  final pulumi.Input<String>? type;

  /// Creates a new [ServerlessCollectionState].
  /// [arn] Amazon Resource Name (ARN) of the collection.
  /// [collectionEndpoint] Collection-specific endpoint used to submit index, search, and data upload requests to an OpenSearch Serverless collection.
  /// [dashboardEndpoint] Collection-specific endpoint used to access OpenSearch Dashboards.
  /// [description] Description of the collection.
  /// [kmsKeyArn] The ARN of the Amazon Web Services KMS key used to encrypt the collection.
  /// [name] Name of the collection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [standbyReplicas] Indicates whether standby replicas should be used for a collection. One of `ENABLED` or `DISABLED`. Defaults to `ENABLED`.
  /// [tags] A map of tags to assign to the collection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  /// [type] Type of collection. One of `SEARCH`, `TIMESERIES`, or `VECTORSEARCH`. Defaults to `TIMESERIES`.
  ServerlessCollectionState({
    this.arn,
    this.collectionEndpoint,
    this.dashboardEndpoint,
    this.description,
    this.kmsKeyArn,
    this.name,
    this.region,
    this.standbyReplicas,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'collectionEndpoint': ?collectionEndpoint,
      'dashboardEndpoint': ?dashboardEndpoint,
      'description': ?description,
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'region': ?region,
      'standbyReplicas': ?standbyReplicas,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ServerlessCollectionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory ServerlessCollectionState.fromMap(Map<String, dynamic> map) {
    return ServerlessCollectionState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      collectionEndpoint: map['collectionEndpoint'] == null ? null : ((map['collectionEndpoint'] as String).input()).input(),
      dashboardEndpoint: map['dashboardEndpoint'] == null ? null : ((map['dashboardEndpoint'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : ((map['kmsKeyArn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      standbyReplicas: map['standbyReplicas'] == null ? null : ((map['standbyReplicas'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((ServerlessCollectionTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
    );
  }
}

