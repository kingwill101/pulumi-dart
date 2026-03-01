// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_encryption_configuration.dart';

/// Input properties used for looking up and filtering Activity resources.
class ActivityState {
  /// Amazon Resource Name (ARN) of the activity.
  final pulumi.Input<String>? arn;
  /// Date the activity was created.
  final pulumi.Input<String>? creationDate;
  /// Defines what encryption configuration is used to encrypt data in the Activity. For more information see the section [Data at rest encyption](https://docs.aws.amazon.com/step-functions/latest/dg/encryption-at-rest.html) in the AWS Step Functions User Guide.
  final pulumi.Input<ActivityEncryptionConfiguration>? encryptionConfiguration;
  /// The name of the activity to create.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ActivityState].
  /// [arn] Amazon Resource Name (ARN) of the activity.
  /// [creationDate] Date the activity was created.
  /// [encryptionConfiguration] Defines what encryption configuration is used to encrypt data in the Activity. For more information see the section [Data at rest encyption](https://docs.aws.amazon.com/step-functions/latest/dg/encryption-at-rest.html) in the AWS Step Functions User Guide.
  /// [name] The name of the activity to create.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ActivityState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? creationDate,
    pulumi.Output<ActivityEncryptionConfiguration>? encryptionConfiguration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      creationDate = pulumi.Input.asOptionalInput<String>(creationDate),
      encryptionConfiguration = pulumi.Input.asOptionalInput<ActivityEncryptionConfiguration>(encryptionConfiguration),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationDate': ?creationDate,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<ActivityEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ActivityState.fromMap(Map<String, dynamic> map) {
    return ActivityState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      creationDate: map['creationDate'] == null ? null : pulumi.Output.create<String>(map['creationDate'] as String),
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : pulumi.Output.create<ActivityEncryptionConfiguration>(ActivityEncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

