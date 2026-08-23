// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_properties_response.dart';

/// Properties of a HorizonDB parameter group.
class HorizonDbParameterGroupPropertiesResponse {
  /// Indicates whether the parameters should be applied immediately.
  final pulumi.Input<bool>? applyImmediately;
  /// Description of the parameter group.
  final pulumi.Input<String>? description;
  /// Parameters in the parameter group.
  final pulumi.Input<List<ParameterPropertiesResponse>>? parameters;
  /// PostgreSQL version for the parameter group.
  final pulumi.Input<int>? pgVersion;
  /// The provisioning state of the parameter group.
  final pulumi.Input<String> provisioningState;
  /// Current version of the parameter group.
  final pulumi.Input<int> version;

  /// Creates a new [HorizonDbParameterGroupPropertiesResponse].
  /// [applyImmediately] Indicates whether the parameters should be applied immediately.
  /// [description] Description of the parameter group.
  /// [parameters] Parameters in the parameter group.
  /// [pgVersion] PostgreSQL version for the parameter group.
  /// [provisioningState] The provisioning state of the parameter group.
  /// [version] Current version of the parameter group.
  const HorizonDbParameterGroupPropertiesResponse({
    this.applyImmediately,
    this.description,
    this.parameters,
    this.pgVersion,
    required this.provisioningState,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyImmediately': ?applyImmediately,
      'description': ?description,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ParameterPropertiesResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ParameterPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pgVersion': ?pgVersion,
      'provisioningState': provisioningState,
      'version': version,
    };
  }

  factory HorizonDbParameterGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HorizonDbParameterGroupPropertiesResponse(
      applyImmediately: (() { final guardedValue = map['applyImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ParameterPropertiesResponse>(guardedValue, (value) => ParameterPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pgVersion: (() { final guardedValue = map['pgVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      version: pulumi.Input.fromValue(map['version'] as int),
    );
  }
}
