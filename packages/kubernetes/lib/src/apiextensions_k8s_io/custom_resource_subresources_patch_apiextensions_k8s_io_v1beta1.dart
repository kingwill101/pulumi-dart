// ignore_for_file: unused_element, unnecessary_cast

import 'custom_resource_subresource_scale_patch_apiextensions_k8s_io_v1beta1.dart';

/// CustomResourceSubresources defines the status and scale subresources for CustomResources.
class CustomResourceSubresourcesPatchApiextensionsK8sIoV1beta1 {
  /// scale indicates the custom resource should serve a `/scale` subresource that returns an `autoscaling/v1` Scale object.
  final CustomResourceSubresourceScalePatchApiextensionsK8sIoV1beta1? scale;
  /// status indicates the custom resource should serve a `/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.
  final dynamic status;

  /// Creates a new [CustomResourceSubresourcesPatchApiextensionsK8sIoV1beta1].
  /// [scale] scale indicates the custom resource should serve a `/scale` subresource that returns an `autoscaling/v1` Scale object.
  /// [status] status indicates the custom resource should serve a `/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.
  CustomResourceSubresourcesPatchApiextensionsK8sIoV1beta1({
    this.scale,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scale': ?scale == null ? null : scale!.toMap(),
      'status': ?status,
    };
  }

  factory CustomResourceSubresourcesPatchApiextensionsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CustomResourceSubresourcesPatchApiextensionsK8sIoV1beta1(
      scale: map['scale'] == null ? null : CustomResourceSubresourceScalePatchApiextensionsK8sIoV1beta1.fromMap((map['scale'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'],
    );
  }
}

