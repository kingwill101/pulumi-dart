// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_psc_config_service_attachment/instance_psc_config_service_attachment.dart';

class InstancePscConfig {
  /// List of VPCs that are allowed ingress into the Looker instance.
  final List<String>? allowedVpcs;

  /// (Output)
  /// URI of the Looker service attachment.
  final String? lookerServiceAttachmentUri;

  /// List of egress service attachment configurations.
  /// Structure is documented below.
  final List<InstancePscConfigServiceAttachment>? serviceAttachments;

  InstancePscConfig({
    this.allowedVpcs,
    this.lookerServiceAttachmentUri,
    this.serviceAttachments,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedVpcsValue = allowedVpcs;
    if (allowedVpcsValue != null) {
      map['allowedVpcs'] = allowedVpcsValue;
    }
    final lookerServiceAttachmentUriValue = lookerServiceAttachmentUri;
    if (lookerServiceAttachmentUriValue != null) {
      map['lookerServiceAttachmentUri'] = lookerServiceAttachmentUriValue;
    }
    final serviceAttachmentsValue = serviceAttachments;
    if (serviceAttachmentsValue != null) {
      map['serviceAttachments'] = pulumi.Input.encodeList<
              InstancePscConfigServiceAttachment, Map<String, dynamic>>(
          serviceAttachmentsValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstancePscConfig.fromMap(Map<String, dynamic> map) {
    return InstancePscConfig(
      allowedVpcs: map['allowedVpcs'] == null
          ? null
          : (map['allowedVpcs'] as List).cast<String>(),
      lookerServiceAttachmentUri: map['lookerServiceAttachmentUri'] == null
          ? null
          : map['lookerServiceAttachmentUri'] as String,
      serviceAttachments: map['serviceAttachments'] == null
          ? null
          : pulumi.Input.decodeList<InstancePscConfigServiceAttachment>(
              map['serviceAttachments'],
              (value) => InstancePscConfigServiceAttachment.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
