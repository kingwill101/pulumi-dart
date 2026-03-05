// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_accelerator_component_response.dart';

/// Application accelerator properties payload
class ApplicationAcceleratorPropertiesResponse {
  /// Collection of components belong to application accelerator.
  final pulumi.Input<List<ApplicationAcceleratorComponentResponse>> components;
  /// State of the application accelerator.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ApplicationAcceleratorPropertiesResponse].
  /// [components] Collection of components belong to application accelerator.
  /// [provisioningState] State of the application accelerator.
  ApplicationAcceleratorPropertiesResponse({
    required this.components,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'components': pulumi.Input.mapInputValue<List<ApplicationAcceleratorComponentResponse>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<ApplicationAcceleratorComponentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
    };
  }

  factory ApplicationAcceleratorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationAcceleratorPropertiesResponse(
      components: pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationAcceleratorComponentResponse>(map['components']!, (value) => ApplicationAcceleratorComponentResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

