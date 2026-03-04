// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ec2_instance_args_doc}
/// Arguments for getEc2Instance.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ec2_instance_args_doc}
class GetEc2InstanceArgs {
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetEc2InstanceArgs].
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  GetEc2InstanceArgs({required this.resourceUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceUri': resourceUri};
  }

  factory GetEc2InstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetEc2InstanceArgs(
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}
