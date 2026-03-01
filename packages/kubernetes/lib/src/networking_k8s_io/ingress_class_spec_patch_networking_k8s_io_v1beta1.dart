// ignore_for_file: unused_element, unnecessary_cast

import '../core/typed_local_object_reference_patch.dart';

/// IngressClassSpec provides information about the class of an Ingress.
class IngressClassSpecPatchNetworkingK8sIoV1beta1 {
  /// Controller refers to the name of the controller that should handle this class. This allows for different "flavors" that are controlled by the same controller. For example, you may have different Parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. "acme.io/ingress-controller". This field is immutable.
  final String? controller;
  /// Parameters is a link to a custom resource containing additional configuration for the controller. This is optional if the controller does not require extra parameters.
  final TypedLocalObjectReferencePatch? parameters;

  /// Creates a new [IngressClassSpecPatchNetworkingK8sIoV1beta1].
  /// [controller] Controller refers to the name of the controller that should handle this class. This allows for different "flavors" that are controlled by the same controller. For example, you may have different Parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. "acme.io/ingress-controller". This field is immutable.
  /// [parameters] Parameters is a link to a custom resource containing additional configuration for the controller. This is optional if the controller does not require extra parameters.
  IngressClassSpecPatchNetworkingK8sIoV1beta1({
    this.controller,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controller': ?controller,
      'parameters': ?parameters == null ? null : parameters!.toMap(),
    };
  }

  factory IngressClassSpecPatchNetworkingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return IngressClassSpecPatchNetworkingK8sIoV1beta1(
      controller: map['controller'] == null ? null : map['controller'] as String,
      parameters: map['parameters'] == null ? null : TypedLocalObjectReferencePatch.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

