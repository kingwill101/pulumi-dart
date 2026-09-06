// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_instance_properties.dart';

/// {@template pulumi_awsconnector_ec2_instance_args_doc}
/// The set of arguments for Ec2Instance.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_ec2_instance_args_doc}
class Ec2InstanceArgs {
  /// The resource-specific properties for this resource.
  final pulumi.Input<Ec2InstanceProperties?>? properties;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [Ec2InstanceArgs].
  /// [properties] The resource-specific properties for this resource.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  const Ec2InstanceArgs({
    this.properties,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<Ec2InstanceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceUri': resourceUri,
    };
  }

  factory Ec2InstanceArgs.fromMap(Map<String, dynamic> map) {
    return Ec2InstanceArgs(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Ec2InstanceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}
