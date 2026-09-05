// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_registry_approval_configuration.dart';
import 'agentcore_registry_authorizer_configuration.dart';
import 'agentcore_registry_timeouts.dart';

/// Input properties used for looking up and filtering AgentcoreRegistry resources.
class AgentcoreRegistryState {
  final pulumi.Input<List<AgentcoreRegistryApprovalConfiguration>?>? approvalConfigurations;
  final pulumi.Input<AgentcoreRegistryAuthorizerConfiguration?>? authorizerConfiguration;
  final pulumi.Input<String?>? authorizerType;
  final pulumi.Input<String?>? description;
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final pulumi.Input<String?>? region;
  /// ARN of the registry.
  final pulumi.Input<String?>? registryArn;
  /// Unique identifier of the registry.
  final pulumi.Input<String?>? registryId;
  final pulumi.Input<AgentcoreRegistryTimeouts?>? timeouts;

  /// Creates a new [AgentcoreRegistryState].
  /// [approvalConfigurations] Optional.
  /// [authorizerConfiguration] Optional.
  /// [authorizerType] Optional.
  /// [description] Optional.
  /// [name] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
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
