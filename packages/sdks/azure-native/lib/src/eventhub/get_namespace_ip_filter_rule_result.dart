// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamespaceIpFilterRule.
class GetNamespaceIpFilterRuleResult {
  /// The IP Filter Action
  final String? action;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// IP Filter name
  final String? filterName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// IP Mask
  final String? ipMask;
  /// The name of the resource
  final String? name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetNamespaceIpFilterRuleResult].
  /// [action] The IP Filter Action
  /// [azureApiVersion] The Azure API version of the resource.
  /// [filterName] IP Filter name
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [ipMask] IP Mask
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetNamespaceIpFilterRuleResult({
    this.action,
    this.azureApiVersion,
    this.filterName,
    this.id,
    this.ipMask,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'azureApiVersion': ?azureApiVersion,
      'filterName': ?filterName,
      'id': ?id,
      'ipMask': ?ipMask,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetNamespaceIpFilterRuleResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceIpFilterRuleResult(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filterName: (() { final guardedValue = map['filterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipMask: (() { final guardedValue = map['ipMask']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
