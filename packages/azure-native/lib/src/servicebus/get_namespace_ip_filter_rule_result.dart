// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamespaceIpFilterRule.
class GetNamespaceIpFilterRuleResult {
  /// The IP Filter Action
  final String? action;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// IP Filter name
  final String? filterName;
  /// Resource Id
  final String id;
  /// IP Mask
  final String? ipMask;
  /// Resource name
  final String name;
  /// Resource type
  final String type;

  /// Creates a new [GetNamespaceIpFilterRuleResult].
  /// [action] The IP Filter Action
  /// [azureApiVersion] The Azure API version of the resource.
  /// [filterName] IP Filter name
  /// [id] Resource Id
  /// [ipMask] IP Mask
  /// [name] Resource name
  /// [type] Resource type
  GetNamespaceIpFilterRuleResult({
    this.action,
    required this.azureApiVersion,
    this.filterName,
    required this.id,
    this.ipMask,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'azureApiVersion': azureApiVersion,
      'filterName': ?filterName,
      'id': id,
      'ipMask': ?ipMask,
      'name': name,
      'type': type,
    };
  }

  factory GetNamespaceIpFilterRuleResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceIpFilterRuleResult(
      action: map['action'] == null ? null : map['action'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      filterName: map['filterName'] == null ? null : map['filterName'] as String,
      id: map['id'] as String,
      ipMask: map['ipMask'] == null ? null : map['ipMask'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

