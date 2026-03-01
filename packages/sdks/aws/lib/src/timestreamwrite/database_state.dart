// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Database resources.
class DatabaseState {
  /// The ARN that uniquely identifies this database.
  final pulumi.Input<String>? arn;
  /// The name of the Timestream database. Minimum length of 3. Maximum length of 64.
  final pulumi.Input<String>? databaseName;
  /// The ARN (not Alias ARN) of the KMS key to be used to encrypt the data stored in the database. If the KMS key is not specified, the database will be encrypted with a Timestream managed KMS key located in your account. Refer to [AWS managed KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk) for more info.
  final pulumi.Input<String>? kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The total number of tables found within the Timestream database.
  final pulumi.Input<int>? tableCount;
  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DatabaseState].
  /// [arn] The ARN that uniquely identifies this database.
  /// [databaseName] The name of the Timestream database. Minimum length of 3. Maximum length of 64.
  /// [kmsKeyId] The ARN (not Alias ARN) of the KMS key to be used to encrypt the data stored in the database. If the KMS key is not specified, the database will be encrypted with a Timestream managed KMS key located in your account. Refer to [AWS managed KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk) for more info.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableCount] The total number of tables found within the Timestream database.
  /// [tags] Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  DatabaseState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? databaseName,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? region,
    pulumi.Output<int>? tableCount,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tableCount = pulumi.Input.asOptionalInput<int>(tableCount),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'databaseName': ?databaseName,
      'kmsKeyId': ?kmsKeyId,
      'region': ?region,
      'tableCount': ?tableCount,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DatabaseState.fromMap(Map<String, dynamic> map) {
    return DatabaseState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tableCount: map['tableCount'] == null ? null : pulumi.Output.create<int>(map['tableCount'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

