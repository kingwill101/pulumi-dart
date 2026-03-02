// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bedrock_agentcore_api_key_credential_provider_agentcore_api_key_credential_provider_args_doc}
/// The set of arguments for AgentcoreApiKeyCredentialProvider.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_api_key_credential_provider_agentcore_api_key_credential_provider_args_doc}
class AgentcoreApiKeyCredentialProviderArgs {
  /// API key value. Cannot be used with `api_key_wo`. This value will be visible in pulumi preview outputs and logs.
  ///
  /// **Write-Only API Key (choose one approach):**
  final pulumi.Input<String>? apiKey;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only API key value. Cannot be used with `api_key`. Must be used together with `api_key_wo_version`.
  final pulumi.Input<String>? apiKeyWo;
  /// Used together with `api_key_wo` to trigger an update. Increment this value when an update to `api_key_wo` is required.
  final pulumi.Input<int>? apiKeyWoVersion;
  /// Name of the API Key credential provider. Forces replacement when changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ///
  /// **Standard API Key (choose one approach):**
  final pulumi.Input<String>? region;

  /// Creates a new [AgentcoreApiKeyCredentialProviderArgs].
  /// [apiKey] API key value. Cannot be used with `api_key_wo`. This value will be visible in pulumi preview outputs and logs.
  /// [apiKeyWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [apiKeyWoVersion] Used together with `api_key_wo` to trigger an update. Increment this value when an update to `api_key_wo` is required.
  /// [name] Name of the API Key credential provider. Forces replacement when changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AgentcoreApiKeyCredentialProviderArgs({
    this.apiKey,
    this.apiKeyWo,
    this.apiKeyWoVersion,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'apiKeyWo': ?apiKeyWo,
      'apiKeyWoVersion': ?apiKeyWoVersion,
      'name': ?name,
      'region': ?region,
    };
  }

  factory AgentcoreApiKeyCredentialProviderArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreApiKeyCredentialProviderArgs(
      apiKey: map['apiKey'] == null ? null : ((map['apiKey'] as String).input()).input(),
      apiKeyWo: map['apiKeyWo'] == null ? null : ((map['apiKeyWo'] as String).input()).input(),
      apiKeyWoVersion: map['apiKeyWoVersion'] == null ? null : ((map['apiKeyWoVersion'] as int).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

