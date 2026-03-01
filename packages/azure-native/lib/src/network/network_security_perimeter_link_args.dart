// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_security_perimeter_link_args_doc}
/// The set of arguments for NetworkSecurityPerimeterLink.
/// {@endtemplate}
/// {@macro pulumi_network_network_security_perimeter_link_args_doc}
class NetworkSecurityPerimeterLinkArgs {
  /// Perimeter ARM Id for the remote NSP with which the link gets created in Auto-approval mode. It should be used when the NSP admin have Microsoft.Network/networkSecurityPerimeters/linkPerimeter/action permission on the remote NSP resource.
  final pulumi.Input<String>? autoApprovedRemotePerimeterResourceId;
  /// A message passed to the owner of the remote NSP link resource with this connection request. In case of Auto-approved flow, it is default to 'Auto Approved'. Restricted to 140 chars.
  final pulumi.Input<String>? description;
  /// The name of the NSP link.
  final pulumi.Input<String>? linkName;
  /// Local Inbound profile names to which Inbound is allowed. Use ['*'] to allow inbound to all profiles.
  final pulumi.Input<List<String>>? localInboundProfiles;
  /// The name of the network security perimeter.
  final pulumi.Input<String> networkSecurityPerimeterName;
  /// Remote Inbound profile names to which Inbound is allowed. Use ['*'] to allow inbound to all profiles. This property can only be updated in auto-approval mode.
  final pulumi.Input<List<String>>? remoteInboundProfiles;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [NetworkSecurityPerimeterLinkArgs].
  /// [autoApprovedRemotePerimeterResourceId] Perimeter ARM Id for the remote NSP with which the link gets created in Auto-approval mode. It should be used when the NSP admin have Microsoft.Network/networkSecurityPerimeters/linkPerimeter/action permission on the remote NSP resource.
  /// [description] A message passed to the owner of the remote NSP link resource with this connection request. In case of Auto-approved flow, it is default to 'Auto Approved'. Restricted to 140 chars.
  /// [linkName] The name of the NSP link.
  /// [localInboundProfiles] Local Inbound profile names to which Inbound is allowed. Use ['*'] to allow inbound to all profiles.
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [remoteInboundProfiles] Remote Inbound profile names to which Inbound is allowed. Use ['*'] to allow inbound to all profiles. This property can only be updated in auto-approval mode.
  /// [resourceGroupName] The name of the resource group.
  NetworkSecurityPerimeterLinkArgs({
    String? autoApprovedRemotePerimeterResourceId,
    String? description,
    String? linkName,
    List<String>? localInboundProfiles,
    required String networkSecurityPerimeterName,
    List<String>? remoteInboundProfiles,
    required String resourceGroupName,
  }) :
      autoApprovedRemotePerimeterResourceId = pulumi.Input.asOptionalInput<String>(autoApprovedRemotePerimeterResourceId),
      description = pulumi.Input.asOptionalInput<String>(description),
      linkName = pulumi.Input.asOptionalInput<String>(linkName),
      localInboundProfiles = pulumi.Input.asOptionalInput<List<String>>(localInboundProfiles),
      networkSecurityPerimeterName = pulumi.Input.asInput<String>(networkSecurityPerimeterName),
      remoteInboundProfiles = pulumi.Input.asOptionalInput<List<String>>(remoteInboundProfiles),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoApprovedRemotePerimeterResourceId': ?autoApprovedRemotePerimeterResourceId,
      'description': ?description,
      'linkName': ?linkName,
      'localInboundProfiles': ?localInboundProfiles,
      'networkSecurityPerimeterName': networkSecurityPerimeterName,
      'remoteInboundProfiles': ?remoteInboundProfiles,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory NetworkSecurityPerimeterLinkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterLinkArgs(
      autoApprovedRemotePerimeterResourceId: map['autoApprovedRemotePerimeterResourceId'] == null ? null : map['autoApprovedRemotePerimeterResourceId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      linkName: map['linkName'] == null ? null : map['linkName'] as String,
      localInboundProfiles: map['localInboundProfiles'] == null ? null : (map['localInboundProfiles'] as List).cast<String>(),
      networkSecurityPerimeterName: map['networkSecurityPerimeterName'] as String,
      remoteInboundProfiles: map['remoteInboundProfiles'] == null ? null : (map['remoteInboundProfiles'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

