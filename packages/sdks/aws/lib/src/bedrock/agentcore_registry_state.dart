// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_registry_approval_configuration.dart';
import 'agentcore_registry_authorizer_configuration.dart';
import 'agentcore_registry_timeouts.dart';

/// Input properties used for looking up and filtering AgentcoreRegistry resources.
class AgentcoreRegistryState {
  /// Approval configuration for registry records. See below.
  final pulumi.Input<List<AgentcoreRegistryApprovalConfiguration>?>? approvalConfigurations;
  /// Authorizer configuration for the registry. Required when `authorizerType` is `CUSTOM_JWT`. See below.
  final pulumi.Input<AgentcoreRegistryAuthorizerConfiguration?>? authorizerConfiguration;
  /// Type of authorizer to use for the registry. Valid values are `AWS_IAM` (default) and `CUSTOM_JWT`. This controls the authorization method for the Search and Invoke APIs used by consumers.
  final pulumi.Input<String?>? authorizerType;
  /// Description of the registry.
  final pulumi.Input<String?>? description;
  /// Name of the registry. Must be unique within your account and contain only letters, numbers, hyphens, and underscores. Maximum length of 64 characters.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the registry.
  final pulumi.Input<String?>? registryArn;
  /// Unique identifier of the registry.
  final pulumi.Input<String?>? registryId;
  final pulumi.Input<AgentcoreRegistryTimeouts?>? timeouts;

  /// Creates a new [AgentcoreRegistryState].
  /// [approvalConfigurations] Approval configuration for registry records. See below.
  /// [authorizerConfiguration] Authorizer configuration for the registry. Required when `authorizerType` is `CUSTOM_JWT`. See below.
  /// [authorizerType] Type of authorizer to use for the registry. Valid values are `AWS_IAM` (default) and `CUSTOM_JWT`. This controls the authorization method for the Search and Invoke APIs used by consumers.
  /// [description] Description of the registry.
  /// [name] Name of the registry. Must be unique within your account and contain only letters, numbers, hyphens, and underscores. Maximum length of 64 characters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryArn] ARN of the registry.
  /// [registryId] Unique identifier of the registry.
  /// [timeouts] Optional.
  const AgentcoreRegistryState({
    this.approvalConfigurations,
    this.authorizerConfiguration,
    this.authorizerType,
    this.description,
    this.name,
    this.region,
    this.registryArn,
    this.registryId,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreRegistryApprovalConfiguration>, List<Map<String, dynamic>>>(approvalConfigurations, (value) => pulumi.Input.encodeList<AgentcoreRegistryApprovalConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authorizerConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreRegistryAuthorizerConfiguration, Map<String, dynamic>>(authorizerConfiguration, (value) => value.toMap()),
      'authorizerType': ?authorizerType,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'registryArn': ?registryArn,
      'registryId': ?registryId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreRegistryTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreRegistryState.fromMap(Map<String, dynamic> map) {
    return AgentcoreRegistryState(
      approvalConfigurations: (() { final guardedValue = map['approvalConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreRegistryApprovalConfiguration>(guardedValue, (value) => AgentcoreRegistryApprovalConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      authorizerConfiguration: (() { final guardedValue = map['authorizerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreRegistryAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authorizerType: (() { final guardedValue = map['authorizerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryArn: (() { final guardedValue = map['registryArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryId: (() { final guardedValue = map['registryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreRegistryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
