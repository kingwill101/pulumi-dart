// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_netapp_volume_attachment_netapp_volume_attachment_args_doc}
/// The set of arguments for NetappVolumeAttachment.
/// {@endtemplate}
/// {@macro pulumi_avs_netapp_volume_attachment_netapp_volume_attachment_args_doc}
class NetappVolumeAttachmentArgs {
  /// The name which should be used for this Azure VMware Solution Private Cloud Netapp File Volume Attachment. Changing this forces a new Azure VMware Solution Private Cloud Netapp File Volume Attachment to be created.
  final pulumi.Input<String>? name;
  /// The netapp file volume for this Azure VMware Solution Private Cloud Netapp File Volume Attachment to connect to. Changing this forces a new Azure VMware Solution Private Cloud Netapp File Volume Attachment to be created.
  final pulumi.Input<String> netappVolumeId;
  /// The vmware cluster for this Azure VMware Solution Private Cloud Netapp File Volume Attachment to associated to. Changing this forces a new Azure VMware Solution Private Cloud Netapp File Volume Attachment to be created.
  ///
  /// > **Note:** please follow the prerequisites mentioned in this [article](https://learn.microsoft.com/en-us/azure/azure-vmware/attach-azure-netapp-files-to-azure-vmware-solution-hosts?tabs=azure-portal#prerequisites) before associating the netapp file volume to the Azure VMware Solution hosts.
  final pulumi.Input<String> vmwareClusterId;

  /// Creates a new [NetappVolumeAttachmentArgs].
  /// [name] The name which should be used for this Azure VMware Solution Private Cloud Netapp File Volume Attachment. Changing this forces a new Azure VMware Solution Private Cloud Netapp File Volume Attachment to be created.
  /// [netappVolumeId] The netapp file volume for this Azure VMware Solution Private Cloud Netapp File Volume Attachment to connect to. Changing this forces a new Azure VMware Solution Private Cloud Netapp File Volume Attachment to be created.
  /// [vmwareClusterId] The vmware cluster for this Azure VMware Solution Private Cloud Netapp File Volume Attachment to associated to. Changing this forces a new Azure VMware Solution Private Cloud Netapp File Volume Attachment to be created.
  NetappVolumeAttachmentArgs({
    String? name,
    required String netappVolumeId,
    required String vmwareClusterId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      netappVolumeId = pulumi.Input.asInput<String>(netappVolumeId),
      vmwareClusterId = pulumi.Input.asInput<String>(vmwareClusterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'netappVolumeId': netappVolumeId,
      'vmwareClusterId': vmwareClusterId,
    };
  }

  factory NetappVolumeAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return NetappVolumeAttachmentArgs(
      name: map['name'] == null ? null : map['name'] as String,
      netappVolumeId: map['netappVolumeId'] as String,
      vmwareClusterId: map['vmwareClusterId'] as String,
    );
  }
}

