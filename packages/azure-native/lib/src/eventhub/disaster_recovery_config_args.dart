// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_disaster_recovery_config_args_doc}
/// The set of arguments for DisasterRecoveryConfig.
/// {@endtemplate}
/// {@macro pulumi_eventhub_disaster_recovery_config_args_doc}
class DisasterRecoveryConfigArgs {
  /// The Disaster Recovery configuration name
  final pulumi.Input<String>? alias;
  /// Alternate name specified when alias and namespace names are same.
  final pulumi.Input<String>? alternateName;
  /// The Namespace name
  final pulumi.Input<String> namespaceName;
  /// ARM Id of the Primary/Secondary eventhub namespace name, which is part of GEO DR pairing
  final pulumi.Input<String>? partnerNamespace;
  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DisasterRecoveryConfigArgs].
  /// [alias] The Disaster Recovery configuration name
  /// [alternateName] Alternate name specified when alias and namespace names are same.
  /// [namespaceName] The Namespace name
  /// [partnerNamespace] ARM Id of the Primary/Secondary eventhub namespace name, which is part of GEO DR pairing
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  DisasterRecoveryConfigArgs({
    String? alias,
    String? alternateName,
    required String namespaceName,
    String? partnerNamespace,
    required String resourceGroupName,
  }) :
      alias = pulumi.Input.asOptionalInput<String>(alias),
      alternateName = pulumi.Input.asOptionalInput<String>(alternateName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      partnerNamespace = pulumi.Input.asOptionalInput<String>(partnerNamespace),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'alternateName': ?alternateName,
      'namespaceName': namespaceName,
      'partnerNamespace': ?partnerNamespace,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DisasterRecoveryConfigArgs.fromMap(Map<String, dynamic> map) {
    return DisasterRecoveryConfigArgs(
      alias: map['alias'] == null ? null : map['alias'] as String,
      alternateName: map['alternateName'] == null ? null : map['alternateName'] as String,
      namespaceName: map['namespaceName'] as String,
      partnerNamespace: map['partnerNamespace'] == null ? null : map['partnerNamespace'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

