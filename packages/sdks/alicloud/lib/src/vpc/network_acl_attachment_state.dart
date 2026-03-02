// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_acl_attachment_resource.dart';

/// Input properties used for looking up and filtering NetworkAclAttachment resources.
class NetworkAclAttachmentState {
  /// The id of the network acl, the field can't be changed.
  final pulumi.Input<String>? networkAclId;
  /// List of the resources associated with the network acl. The details see Block Resources.
  final pulumi.Input<List<NetworkAclAttachmentResource>>? resources;

  /// Creates a new [NetworkAclAttachmentState].
  /// [networkAclId] The id of the network acl, the field can't be changed.
  /// [resources] List of the resources associated with the network acl. The details see Block Resources.
  NetworkAclAttachmentState({
    this.networkAclId,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAclId': ?networkAclId,
      'resources': ?pulumi.Input.mapOptionalInputValue<List<NetworkAclAttachmentResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<NetworkAclAttachmentResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkAclAttachmentState.fromMap(Map<String, dynamic> map) {
    return NetworkAclAttachmentState(
      networkAclId: map['networkAclId'] == null ? null : (map['networkAclId']! as String).input(),
      resources: map['resources'] == null ? null : (pulumi.Input.decodeList<NetworkAclAttachmentResource>(map['resources']!, (value) => NetworkAclAttachmentResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

