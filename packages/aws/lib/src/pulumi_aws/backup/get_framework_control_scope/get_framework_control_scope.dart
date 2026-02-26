// ignore_for_file: unused_element, unnecessary_cast

class GetFrameworkControlScope {
  /// The ID of the only AWS resource that you want your control scope to contain.
  final List<String> complianceResourceIds;

  /// Describes whether the control scope includes one or more types of resources, such as EFS or RDS.
  final List<String> complianceResourceTypes;

  /// Tag key-value pair applied to those AWS resources that you want to trigger an evaluation for a rule. A maximum of one key-value pair can be provided.
  final Map<String, String> tags;

  GetFrameworkControlScope({
    required this.complianceResourceIds,
    required this.complianceResourceTypes,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['complianceResourceIds'] = complianceResourceIds;
    map['complianceResourceTypes'] = complianceResourceTypes;
    map['tags'] = tags;
    return map;
  }

  factory GetFrameworkControlScope.fromMap(Map<String, dynamic> map) {
    return GetFrameworkControlScope(
      complianceResourceIds:
          (map['complianceResourceIds'] as List).cast<String>(),
      complianceResourceTypes:
          (map['complianceResourceTypes'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
