// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_registry_approval_configuration.dart';
import 'agentcore_registry_authorizer_configuration.dart';
import 'agentcore_registry_timeouts.dart';

/// {@template pulumi_bedrock_agentcore_registry_agentcore_registry_args_doc}
/// The set of arguments for AgentcoreRegistry.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_registry_agentcore_registry_args_doc}
class AgentcoreRegistryArgs {
  final pulumi.Input<List<AgentcoreRegistryApprovalConfiguration>?>? approvalConfigurations;
  final pulumi.Input<AgentcoreRegistryAuthorizerConfiguration?>? authorizerConfiguration;
  final pulumi.Input<String?>? authorizerType;
  final pulumi.Input<String?>? description;
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final pulumi.Input<String?>? region;
  final pulumi.Input<AgentcoreRegistryTimeouts?>? timeouts;

  /// Creates a new [AgentcoreRegistryArgs].
  /// [approvalConfigurations] Optional.
  /// [authorizerConfiguration] Optional.
  /// [authorizerType] Optional.
  /// [description] Optional.
  /// [name] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  /// [timeouts] Optional.
  const AgentcoreRegistryArgs({
    this.approvalConfigurations,
    this.authorizerConfiguration,
    this.authorizerType,
    this.description,
    this.name,
    this.region,
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
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreRegistryTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreRegistryArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreRegistryArgs(
      approvalConfigurations: (() { final guardedValue = map['approvalConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreRegistryApprovalConfiguration>(guardedValue, (value) => AgentcoreRegistryApprovalConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      authorizerConfiguration: (() { final guardedValue = map['authorizerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreRegistryAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authorizerType: (() { final guardedValue = map['authorizerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreRegistryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
