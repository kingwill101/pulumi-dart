// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_api_explorer_api_mcp_server_additional_api_description.dart';
import 'open_api_explorer_api_mcp_server_api.dart';
import 'open_api_explorer_api_mcp_server_prompt.dart';
import 'open_api_explorer_api_mcp_server_terraform_tool.dart';

/// Input properties used for looking up and filtering OpenApiExplorerApiMcpServer resources.
class OpenApiExplorerApiMcpServerState {
  /// Additional OpenAPI description information that can override the default behavior of APIs, including:
  /// - API name
  /// - Modification or removal of API parameter names
  /// - Whether to exclude the API from the output API response structure definition
  /// - Whether to return a CLI execution command instead of directly executing the API
  /// - Configuration of constant values for API parameters; parameters set as constants will not have their definitions returned in the tool list   See `additional_api_descriptions` below.
  final pulumi.Input<List<OpenApiExplorerApiMcpServerAdditionalApiDescription>>? additionalApiDescriptions;
  /// The list of APIs to be included in the API MCP Server. See `apis` below.
  final pulumi.Input<List<OpenApiExplorerApiMcpServerApi>>? apis;
  /// When multi-account access is enabled, this field defines an additional policy for role assumption. If specified, this policy overrides the original permissions defined for the role, and the assumed role’s permissions are determined solely by this policy.
  final pulumi.Input<String>? assumeRoleExtraPolicy;
  /// The name of the RAM role in the target account to assume when enabling multi-account access for cross-account operations.
  final pulumi.Input<String>? assumeRoleName;
  /// MCP Server creation time in China Standard Time (CST), for example, 2025-12-04 19:46:52.
  final pulumi.Input<String>? createTime;
  /// Description of the API MCP service.
  final pulumi.Input<String>? description;
  /// Specifies whether to enable multi-account access. When enabled, the MCP Server exposes the x_assume_account_id parameter by default. When this parameter is provided, the MCP Server switches to the specified account to perform operations.
  final pulumi.Input<bool>? enableAssumeRole;
  /// Whether to enable a custom VPC whitelist. If disabled, the configuration follows the account-level setting.
  final pulumi.Input<bool>? enableCustomVpcWhitelist;
  /// MCP instructions that guide the large language model on how to use this MCP. The client must support the Instructions field defined in the MCP standard protocol.
  final pulumi.Input<String>? instructions;
  /// Documentation language for the API MCP service. You can select either Chinese or English API documentation. The choice of language may affect the AI's response quality due to differences in prompt wording. Supported values are EN_US and ZH_CN.
  final pulumi.Input<String>? language;
  /// Name of the MCP Server. It can contain digits, English letters, and hyphens (-).
  final pulumi.Input<String>? name;
  /// The custom OAuth Client ID when selecting a custom OAuth configuration.
  /// `Supported only for Web/Native applications, and the OAuth scope must include /acs/mcp-server.`
  final pulumi.Input<String>? oauthClientId;
  /// List of prompts supported by the MCP Server. For the MCP protocol, clients retrieve this list through the prompts/list RPC call. See `prompts` below.
  final pulumi.Input<List<OpenApiExplorerApiMcpServerPrompt>>? prompts;
  /// Whether to enable public network access. This setting takes precedence over the account-level configuration and supports the following options:
  /// - on: enables public network access;
  /// - off: disables public network access;
  /// - follow: inherits the account-level configuration.
  final pulumi.Input<String>? publicAccess;
  /// Enabled system services.
  final pulumi.Input<List<String>>? systemTools;
  final pulumi.Input<List<OpenApiExplorerApiMcpServerTerraformTool>>? terraformTools;
  /// When public network access is disabled, this field specifies the VPC whitelist that restricts source VPCs. If not set or left empty, no restriction is applied to the source.
  final pulumi.Input<List<String>>? vpcWhitelists;

