// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource details
class SourceOrTargetResponse {
  /// Azure resource id, example /subscription/{subscription}/resourceGroup/{rg}/Microsoft.compute/virtualMachine/{vmName}
  final pulumi.Input<String>? azureResourceId;

  /// Creates a new [SourceOrTargetResponse].
  /// [azureResourceId] Azure resource id, example /subscription/{subscription}/resourceGroup/{rg}/Microsoft.compute/virtualMachine/{vmName}
  SourceOrTargetResponse({this.azureResourceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'azureResourceId': ?azureResourceId};
  }

  factory SourceOrTargetResponse.fromMap(Map<String, dynamic> map) {
    return SourceOrTargetResponse(
      azureResourceId: (() {
        final guardedValue = map['azureResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
