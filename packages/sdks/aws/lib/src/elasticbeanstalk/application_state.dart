// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_appversion_lifecycle.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  final pulumi.Input<ApplicationAppversionLifecycle?>? appversionLifecycle;
  /// The ARN assigned by AWS for this Elastic Beanstalk Application.
  final pulumi.Input<String?>? arn;
  /// Short description of the application
  final pulumi.Input<String?>? description;
  /// The name of the application, must be unique within your account
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of tags for the Elastic Beanstalk Application. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [ApplicationState].
  /// [appversionLifecycle] Optional.
  /// [arn] The ARN assigned by AWS for this Elastic Beanstalk Application.
  /// [description] Short description of the application
  /// [name] The name of the application, must be unique within your account
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of tags for the Elastic Beanstalk Application. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const ApplicationState({
    this.appversionLifecycle,
    this.arn,
    this.description,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appversionLifecycle': ?pulumi.Input.mapOptionalInputValue<ApplicationAppversionLifecycle, Map<String, dynamic>>(appversionLifecycle, (value) => value.toMap()),
      'arn': ?arn,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      appversionLifecycle: (() { final guardedValue = map['appversionLifecycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationAppversionLifecycle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
