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
    this.calculatorArn,
    this.calculatorName,
    this.createTime,
    this.dataSource,
    this.description,
    this.region,
    this.tags,
    this.tagsAll,
    this.updateTime,
  });

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
      calculatorArn: (() {
        final guardedValue = map['calculatorArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      calculatorName: (() {
        final guardedValue = map['calculatorName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataSource: (() {
        final guardedValue = map['dataSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