  /// Creates a new [OpenApiExplorerApiMcpServerState].
  /// [additionalApiDescriptions] Additional OpenAPI description information that can override the default behavior of APIs, including:
  /// [apis] The list of APIs to be included in the API MCP Server. See `apis` below.
  /// [assumeRoleExtraPolicy] When multi-account access is enabled, this field defines an additional policy for role assumption. If specified, this policy overrides the original permissions defined for the role, and the assumed role’s permissions are determined solely by this policy.
  /// [assumeRoleName] The name of the RAM role in the target account to assume when enabling multi-account access for cross-account operations.
  /// [createTime] MCP Server creation time in China Standard Time (CST), for example, 2025-12-04 19:46:52.
  /// [description] Description of the API MCP service.
  /// [enableAssumeRole] Specifies whether to enable multi-account access. When enabled, the MCP Server exposes the x_assume_account_id parameter by default. When this parameter is provided, the MCP Server switches to the specified account to perform operations.
  /// [enableCustomVpcWhitelist] Whether to enable a custom VPC whitelist. If disabled, the configuration follows the account-level setting.
  /// [instructions] MCP instructions that guide the large language model on how to use this MCP. The client must support the Instructions field defined in the MCP standard protocol.
  /// [language] Documentation language for the API MCP service. You can select either Chinese or English API documentation. The choice of language may affect the AI's response quality due to differences in prompt wording. Supported values are EN_US and ZH_CN.
  /// [name] Name of the MCP Server. It can contain digits, English letters, and hyphens (-).
  /// [oauthClientId] The custom OAuth Client ID when selecting a custom OAuth configuration.
  /// [prompts] List of prompts supported by the MCP Server. For the MCP protocol, clients retrieve this list through the prompts/list RPC call. See `prompts` below.
  /// [publicAccess] Whether to enable public network access. This setting takes precedence over the account-level configuration and supports the following options:
  /// [systemTools] Enabled system services.
  /// [terraformTools] Optional.
  /// [vpcWhitelists] When public network access is disabled, this field specifies the VPC whitelist that restricts source VPCs. If not set or left empty, no restriction is applied to the source.
  OpenApiExplorerApiMcpServerState({
    pulumi.Output<List<OpenApiExplorerApiMcpServerAdditionalApiDescription>>? additionalApiDescriptions,
    pulumi.Output<List<OpenApiExplorerApiMcpServerApi>>? apis,
    pulumi.Output<String>? assumeRoleExtraPolicy,
    pulumi.Output<String>? assumeRoleName,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enableAssumeRole,
    pulumi.Output<bool>? enableCustomVpcWhitelist,
    pulumi.Output<String>? instructions,
    pulumi.Output<String>? language,
    pulumi.Output<String>? name,
    pulumi.Output<String>? oauthClientId,
    pulumi.Output<List<OpenApiExplorerApiMcpServerPrompt>>? prompts,
    pulumi.Output<String>? publicAccess,
    pulumi.Output<List<String>>? systemTools,
    pulumi.Output<List<OpenApiExplorerApiMcpServerTerraformTool>>? terraformTools,
    pulumi.Output<List<String>>? vpcWhitelists,
  }) :
      additionalApiDescriptions = pulumi.Input.asOptionalInput<List<OpenApiExplorerApiMcpServerAdditionalApiDescription>>(additionalApiDescriptions),
      apis = pulumi.Input.asOptionalInput<List<OpenApiExplorerApiMcpServerApi>>(apis),
      assumeRoleExtraPolicy = pulumi.Input.asOptionalInput<String>(assumeRoleExtraPolicy),
      assumeRoleName = pulumi.Input.asOptionalInput<String>(assumeRoleName),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableAssumeRole = pulumi.Input.asOptionalInput<bool>(enableAssumeRole),
      enableCustomVpcWhitelist = pulumi.Input.asOptionalInput<bool>(enableCustomVpcWhitelist),
      instructions = pulumi.Input.asOptionalInput<String>(instructions),
      language = pulumi.Input.asOptionalInput<String>(language),
      name = pulumi.Input.asOptionalInput<String>(name),
      oauthClientId = pulumi.Input.asOptionalInput<String>(oauthClientId),
      prompts = pulumi.Input.asOptionalInput<List<OpenApiExplorerApiMcpServerPrompt>>(prompts),
      publicAccess = pulumi.Input.asOptionalInput<String>(publicAccess),
      systemTools = pulumi.Input.asOptionalInput<List<String>>(systemTools),
      terraformTools = pulumi.Input.asOptionalInput<List<OpenApiExplorerApiMcpServerTerraformTool>>(terraformTools),
      vpcWhitelists = pulumi.Input.asOptionalInput<List<String>>(vpcWhitelists);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalApiDescriptions': ?pulumi.Input.mapOptionalInputValue<List<OpenApiExplorerApiMcpServerAdditionalApiDescription>, List<Map<String, dynamic>>>(additionalApiDescriptions, (value) => pulumi.Input.encodeList<OpenApiExplorerApiMcpServerAdditionalApiDescription, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apis': ?pulumi.Input.mapOptionalInputValue<List<OpenApiExplorerApiMcpServerApi>, List<Map<String, dynamic>>>(apis, (value) => pulumi.Input.encodeList<OpenApiExplorerApiMcpServerApi, Map<String, dynamic>>(value, (value) => value.toMap())),
      'assumeRoleExtraPolicy': ?assumeRoleExtraPolicy,
      'assumeRoleName': ?assumeRoleName,
      'createTime': ?createTime,
      'description': ?description,
      'enableAssumeRole': ?enableAssumeRole,
      'enableCustomVpcWhitelist': ?enableCustomVpcWhitelist,
      'instructions': ?instructions,
      'language': ?language,
      'name': ?name,
      'oauthClientId': ?oauthClientId,
      'prompts': ?pulumi.Input.mapOptionalInputValue<List<OpenApiExplorerApiMcpServerPrompt>, List<Map<String, dynamic>>>(prompts, (value) => pulumi.Input.encodeList<OpenApiExplorerApiMcpServerPrompt, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicAccess': ?publicAccess,
      'systemTools': ?systemTools,
      'terraformTools': ?pulumi.Input.mapOptionalInputValue<List<OpenApiExplorerApiMcpServerTerraformTool>, List<Map<String, dynamic>>>(terraformTools, (value) => pulumi.Input.encodeList<OpenApiExplorerApiMcpServerTerraformTool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcWhitelists': ?vpcWhitelists,
    };
  }

