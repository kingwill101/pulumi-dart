// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_encryption_configuration.dart';

/// {@template pulumi_sfn_activity_activity_args_doc}
/// The set of arguments for Activity.
/// {@endtemplate}
/// {@macro pulumi_sfn_activity_activity_args_doc}
class ActivityArgs {
  /// Defines what encryption configuration is used to encrypt data in the Activity. For more information see the section [Data at rest encyption](https://docs.aws.amazon.com/step-functions/latest/dg/encryption-at-rest.html) in the AWS Step Functions User Guide.
  final pulumi.Input<ActivityEncryptionConfiguration>? encryptionConfiguration;

  /// The name of the activity to create.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ActivityArgs].
  /// [encryptionConfiguration] Defines what encryption configuration is used to encrypt data in the Activity. For more information see the section [Data at rest encyption](https://docs.aws.amazon.com/step-functions/latest/dg/encryption-at-rest.html) in the AWS Step Functions User Guide.
  /// [name] The name of the activity to create.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ActivityArgs({
    ActivityEncryptionConfiguration? encryptionConfiguration,
    String? name,
    String? region,
    Map<String, String>? tags,
  })  : encryptionConfiguration =
            pulumi.Input.asOptionalInput<ActivityEncryptionConfiguration>(
                encryptionConfiguration),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionConfigurationValue = encryptionConfiguration;
    if (encryptionConfigurationValue != null) {
      map['encryptionConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ActivityEncryptionConfiguration, Map<String, dynamic>>(
          encryptionConfigurationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ActivityArgs.fromMap(Map<String, dynamic> map) {
    return ActivityArgs(
      encryptionConfiguration: map['encryptionConfiguration'] == null
          ? null
          : ActivityEncryptionConfiguration.fromMap(
              (map['encryptionConfiguration'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
