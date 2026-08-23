// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFrameworkControlScope {
  /// The ID of the only AWS resource that you want your control scope to contain.
  final pulumi.Input<List<String>> complianceResourceIds;
  /// Describes whether the control scope includes one or more types of resources, such as EFS or RDS.
  final pulumi.Input<List<String>> complianceResourceTypes;
  /// Tag key-value pair applied to those AWS resources that you want to trigger an evaluation for a rule. A maximum of one key-value pair can be provided.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [GetFrameworkControlScope].
  /// [complianceResourceIds] The ID of the only AWS resource that you want your control scope to contain.
  /// [complianceResourceTypes] Describes whether the control scope includes one or more types of resources, such as EFS or RDS.
  /// [tags] Tag key-value pair applied to those AWS resources that you want to trigger an evaluation for a rule. A maximum of one key-value pair can be provided.
  const GetFrameworkControlScope({
    required this.complianceResourceIds,
    required this.complianceResourceTypes,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceResourceIds': complianceResourceIds,
      'complianceResourceTypes': complianceResourceTypes,
      'tags': tags,
    };
  }

  factory GetFrameworkControlScope.fromMap(Map<String, dynamic> map) {
    return GetFrameworkControlScope(
      complianceResourceIds: pulumi.Input.fromValue((map['complianceResourceIds'] as List).cast<String>()),
      complianceResourceTypes: pulumi.Input.fromValue((map['complianceResourceTypes'] as List).cast<String>()),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}
