// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_encryption_configuration.dart';

/// {@template pulumi_sfn_activity_activity_args_doc}
/// The set of arguments for Activity.
/// {@endtemplate}
/// {@macro pulumi_sfn_activity_activity_args_doc}
class ActivityArgs {
  /// Defines what encryption configuration is used to encrypt data in the Activity. For more information see the section [Data at rest encyption](https://docs.aws.amazon.com/step-functions/latest/dg/encryption-at-rest.html) in the AWS Step Functions User Guide.
  final pulumi.Input<ActivityEncryptionConfiguration?>? encryptionConfiguration;
  /// The name of the activity to create.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ActivityArgs].
  /// [encryptionConfiguration] Defines what encryption configuration is used to encrypt data in the Activity. For more information see the section [Data at rest encyption](https://docs.aws.amazon.com/step-functions/latest/dg/encryption-at-rest.html) in the AWS Step Functions User Guide.
  /// [name] The name of the activity to create.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ActivityArgs({
    this.encryptionConfiguration,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<ActivityEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ActivityArgs.fromMap(Map<String, dynamic> map) {
    return ActivityArgs(
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActivityEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
