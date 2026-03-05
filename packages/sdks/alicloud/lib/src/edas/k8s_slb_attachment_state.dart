// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'k8s_slb_attachment_slb_config.dart';

/// Input properties used for looking up and filtering K8sSlbAttachment resources.
class K8sSlbAttachmentState {
  /// The ID of the EDAS k8s application to which you want to bind SLB instances.
  final pulumi.Input<String>? appId;
  /// The configurations of SLB attachment, which is supported for multiple configurations. See `slb_configs` below.
  final pulumi.Input<List<K8sSlbAttachmentSlbConfig>>? slbConfigs;

  /// Creates a new [K8sSlbAttachmentState].
  /// [appId] The ID of the EDAS k8s application to which you want to bind SLB instances.
  /// [slbConfigs] The configurations of SLB attachment, which is supported for multiple configurations. See `slb_configs` below.
  K8sSlbAttachmentState({
    this.appId,
    this.slbConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'slbConfigs': ?pulumi.Input.mapOptionalInputValue<List<K8sSlbAttachmentSlbConfig>, List<Map<String, dynamic>>>(slbConfigs, (value) => pulumi.Input.encodeList<K8sSlbAttachmentSlbConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory K8sSlbAttachmentState.fromMap(Map<String, dynamic> map) {
    return K8sSlbAttachmentState(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slbConfigs: (() { final guardedValue = map['slbConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<K8sSlbAttachmentSlbConfig>(guardedValue, (value) => K8sSlbAttachmentSlbConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

