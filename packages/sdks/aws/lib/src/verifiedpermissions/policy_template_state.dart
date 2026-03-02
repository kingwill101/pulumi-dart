// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PolicyTemplate resources.
class PolicyTemplateState {
  /// The date the Policy Store was created.
  final pulumi.Input<String>? createdDate;
  /// Provides a description for the policy template.
  final pulumi.Input<String>? description;
  /// The ID of the Policy Store.
  final pulumi.Input<String>? policyStoreId;
  /// The ID of the Policy Store.
  final pulumi.Input<String>? policyTemplateId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Defines the content of the statement, written in Cedar policy language.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? statement;

  /// Creates a new [PolicyTemplateState].
  /// [createdDate] The date the Policy Store was created.
  /// [description] Provides a description for the policy template.
  /// [policyStoreId] The ID of the Policy Store.
  /// [policyTemplateId] The ID of the Policy Store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [statement] Defines the content of the statement, written in Cedar policy language.
  PolicyTemplateState({
    this.createdDate,
    this.description,
    this.policyStoreId,
    this.policyTemplateId,
    this.region,
    this.statement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdDate': ?createdDate,
      'description': ?description,
      'policyStoreId': ?policyStoreId,
      'policyTemplateId': ?policyTemplateId,
      'region': ?region,
      'statement': ?statement,
    };
  }

  factory PolicyTemplateState.fromMap(Map<String, dynamic> map) {
    return PolicyTemplateState(
      createdDate: map['createdDate'] == null ? null : (map['createdDate'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      policyStoreId: map['policyStoreId'] == null ? null : (map['policyStoreId'] as String).input(),
      policyTemplateId: map['policyTemplateId'] == null ? null : (map['policyTemplateId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      statement: map['statement'] == null ? null : (map['statement'] as String).input(),
    );
  }
}

