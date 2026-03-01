// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_instance_properties.dart';

/// {@template pulumi_awsconnector_ec2_instance_args_doc}
/// The set of arguments for Ec2Instance.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_ec2_instance_args_doc}
class Ec2InstanceArgs {
  /// The resource-specific properties for this resource.
  final pulumi.Input<Ec2InstanceProperties>? properties;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [Ec2InstanceArgs].
  /// [properties] The resource-specific properties for this resource.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  Ec2InstanceArgs({
    pulumi.Output<Ec2InstanceProperties>? properties,
    required pulumi.Output<String> resourceUri,
  }) :
      properties = pulumi.Input.asOptionalInput<Ec2InstanceProperties>(properties),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<Ec2InstanceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceUri': resourceUri,
    };
  }

  factory Ec2InstanceArgs.fromMap(Map<String, dynamic> map) {
    return Ec2InstanceArgs(
      properties: map['properties'] == null ? null : pulumi.Output.create<Ec2InstanceProperties>(Ec2InstanceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
    );
  }
}

