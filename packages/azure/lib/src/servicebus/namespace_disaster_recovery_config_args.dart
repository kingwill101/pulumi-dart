// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_namespace_disaster_recovery_config_namespace_disaster_recovery_config_args_doc}
/// The set of arguments for NamespaceDisasterRecoveryConfig.
/// {@endtemplate}
/// {@macro pulumi_servicebus_namespace_disaster_recovery_config_namespace_disaster_recovery_config_args_doc}
class NamespaceDisasterRecoveryConfigArgs {
  /// The Shared access policies used to access the connection string for the alias.
  final pulumi.Input<String>? aliasAuthorizationRuleId;
  /// Specifies the name of the Disaster Recovery Config. This is the alias DNS name that will be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Service Bus Namespace to replicate to.
  final pulumi.Input<String> partnerNamespaceId;
  /// The ID of the primary Service Bus Namespace to replicate. Changing this forces a new resource to be created.
  final pulumi.Input<String> primaryNamespaceId;

  /// Creates a new [NamespaceDisasterRecoveryConfigArgs].
  /// [aliasAuthorizationRuleId] The Shared access policies used to access the connection string for the alias.
  /// [name] Specifies the name of the Disaster Recovery Config. This is the alias DNS name that will be created. Changing this forces a new resource to be created.
  /// [partnerNamespaceId] The ID of the Service Bus Namespace to replicate to.
  /// [primaryNamespaceId] The ID of the primary Service Bus Namespace to replicate. Changing this forces a new resource to be created.
  NamespaceDisasterRecoveryConfigArgs({
    String? aliasAuthorizationRuleId,
    String? name,
    required String partnerNamespaceId,
    required String primaryNamespaceId,
  }) :
      aliasAuthorizationRuleId = pulumi.Input.asOptionalInput<String>(aliasAuthorizationRuleId),
      name = pulumi.Input.asOptionalInput<String>(name),
      partnerNamespaceId = pulumi.Input.asInput<String>(partnerNamespaceId),
      primaryNamespaceId = pulumi.Input.asInput<String>(primaryNamespaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasAuthorizationRuleId': ?aliasAuthorizationRuleId,
      'name': ?name,
      'partnerNamespaceId': partnerNamespaceId,
      'primaryNamespaceId': primaryNamespaceId,
    };
  }

  factory NamespaceDisasterRecoveryConfigArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceDisasterRecoveryConfigArgs(
      aliasAuthorizationRuleId: map['aliasAuthorizationRuleId'] == null ? null : map['aliasAuthorizationRuleId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      partnerNamespaceId: map['partnerNamespaceId'] as String,
      primaryNamespaceId: map['primaryNamespaceId'] as String,
    );
  }
}

