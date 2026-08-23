// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSupportPlanType.
class GetSupportPlanTypeResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The id of the ARM resource, e.g. "/subscriptions/{id}/providers/Microsoft.Addons/supportProvider/{supportProviderName}/supportPlanTypes/{planTypeName}".
  final String id;
  /// The name of the Canonical support plan, i.e. "essential", "standard" or "advanced".
  final String name;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// Microsoft.Addons/supportProvider
  final String type;

  /// Creates a new [GetSupportPlanTypeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The id of the ARM resource, e.g. "/subscriptions/{id}/providers/Microsoft.Addons/supportProvider/{supportProviderName}/supportPlanTypes/{planTypeName}".
  /// [name] The name of the Canonical support plan, i.e. "essential", "standard" or "advanced".
  /// [provisioningState] The provisioning state of the resource.
  /// [type] Microsoft.Addons/supportProvider
  const GetSupportPlanTypeResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'provisioningState': ?provisioningState,
      'type': type,
    };
  }

  factory GetSupportPlanTypeResult.fromMap(Map<String, dynamic> map) {
    return GetSupportPlanTypeResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}
