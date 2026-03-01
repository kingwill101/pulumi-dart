// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_hybridcontainerservice_kubernetes_versions_args_doc}
/// The set of arguments for KubernetesVersions.
/// {@endtemplate}
/// {@macro pulumi_hybridcontainerservice_kubernetes_versions_args_doc}
class KubernetesVersionsArgs {
  /// The fully qualified Azure Resource Manager identifier of the custom location resource.
  final pulumi.Input<String> customLocationResourceUri;
  /// Extended location pointing to the underlying infrastructure
  final pulumi.Input<ExtendedLocation>? extendedLocation;

  /// Creates a new [KubernetesVersionsArgs].
  /// [customLocationResourceUri] The fully qualified Azure Resource Manager identifier of the custom location resource.
  /// [extendedLocation] Extended location pointing to the underlying infrastructure
  KubernetesVersionsArgs({
    required pulumi.Output<String> customLocationResourceUri,
    pulumi.Output<ExtendedLocation>? extendedLocation,
  }) :
      customLocationResourceUri = pulumi.Input.asInput<String>(customLocationResourceUri),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationResourceUri': customLocationResourceUri,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
    };
  }

  factory KubernetesVersionsArgs.fromMap(Map<String, dynamic> map) {
    return KubernetesVersionsArgs(
      customLocationResourceUri: pulumi.Output.create<String>(map['customLocationResourceUri'] as String),
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
    );
  }
}

