// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_hybridcontainerservice_vmskus_args_doc}
/// The set of arguments for VMSkus.
/// {@endtemplate}
/// {@macro pulumi_hybridcontainerservice_vmskus_args_doc}
class VMSkusArgs {
  /// The fully qualified Azure Resource Manager identifier of the custom location resource.
  final pulumi.Input<String> customLocationResourceUri;
  /// Extended location pointing to the underlying infrastructure
  final pulumi.Input<ExtendedLocation>? extendedLocation;

  /// Creates a new [VMSkusArgs].
  /// [customLocationResourceUri] The fully qualified Azure Resource Manager identifier of the custom location resource.
  /// [extendedLocation] Extended location pointing to the underlying infrastructure
  VMSkusArgs({
    required this.customLocationResourceUri,
    this.extendedLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationResourceUri': customLocationResourceUri,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
    };
  }

  factory VMSkusArgs.fromMap(Map<String, dynamic> map) {
    return VMSkusArgs(
      customLocationResourceUri: pulumi.Input.fromValue(map['customLocationResourceUri'] as String),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

