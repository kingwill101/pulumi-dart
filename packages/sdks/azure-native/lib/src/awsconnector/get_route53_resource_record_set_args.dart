// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_route53_resource_record_set_args_doc}
/// Arguments for getRoute53ResourceRecordSet.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_route53_resource_record_set_args_doc}
class GetRoute53ResourceRecordSetArgs {
  /// Name of Route53ResourceRecordSet
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRoute53ResourceRecordSetArgs].
  /// [name] Name of Route53ResourceRecordSet
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRoute53ResourceRecordSetArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRoute53ResourceRecordSetArgs.fromMap(Map<String, dynamic> map) {
    return GetRoute53ResourceRecordSetArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

