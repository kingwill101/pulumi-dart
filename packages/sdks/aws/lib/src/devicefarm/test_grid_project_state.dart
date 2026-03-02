// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'test_grid_project_vpc_config.dart';

/// Input properties used for looking up and filtering TestGridProject resources.
class TestGridProjectState {
  /// The Amazon Resource Name of this Test Grid Project.
  final pulumi.Input<String>? arn;
  /// Human-readable description of the project.
  final pulumi.Input<String>? description;
  /// The name of the Selenium testing project.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The VPC security groups and subnets that are attached to a project. See VPC Config below.
  final pulumi.Input<TestGridProjectVpcConfig>? vpcConfig;

  /// Creates a new [TestGridProjectState].
  /// [arn] The Amazon Resource Name of this Test Grid Project.
  /// [description] Human-readable description of the project.
  /// [name] The name of the Selenium testing project.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcConfig] The VPC security groups and subnets that are attached to a project. See VPC Config below.
  TestGridProjectState({
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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      vpcConfig: map['vpcConfig'] == null ? null : ((TestGridProjectVpcConfig.fromMap((map['vpcConfig']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

