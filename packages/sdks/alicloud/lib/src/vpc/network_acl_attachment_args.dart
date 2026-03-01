// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_acl_attachment_resource.dart';

/// {@template pulumi_vpc_network_acl_attachment_network_acl_attachment_args_doc}
/// The set of arguments for NetworkAclAttachment.
/// {@endtemplate}
/// {@macro pulumi_vpc_network_acl_attachment_network_acl_attachment_args_doc}
class NetworkAclAttachmentArgs {
  /// The id of the network acl, the field can't be changed.
  final pulumi.Input<String> networkAclId;
  /// List of the resources associated with the network acl. The details see Block Resources.
  final pulumi.Input<List<NetworkAclAttachmentResource>> resources;

  /// Creates a new [NetworkAclAttachmentArgs].
  /// [networkAclId] The id of the network acl, the field can't be changed.
  /// [resources] List of the resources associated with the network acl. The details see Block Resources.
  NetworkAclAttachmentArgs({
    required pulumi.Output<String> networkAclId,
    required pulumi.Output<List<NetworkAclAttachmentResource>> resources,
  }) :
      networkAclId = pulumi.Input.asInput<String>(networkAclId),
      resources = pulumi.Input.asInput<List<NetworkAclAttachmentResource>>(resources);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAclId': networkAclId,
      'resources': pulumi.Input.mapInputValue<List<NetworkAclAttachmentResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<NetworkAclAttachmentResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkAclAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return NetworkAclAttachmentArgs(
      networkAclId: pulumi.Output.create<String>(map['networkAclId'] as String),
      resources: pulumi.Output.create<List<NetworkAclAttachmentResource>>(pulumi.Input.decodeList<NetworkAclAttachmentResource>(map['resources'], (value) => NetworkAclAttachmentResource.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

