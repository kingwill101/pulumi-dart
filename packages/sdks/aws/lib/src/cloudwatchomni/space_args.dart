// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'space_encryption_configuration.dart';

/// {@template pulumi_cloudwatchomni_space_space_args_doc}
/// The set of arguments for Space.
/// {@endtemplate}
/// {@macro pulumi_cloudwatchomni_space_space_args_doc}
class SpaceArgs {
  /// ARN of the IAM role used by AgentCore online evaluation. Changing this forces a new resource.
  final pulumi.Input<String?>? agentCoreEvaluationRoleArn;
  /// ARN of the IAM role CloudWatch Omni assumes to access data. Must be in the same account as the space. Changing this forces a new resource.
  final pulumi.Input<String> dataAccessRoleArn;
  /// ID of the CloudWatch Omni domain the space belongs to. Changing this forces a new resource.
  final pulumi.Input<String> domainId;
  /// Encryption of the space's data at rest. Omit for AWS owned encryption. See below.
  final pulumi.Input<SpaceEncryptionConfiguration?>? encryptionConfiguration;
  /// Name of the space. Must be 3-64 characters of lowercase letters, numbers and hyphens, must begin and end with a letter or number, and cannot contain consecutive hyphens.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource is managed. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [SpaceArgs].
  /// [agentCoreEvaluationRoleArn] ARN of the IAM role used by AgentCore online evaluation. Changing this forces a new resource.
  /// [dataAccessRoleArn] ARN of the IAM role CloudWatch Omni assumes to access data. Must be in the same account as the space. Changing this forces a new resource.
  /// [domainId] ID of the CloudWatch Omni domain the space belongs to. Changing this forces a new resource.
  /// [encryptionConfiguration] Encryption of the space's data at rest. Omit for AWS owned encryption. See below.
  /// [name] Name of the space. Must be 3-64 characters of lowercase letters, numbers and hyphens, must begin and end with a letter or number, and cannot contain consecutive hyphens.
  /// [region] Region where this resource is managed. Defaults to the Region set in the provider configuration.
  const SpaceArgs({
    this.agentCoreEvaluationRoleArn,
    required this.dataAccessRoleArn,
    required this.domainId,
    this.encryptionConfiguration,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentCoreEvaluationRoleArn': ?agentCoreEvaluationRoleArn,
      'dataAccessRoleArn': dataAccessRoleArn,
      'domainId': domainId,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<SpaceEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
    };
  }

  factory SpaceArgs.fromMap(Map<String, dynamic> map) {
    return SpaceArgs(
      agentCoreEvaluationRoleArn: (() { final guardedValue = map['agentCoreEvaluationRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataAccessRoleArn: pulumi.Input.fromValue(map['dataAccessRoleArn'] as String),
      domainId: pulumi.Input.fromValue(map['domainId'] as String),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpaceEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
