// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'k8s_slb_attachment_slb_config.dart';

/// {@template pulumi_edas_k8s_slb_attachment_k8s_slb_attachment_args_doc}
/// The set of arguments for K8sSlbAttachment.
/// {@endtemplate}
/// {@macro pulumi_edas_k8s_slb_attachment_k8s_slb_attachment_args_doc}
class K8sSlbAttachmentArgs {
  /// The ID of the EDAS k8s application to which you want to bind SLB instances.
  final pulumi.Input<String> appId;
  /// The configurations of SLB attachment, which is supported for multiple configurations. See `slb_configs` below.
  final pulumi.Input<List<K8sSlbAttachmentSlbConfig>>? slbConfigs;

  /// Creates a new [K8sSlbAttachmentArgs].
  /// [appId] The ID of the EDAS k8s application to which you want to bind SLB instances.
  /// [slbConfigs] The configurations of SLB attachment, which is supported for multiple configurations. See `slb_configs` below.
  K8sSlbAttachmentArgs({
    required String appId,
    List<K8sSlbAttachmentSlbConfig>? slbConfigs,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      slbConfigs = pulumi.Input.asOptionalInput<List<K8sSlbAttachmentSlbConfig>>(slbConfigs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'slbConfigs': ?pulumi.Input.mapOptionalInputValue<List<K8sSlbAttachmentSlbConfig>, List<Map<String, dynamic>>>(slbConfigs, (value) => pulumi.Input.encodeList<K8sSlbAttachmentSlbConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory K8sSlbAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return K8sSlbAttachmentArgs(
      appId: map['appId'] as String,
      slbConfigs: map['slbConfigs'] == null ? null : pulumi.Input.decodeList<K8sSlbAttachmentSlbConfig>(map['slbConfigs'], (value) => K8sSlbAttachmentSlbConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

