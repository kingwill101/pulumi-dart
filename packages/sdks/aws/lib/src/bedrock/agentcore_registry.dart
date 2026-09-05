import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_registry_approval_configuration.dart';
import 'agentcore_registry_args.dart';
import 'agentcore_registry_authorizer_configuration.dart';
import 'agentcore_registry_state.dart';
import 'agentcore_registry_timeouts.dart';

/// Manages an AWS Bedrock AgentCore Registry. A registry serves as a centralized catalog for organizing and managing registry records, including MCP servers, A2A agents, agent skills, and custom resource types.
///
/// &gt; **Warning:** This resource is deprecated. AWS Agent Registry is currently available in public preview. On August 6, 2026) functionality will move from the `bedrock-agentcore` namespace to the `agent-registry` namespace. This resource will continue to work until September 17, 2026 Name of the registry. Must be unique within your account and contain only letters, numbers, hyphens, and underscores. Maximum length of 64 characters.
///
/// The following arguments are optional:
///
/// * `approvalConfiguration` - (Optional)  Approval configuration for registry records. See below.
/// * `authorizerConfiguration` - (Optional) Authorizer configuration for the registry. Required when `authorizerType` is `CUSTOM_JWT`. See below.
/// * `authorizerType` - (Optional, Forces new resource) Type of authorizer to use for the registry. Valid values are `AWS_IAM` (default) and `CUSTOM_JWT`. This controls the authorization method for the Search and Invoke APIs used by consumers.
/// * `description` - (Optional) Description of the registry.
/// * `region` - (Optional) Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `registryId` (String) Registry ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS account ID for this resource.
/// * `region` (String) AWS Region for this resource.
///
///
/// Using `pulumi import`, import a Bedrock AgentCore Registry by registry ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreRegistry:AgentcoreRegistry example registry-id-12345678
/// ```
class AgentcoreRegistry extends pulumi.CustomResource {
  late final pulumi.Output<List<AgentcoreRegistryApprovalConfiguration>> approvalConfigurations;
  late final pulumi.Output<AgentcoreRegistryAuthorizerConfiguration?> authorizerConfiguration;
  late final pulumi.Output<String> authorizerType;
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  late final pulumi.Output<String> region;
  /// ARN of the registry.
  late final pulumi.Output<String> registryArn;
  /// Unique identifier of the registry.
  late final pulumi.Output<String> registryId;
  late final pulumi.Output<AgentcoreRegistryTimeouts?> timeouts;

  /// Creates a new [AgentcoreRegistry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreRegistry]. {@macro pulumi_bedrock_agentcore_registry_agentcore_registry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreRegistry(
    String name, {
    AgentcoreRegistryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreRegistry:AgentcoreRegistry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    approvalConfigurations = registerOutput<List<AgentcoreRegistryApprovalConfiguration>>('approvalConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreRegistryApprovalConfiguration>(guardedValue, (value) => AgentcoreRegistryApprovalConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    authorizerConfiguration = registerOutput<AgentcoreRegistryAuthorizerConfiguration?>('authorizerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreRegistryAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authorizerType = registerOutput<String>('authorizerType');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    registryArn = registerOutput<String>('registryArn');
    registryId = registerOutput<String>('registryId');
    timeouts = registerOutput<AgentcoreRegistryTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreRegistryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AgentcoreRegistry] resource's state with the given [name] and [id].
  static AgentcoreRegistry get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreRegistryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentcoreRegistry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentcoreRegistry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreRegistry:AgentcoreRegistry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    approvalConfigurations = registerOutput<List<AgentcoreRegistryApprovalConfiguration>>('approvalConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreRegistryApprovalConfiguration>(guardedValue, (value) => AgentcoreRegistryApprovalConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    authorizerConfiguration = registerOutput<AgentcoreRegistryAuthorizerConfiguration?>('authorizerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreRegistryAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authorizerType = registerOutput<String>('authorizerType');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    registryArn = registerOutput<String>('registryArn');
    registryId = registerOutput<String>('registryId');
    timeouts = registerOutput<AgentcoreRegistryTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreRegistryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AgentcoreRegistry] resource.
  AgentcoreRegistry.reference(String urn)
    : super(
        'aws:bedrock/agentcoreRegistry:AgentcoreRegistry',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    approvalConfigurations = registerOutput<List<AgentcoreRegistryApprovalConfiguration>>('approvalConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreRegistryApprovalConfiguration>(guardedValue, (value) => AgentcoreRegistryApprovalConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    authorizerConfiguration = registerOutput<AgentcoreRegistryAuthorizerConfiguration?>('authorizerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreRegistryAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authorizerType = registerOutput<String>('authorizerType');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    registryArn = registerOutput<String>('registryArn');
    registryId = registerOutput<String>('registryId');
    timeouts = registerOutput<AgentcoreRegistryTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreRegistryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
