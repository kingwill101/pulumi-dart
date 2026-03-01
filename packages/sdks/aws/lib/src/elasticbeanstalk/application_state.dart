// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_appversion_lifecycle.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  final pulumi.Input<ApplicationAppversionLifecycle>? appversionLifecycle;
  /// The ARN assigned by AWS for this Elastic Beanstalk Application.
  final pulumi.Input<String>? arn;
  /// Short description of the application
  final pulumi.Input<String>? description;
  /// The name of the application, must be unique within your account
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of tags for the Elastic Beanstalk Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ApplicationState].
  /// [appversionLifecycle] Optional.
  /// [arn] The ARN assigned by AWS for this Elastic Beanstalk Application.
  /// [description] Short description of the application
  /// [name] The name of the application, must be unique within your account
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of tags for the Elastic Beanstalk Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ApplicationState({
    pulumi.Output<ApplicationAppversionLifecycle>? appversionLifecycle,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      appversionLifecycle = pulumi.Input.asOptionalInput<ApplicationAppversionLifecycle>(appversionLifecycle),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      appversionLifecycle: map['appversionLifecycle'] == null ? null : pulumi.Output.create<ApplicationAppversionLifecycle>(ApplicationAppversionLifecycle.fromMap((map['appversionLifecycle'] as Map).cast<String, dynamic>())),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

