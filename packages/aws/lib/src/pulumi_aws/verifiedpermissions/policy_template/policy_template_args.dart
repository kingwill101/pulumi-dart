// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PolicyTemplate.
class PolicyTemplateArgs {
  /// Provides a description for the policy template.
  final pulumi.Input<String>? description;

  /// The ID of the Policy Store.
  final pulumi.Input<String> policyStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Defines the content of the statement, written in Cedar policy language.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> statement;

  PolicyTemplateArgs({
    this.description,
    required this.policyStoreId,
    this.region,
    required this.statement,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['policyStoreId'] = policyStoreId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['statement'] = statement;
    return map;
  }

  factory PolicyTemplateArgs.fromMap(Map<String, dynamic> map) {
    return PolicyTemplateArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      policyStoreId: pulumi.Input.asInput<String>(map['policyStoreId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      statement: pulumi.Input.asInput<String>(map['statement']),
    );
  }
}
