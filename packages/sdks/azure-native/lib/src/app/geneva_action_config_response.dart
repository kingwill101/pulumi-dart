// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'geneva_action_parameter_response.dart';

/// Configuration for a Geneva action
class GenevaActionConfigResponse {
  /// Name of the Geneva action
  final pulumi.Input<String?>? actionName;
  /// Parameters for the Geneva action
  final pulumi.Input<List<GenevaActionParameterResponse>?>? actionParameters;
  /// Indicates whether approval is required for this action
  final pulumi.Input<bool?>? approvalRequired;
  /// Extension associated with the action
  final pulumi.Input<String?>? extension;

  /// Creates a new [GenevaActionConfigResponse].
  /// [actionName] Name of the Geneva action
  /// [actionParameters] Parameters for the Geneva action
  /// [approvalRequired] Indicates whether approval is required for this action
  /// [extension] Extension associated with the action
  const GenevaActionConfigResponse({
    this.actionName,
    this.actionParameters,
    this.approvalRequired,
    this.extension,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': ?actionName,
      'actionParameters': ?pulumi.Input.mapOptionalInputValue<List<GenevaActionParameterResponse>, List<Map<String, dynamic>>>(actionParameters, (value) => pulumi.Input.encodeList<GenevaActionParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'approvalRequired': ?approvalRequired,
      'extension': ?extension,
    };
  }

  factory GenevaActionConfigResponse.fromMap(Map<String, dynamic> map) {
    return GenevaActionConfigResponse(
      actionName: (() { final guardedValue = map['actionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      actionParameters: (() { final guardedValue = map['actionParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GenevaActionParameterResponse>(guardedValue, (value) => GenevaActionParameterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      approvalRequired: (() { final guardedValue = map['approvalRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extension: (() { final guardedValue = map['extension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
