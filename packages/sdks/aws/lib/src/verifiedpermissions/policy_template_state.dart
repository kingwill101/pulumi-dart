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
    pulumi.Output<String>? createdDate,
    pulumi.Output<String>? description,
    pulumi.Output<String>? policyStoreId,
    pulumi.Output<String>? policyTemplateId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? statement,
  }) :
      createdDate = pulumi.Input.asOptionalInput<String>(createdDate),
      description = pulumi.Input.asOptionalInput<String>(description),
      policyStoreId = pulumi.Input.asOptionalInput<String>(policyStoreId),
      policyTemplateId = pulumi.Input.asOptionalInput<String>(policyTemplateId),
      region = pulumi.Input.asOptionalInput<String>(region),
      statement = pulumi.Input.asOptionalInput<String>(statement);

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
      createdDate: map['createdDate'] == null ? null : pulumi.Output.create<String>(map['createdDate'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      policyStoreId: map['policyStoreId'] == null ? null : pulumi.Output.create<String>(map['policyStoreId'] as String),
      policyTemplateId: map['policyTemplateId'] == null ? null : pulumi.Output.create<String>(map['policyTemplateId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      statement: map['statement'] == null ? null : pulumi.Output.create<String>(map['statement'] as String),
    );
  }
}