  factory OpenApiExplorerApiMcpServerState.fromMap(Map<String, dynamic> map) {
    return OpenApiExplorerApiMcpServerState(
      additionalApiDescriptions: map['additionalApiDescriptions'] == null ? null : pulumi.Output.create<List<OpenApiExplorerApiMcpServerAdditionalApiDescription>>(pulumi.Input.decodeList<OpenApiExplorerApiMcpServerAdditionalApiDescription>(map['additionalApiDescriptions'], (value) => OpenApiExplorerApiMcpServerAdditionalApiDescription.fromMap((value as Map).cast<String, dynamic>()))),
      apis: map['apis'] == null ? null : pulumi.Output.create<List<OpenApiExplorerApiMcpServerApi>>(pulumi.Input.decodeList<OpenApiExplorerApiMcpServerApi>(map['apis'], (value) => OpenApiExplorerApiMcpServerApi.fromMap((value as Map).cast<String, dynamic>()))),
      assumeRoleExtraPolicy: map['assumeRoleExtraPolicy'] == null ? null : pulumi.Output.create<String>(map['assumeRoleExtraPolicy'] as String),
      assumeRoleName: map['assumeRoleName'] == null ? null : pulumi.Output.create<String>(map['assumeRoleName'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enableAssumeRole: map['enableAssumeRole'] == null ? null : pulumi.Output.create<bool>(map['enableAssumeRole'] as bool),
      enableCustomVpcWhitelist: map['enableCustomVpcWhitelist'] == null ? null : pulumi.Output.create<bool>(map['enableCustomVpcWhitelist'] as bool),
      instructions: map['instructions'] == null ? null : pulumi.Output.create<String>(map['instructions'] as String),
      language: map['language'] == null ? null : pulumi.Output.create<String>(map['language'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      oauthClientId: map['oauthClientId'] == null ? null : pulumi.Output.create<String>(map['oauthClientId'] as String),
      prompts: map['prompts'] == null ? null : pulumi.Output.create<List<OpenApiExplorerApiMcpServerPrompt>>(pulumi.Input.decodeList<OpenApiExplorerApiMcpServerPrompt>(map['prompts'], (value) => OpenApiExplorerApiMcpServerPrompt.fromMap((value as Map).cast<String, dynamic>()))),
      publicAccess: map['publicAccess'] == null ? null : pulumi.Output.create<String>(map['publicAccess'] as String),
      systemTools: map['systemTools'] == null ? null : pulumi.Output.create<List<String>>((map['systemTools'] as List).cast<String>()),
      terraformTools: map['terraformTools'] == null ? null : pulumi.Output.create<List<OpenApiExplorerApiMcpServerTerraformTool>>(pulumi.Input.decodeList<OpenApiExplorerApiMcpServerTerraformTool>(map['terraformTools'], (value) => OpenApiExplorerApiMcpServerTerraformTool.fromMap((value as Map).cast<String, dynamic>()))),
      vpcWhitelists: map['vpcWhitelists'] == null ? null : pulumi.Output.create<List<String>>((map['vpcWhitelists'] as List).cast<String>()),
    );
  }
}

