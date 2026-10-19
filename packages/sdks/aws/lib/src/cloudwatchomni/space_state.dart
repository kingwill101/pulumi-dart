// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'space_encryption_configuration.dart';

/// Input properties used for looking up and filtering Space resources.
class SpaceState {
  /// ARN of the IAM role used by AgentCore online evaluation. Changing this forces a new resource.
  final pulumi.Input<String?>? agentCoreEvaluationRoleArn;
  /// ARN of the IAM role CloudWatch Omni assumes to access data. Must be in the same account as the space. Changing this forces a new resource.
  final pulumi.Input<String?>? dataAccessRoleArn;
  /// ARN of the domain the space belongs to.
  final pulumi.Input<String?>? domainArn;
  /// ID of the CloudWatch Omni domain the space belongs to. Changing this forces a new resource.
  final pulumi.Input<String?>? domainId;
  /// Encryption of the space's data at rest. Omit for AWS owned encryption. See below.
  final pulumi.Input<SpaceEncryptionConfiguration?>? encryptionConfiguration;
  /// Name of the space. Must be 3-64 characters of lowercase letters, numbers and hyphens, must begin and end with a letter or number, and cannot contain consecutive hyphens.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource is managed. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the space.
  final pulumi.Input<String?>? spaceArn;
  /// Unique ID of the space.
  final pulumi.Input<String?>? spaceId;
  /// Status of the space.
  final pulumi.Input<String?>? status;

  /// Creates a new [SpaceState].
  /// [agentCoreEvaluationRoleArn] ARN of the IAM role used by AgentCore online evaluation. Changing this forces a new resource.
  /// [dataAccessRoleArn] ARN of the IAM role CloudWatch Omni assumes to access data. Must be in the same account as the space. Changing this forces a new resource.
  /// [domainArn] ARN of the domain the space belongs to.
  /// [domainId] ID of the CloudWatch Omni domain the space belongs to. Changing this forces a new resource.
  /// [encryptionConfiguration] Encryption of the space's data at rest. Omit for AWS owned encryption. See below.
  /// [name] Name of the space. Must be 3-64 characters of lowercase letters, numbers and hyphens, must begin and end with a letter or number, and cannot contain consecutive hyphens.
  /// [region] Region where this resource is managed. Defaults to the Region set in the provider configuration.
  /// [spaceArn] ARN of the space.
  /// [spaceId] Unique ID of the space.
  /// [status] Status of the space.
  const SpaceState({
    this.agentCoreEvaluationRoleArn,
    this.dataAccessRoleArn,
    this.domainArn,
    this.domainId,
    this.encryptionConfiguration,
    this.name,
    this.region,
    this.spaceArn,
    this.spaceId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentCoreEvaluationRoleArn': ?agentCoreEvaluationRoleArn,
      'dataAccessRoleArn': ?dataAccessRoleArn,
      'domainArn': ?domainArn,
      'domainId': ?domainId,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<SpaceEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'spaceArn': ?spaceArn,
      'spaceId': ?spaceId,
      'status': ?status,
    };
  }

  factory SpaceState.fromMap(Map<String, dynamic> map) {
    return SpaceState(
      agentCoreEvaluationRoleArn: (() { final guardedValue = map['agentCoreEvaluationRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataAccessRoleArn: (() { final guardedValue = map['dataAccessRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainArn: (() { final guardedValue = map['domainArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpaceEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spaceArn: (() { final guardedValue = map['spaceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spaceId: (() { final guardedValue = map['spaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
