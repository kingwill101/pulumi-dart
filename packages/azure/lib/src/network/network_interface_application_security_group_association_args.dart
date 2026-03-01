// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_interface_application_security_group_association_network_interface_application_security_group_association_args_doc}
/// The set of arguments for NetworkInterfaceApplicationSecurityGroupAssociation.
/// {@endtemplate}
/// {@macro pulumi_network_network_interface_application_security_group_association_network_interface_application_security_group_association_args_doc}
class NetworkInterfaceApplicationSecurityGroupAssociationArgs {
  /// The ID of the Application Security Group which this Network Interface which should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationSecurityGroupId;
  /// The ID of the Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String> networkInterfaceId;

  /// Creates a new [NetworkInterfaceApplicationSecurityGroupAssociationArgs].
  /// [applicationSecurityGroupId] The ID of the Application Security Group which this Network Interface which should be connected to. Changing this forces a new resource to be created.
  /// [networkInterfaceId] The ID of the Network Interface. Changing this forces a new resource to be created.
  NetworkInterfaceApplicationSecurityGroupAssociationArgs({
    required String applicationSecurityGroupId,
    required String networkInterfaceId,
  }) :
      applicationSecurityGroupId = pulumi.Input.asInput<String>(applicationSecurityGroupId),
      networkInterfaceId = pulumi.Input.asInput<String>(networkInterfaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationSecurityGroupId': applicationSecurityGroupId,
      'networkInterfaceId': networkInterfaceId,
    };
  }

  factory NetworkInterfaceApplicationSecurityGroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceApplicationSecurityGroupAssociationArgs(
      applicationSecurityGroupId: map['applicationSecurityGroupId'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
    );
  }
}

