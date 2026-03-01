// ignore_for_file: unused_element, unnecessary_cast


/// Resource details
class SourceOrTarget {
  /// Azure resource id, example /subscription/{subscription}/resourceGroup/{rg}/Microsoft.compute/virtualMachine/{vmName}
  final String? azureResourceId;

  /// Creates a new [SourceOrTarget].
  /// [azureResourceId] Azure resource id, example /subscription/{subscription}/resourceGroup/{rg}/Microsoft.compute/virtualMachine/{vmName}
  SourceOrTarget({
    this.azureResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureResourceId': ?azureResourceId,
    };
  }

  factory SourceOrTarget.fromMap(Map<String, dynamic> map) {
    return SourceOrTarget(
      azureResourceId: map['azureResourceId'] == null ? null : map['azureResourceId'] as String,
    );
  }
}

