// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouteCalculation resources.
class RouteCalculationState {
  /// The Amazon Resource Name (ARN) for the Route calculator resource. Use the ARN when you specify a resource across AWS.
  final pulumi.Input<String>? calculatorArn;
  /// The name of the route calculator resource.
  final pulumi.Input<String>? calculatorName;
  /// The timestamp for when the route calculator resource was created in ISO 8601 format.
  final pulumi.Input<String>? createTime;
  /// Specifies the data provider of traffic and road network data.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? dataSource;
  /// The optional description for the route calculator resource.
  final pulumi.Input<String>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the route calculator. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The timestamp for when the route calculator resource was last update in ISO 8601.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [RouteCalculationState].
  /// [calculatorArn] The Amazon Resource Name (ARN) for the Route calculator resource. Use the ARN when you specify a resource across AWS.
  /// [calculatorName] The name of the route calculator resource.
  /// [createTime] The timestamp for when the route calculator resource was created in ISO 8601 format.
  /// [dataSource] Specifies the data provider of traffic and road network data.
  /// [description] The optional description for the route calculator resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the route calculator. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [updateTime] The timestamp for when the route calculator resource was last update in ISO 8601.
  RouteCalculationState({
    pulumi.Output<String>? calculatorArn,
    pulumi.Output<String>? calculatorName,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dataSource,
    pulumi.Output<String>? description,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? updateTime,
  }) :
      calculatorArn = pulumi.Input.asOptionalInput<String>(calculatorArn),
      calculatorName = pulumi.Input.asOptionalInput<String>(calculatorName),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataSource = pulumi.Input.asOptionalInput<String>(dataSource),
      description = pulumi.Input.asOptionalInput<String>(description),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'calculatorArn': ?calculatorArn,
      'calculatorName': ?calculatorName,
      'createTime': ?createTime,
      'dataSource': ?dataSource,
      'description': ?description,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'updateTime': ?updateTime,
    };
  }

  factory RouteCalculationState.fromMap(Map<String, dynamic> map) {
    return RouteCalculationState(
      calculatorArn: map['calculatorArn'] == null ? null : pulumi.Output.create<String>(map['calculatorArn'] as String),
      calculatorName: map['calculatorName'] == null ? null : pulumi.Output.create<String>(map['calculatorName'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataSource: map['dataSource'] == null ? null : pulumi.Output.create<String>(map['dataSource'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

