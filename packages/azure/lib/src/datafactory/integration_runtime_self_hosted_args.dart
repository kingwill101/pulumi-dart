// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_self_hosted_rbac_authorization.dart';

/// {@template pulumi_datafactory_integration_runtime_self_hosted_integration_runtime_self_hosted_args_doc}
/// The set of arguments for IntegrationRuntimeSelfHosted.
/// {@endtemplate}
/// {@macro pulumi_datafactory_integration_runtime_self_hosted_integration_runtime_self_hosted_args_doc}
class IntegrationRuntimeSelfHostedArgs {
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// Integration runtime description.
  final pulumi.Input<String>? description;
  /// The name which should be used for this Data Factory. Changing this forces a new Data Factory Self-hosted Integration Runtime to be created.
  final pulumi.Input<String>? name;
  /// A `rbac_authorization` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<IntegrationRuntimeSelfHostedRbacAuthorization>>? rbacAuthorizations;
  /// Specifies whether enable interactive authoring function when your self-hosted integration runtime is unable to establish a connection with Azure Relay.
  final pulumi.Input<bool>? selfContainedInteractiveAuthoringEnabled;

  /// Creates a new [IntegrationRuntimeSelfHostedArgs].
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] Integration runtime description.
  /// [name] The name which should be used for this Data Factory. Changing this forces a new Data Factory Self-hosted Integration Runtime to be created.
  /// [rbacAuthorizations] A `rbac_authorization` block as defined below. Changing this forces a new resource to be created.
  /// [selfContainedInteractiveAuthoringEnabled] Specifies whether enable interactive authoring function when your self-hosted integration runtime is unable to establish a connection with Azure Relay.
  IntegrationRuntimeSelfHostedArgs({
    required String dataFactoryId,
    String? description,
    String? name,
    List<IntegrationRuntimeSelfHostedRbacAuthorization>? rbacAuthorizations,
    bool? selfContainedInteractiveAuthoringEnabled,
  }) :
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      rbacAuthorizations = pulumi.Input.asOptionalInput<List<IntegrationRuntimeSelfHostedRbacAuthorization>>(rbacAuthorizations),
      selfContainedInteractiveAuthoringEnabled = pulumi.Input.asOptionalInput<bool>(selfContainedInteractiveAuthoringEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'name': ?name,
      'rbacAuthorizations': ?pulumi.Input.mapOptionalInputValue<List<IntegrationRuntimeSelfHostedRbacAuthorization>, List<Map<String, dynamic>>>(rbacAuthorizations, (value) => pulumi.Input.encodeList<IntegrationRuntimeSelfHostedRbacAuthorization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selfContainedInteractiveAuthoringEnabled': ?selfContainedInteractiveAuthoringEnabled,
    };
  }

  factory IntegrationRuntimeSelfHostedArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSelfHostedArgs(
      dataFactoryId: map['dataFactoryId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      rbacAuthorizations: map['rbacAuthorizations'] == null ? null : pulumi.Input.decodeList<IntegrationRuntimeSelfHostedRbacAuthorization>(map['rbacAuthorizations'], (value) => IntegrationRuntimeSelfHostedRbacAuthorization.fromMap((value as Map).cast<String, dynamic>())),
      selfContainedInteractiveAuthoringEnabled: map['selfContainedInteractiveAuthoringEnabled'] == null ? null : map['selfContainedInteractiveAuthoringEnabled'] as bool,
    );
  }
}

