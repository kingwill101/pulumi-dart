// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KxDatabase resources.
class KxDatabaseState {
  /// Amazon Resource Name (ARN) identifier of the KX database.
  final pulumi.Input<String>? arn;
  /// Timestamp at which the databse is created in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  final pulumi.Input<String>? createdTimestamp;
  /// Description of the KX database.
  final pulumi.Input<String>? description;
  /// Unique identifier for the KX environment.
  final pulumi.Input<String>? environmentId;
  /// Last timestamp at which the database was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  final pulumi.Input<String>? lastModifiedTimestamp;
  /// Name of the KX database.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [KxDatabaseState].
  /// [arn] Amazon Resource Name (ARN) identifier of the KX database.
  /// [createdTimestamp] Timestamp at which the databse is created in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  /// [description] Description of the KX database.
  /// [environmentId] Unique identifier for the KX environment.
  /// [lastModifiedTimestamp] Last timestamp at which the database was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  /// [name] Name of the KX database.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  KxDatabaseState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? environmentId,
    pulumi.Output<String>? lastModifiedTimestamp,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdTimestamp = pulumi.Input.asOptionalInput<String>(createdTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      lastModifiedTimestamp = pulumi.Input.asOptionalInput<String>(lastModifiedTimestamp),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdTimestamp': ?createdTimestamp,
      'description': ?description,
      'environmentId': ?environmentId,
      'lastModifiedTimestamp': ?lastModifiedTimestamp,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory KxDatabaseState.fromMap(Map<String, dynamic> map) {
    return KxDatabaseState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdTimestamp: map['createdTimestamp'] == null ? null : pulumi.Output.create<String>(map['createdTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      lastModifiedTimestamp: map['lastModifiedTimestamp'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTimestamp'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

