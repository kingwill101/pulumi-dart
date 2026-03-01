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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? collectionEndpoint,
    pulumi.Output<String>? dashboardEndpoint,
    pulumi.Output<String>? description,
    pulumi.Output<String>? kmsKeyArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? standbyReplicas,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ServerlessCollectionTimeouts>? timeouts,
    pulumi.Output<String>? type,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      collectionEndpoint = pulumi.Input.asOptionalInput<String>(collectionEndpoint),
      dashboardEndpoint = pulumi.Input.asOptionalInput<String>(dashboardEndpoint),
      description = pulumi.Input.asOptionalInput<String>(description),
      kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      standbyReplicas = pulumi.Input.asOptionalInput<String>(standbyReplicas),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ServerlessCollectionTimeouts>(timeouts),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      collectionEndpoint: map['collectionEndpoint'] == null ? null : pulumi.Output.create<String>(map['collectionEndpoint'] as String),
      dashboardEndpoint: map['dashboardEndpoint'] == null ? null : pulumi.Output.create<String>(map['dashboardEndpoint'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['kmsKeyArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      standbyReplicas: map['standbyReplicas'] == null ? null : pulumi.Output.create<String>(map['standbyReplicas'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ServerlessCollectionTimeouts>(ServerlessCollectionTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

