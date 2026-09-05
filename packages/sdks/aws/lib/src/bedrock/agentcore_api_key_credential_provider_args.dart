// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bedrock_agentcore_api_key_credential_provider_agentcore_api_key_credential_provider_args_doc}
/// The set of arguments for AgentcoreApiKeyCredentialProvider.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_api_key_credential_provider_agentcore_api_key_credential_provider_args_doc}
class AgentcoreApiKeyCredentialProviderArgs {
  /// API key value. Cannot be used with `apiKeyWo`. This value will be visible in pulumi preview outputs and logs.
  ///
  /// **Write-Only API Key (choose one approach):**
  final pulumi.Input<String?>? apiKey;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only API key value. Cannot be used with `apiKey`. Must be used together with `apiKeyWoVersion`.
  final pulumi.Input<String?>? apiKeyWo;
  /// Used together with `apiKeyWo` to trigger an update. Increment this value when an update to `apiKeyWo` is required.
  final pulumi.Input<int?>? apiKeyWoVersion;
  /// Name of the API Key credential provider. Forces replacement when changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// **Standard API Key (choose one approach):**
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AgentcoreApiKeyCredentialProviderArgs].
  /// [apiKey] API key value. Cannot be used with `apiKeyWo`. This value will be visible in pulumi preview outputs and logs.
  /// [apiKeyWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [apiKeyWoVersion] Used together with `apiKeyWo` to trigger an update. Increment this value when an update to `apiKeyWo` is required.
  /// [name] Name of the API Key credential provider. Forces replacement when changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const AgentcoreApiKeyCredentialProviderArgs({
    this.apiKey,
    this.apiKeyWo,
    this.apiKeyWoVersion,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'apiKeyWo': ?apiKeyWo,
      'apiKeyWoVersion': ?apiKeyWoVersion,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory AgentcoreApiKeyCredentialProviderArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreApiKeyCredentialProviderArgs(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKeyWo: (() { final guardedValue = map['apiKeyWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKeyWoVersion: (() { final guardedValue = map['apiKeyWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
