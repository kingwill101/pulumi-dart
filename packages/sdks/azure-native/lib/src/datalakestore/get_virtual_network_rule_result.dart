// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVirtualNetworkRule.
class GetVirtualNetworkRuleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource identifier.
  final String? id;
  /// The resource name.
  final String? name;
  /// The resource identifier for the subnet.
  final String? subnetId;
  /// The resource type.
  final String? type;

  /// Creates a new [GetVirtualNetworkRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [subnetId] The resource identifier for the subnet.
  /// [type] The resource type.
  const GetVirtualNetworkRuleResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.subnetId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'subnetId': ?subnetId,
      'type': ?type,
    };
  }

  factory GetVirtualNetworkRuleResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkRuleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
