// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'test_grid_project_vpc_config.dart';

/// {@template pulumi_devicefarm_test_grid_project_test_grid_project_args_doc}
/// The set of arguments for TestGridProject.
/// {@endtemplate}
/// {@macro pulumi_devicefarm_test_grid_project_test_grid_project_args_doc}
class TestGridProjectArgs {
  /// Human-readable description of the project.
  final pulumi.Input<String>? description;
  /// The name of the Selenium testing project.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC security groups and subnets that are attached to a project. See VPC Config below.
  final pulumi.Input<TestGridProjectVpcConfig>? vpcConfig;

  /// Creates a new [TestGridProjectArgs].
  /// [description] Human-readable description of the project.
  /// [name] The name of the Selenium testing project.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcConfig] The VPC security groups and subnets that are attached to a project. See VPC Config below.
  TestGridProjectArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<TestGridProjectVpcConfig>? vpcConfig,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcConfig = pulumi.Input.asOptionalInput<TestGridProjectVpcConfig>(vpcConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<TestGridProjectVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory TestGridProjectArgs.fromMap(Map<String, dynamic> map) {
    return TestGridProjectArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcConfig: map['vpcConfig'] == null ? null : pulumi.Output.create<TestGridProjectVpcConfig>(TestGridProjectVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

