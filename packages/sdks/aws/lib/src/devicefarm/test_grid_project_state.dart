// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'test_grid_project_vpc_config.dart';

/// Input properties used for looking up and filtering TestGridProject resources.
class TestGridProjectState {
  /// ARN of this Test Grid Project.
  final pulumi.Input<String?>? arn;
  /// Human-readable description of the project.
  final pulumi.Input<String?>? description;
  /// The name of the Selenium testing project.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// The VPC security groups and subnets that are attached to a project. See VPC Config below.
  final pulumi.Input<TestGridProjectVpcConfig?>? vpcConfig;

  /// Creates a new [TestGridProjectState].
  /// [arn] ARN of this Test Grid Project.
  /// [description] Human-readable description of the project.
  /// [name] The name of the Selenium testing project.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [vpcConfig] The VPC security groups and subnets that are attached to a project. See VPC Config below.
  const TestGridProjectState({
    this.arn,
    this.description,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<TestGridProjectVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory TestGridProjectState.fromMap(Map<String, dynamic> map) {
    return TestGridProjectState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TestGridProjectVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
