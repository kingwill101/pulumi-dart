// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrameworkControlScope {
  /// The ID of the only AWS resource that you want your control scope to contain. Minimum number of 1 item. Maximum number of 100 items.
  final pulumi.Input<List<String>>? complianceResourceIds;
  /// Describes whether the control scope includes one or more types of resources, such as EFS or RDS.
  final pulumi.Input<List<String>>? complianceResourceTypes;
  /// The tag key-value pair applied to those AWS resources that you want to trigger an evaluation for a rule. A maximum of one key-value pair can be provided.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FrameworkControlScope].
  /// [complianceResourceIds] The ID of the only AWS resource that you want your control scope to contain. Minimum number of 1 item. Maximum number of 100 items.
  /// [complianceResourceTypes] Describes whether the control scope includes one or more types of resources, such as EFS or RDS.
  /// [tags] The tag key-value pair applied to those AWS resources that you want to trigger an evaluation for a rule. A maximum of one key-value pair can be provided.
  FrameworkControlScope({
    this.complianceResourceIds,
    this.complianceResourceTypes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceResourceIds': ?complianceResourceIds,
      'complianceResourceTypes': ?complianceResourceTypes,
      'tags': ?tags,
    };
  }

  factory FrameworkControlScope.fromMap(Map<String, dynamic> map) {
    return FrameworkControlScope(
      complianceResourceIds: map['complianceResourceIds'] == null ? null : ((map['complianceResourceIds'] as List).cast<String>()).input(),
      complianceResourceTypes: map['complianceResourceTypes'] == null ? null : ((map['complianceResourceTypes'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

