// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// A map contains the attributes of the instance. Check the [doc](https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html#API_RegisterInstance_RequestSyntax) for the supported attributes and syntax.
  final pulumi.Input<Map<String, String>>? attributes;
  /// The ID of the service instance.
  final pulumi.Input<String>? instanceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the service that you want to use to create the instance.
  final pulumi.Input<String>? serviceId;

  /// Creates a new [InstanceState].
  /// [attributes] A map contains the attributes of the instance. Check the [doc](https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html#API_RegisterInstance_RequestSyntax) for the supported attributes and syntax.
  /// [instanceId] The ID of the service instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceId] The ID of the service that you want to use to create the instance.
  InstanceState({
    pulumi.Output<Map<String, String>>? attributes,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceId,
  }) :
      attributes = pulumi.Input.asOptionalInput<Map<String, String>>(attributes),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'instanceId': ?instanceId,
      'region': ?region,
      'serviceId': ?serviceId,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      attributes: map['attributes'] == null ? null : pulumi.Output.create<Map<String, String>>((map['attributes'] as Map).cast<String, String>()),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<String>(map['serviceId'] as String),
    );
  }
}

