// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binding_properties_response.dart';

/// Defines a desired runtime component.
class TopologiesPropertiesResponse {
  /// bindings description.
  final pulumi.Input<List<BindingPropertiesResponse>>? bindings;

  /// Creates a new [TopologiesPropertiesResponse].
  /// [bindings] bindings description.
  TopologiesPropertiesResponse({
    this.bindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindings': ?pulumi.Input.mapOptionalInputValue<List<BindingPropertiesResponse>, List<Map<String, dynamic>>>(bindings, (value) => pulumi.Input.encodeList<BindingPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TopologiesPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TopologiesPropertiesResponse(
      bindings: map['bindings'] == null ? null : (pulumi.Input.decodeList<BindingPropertiesResponse>(map['bindings'], (value) => BindingPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

