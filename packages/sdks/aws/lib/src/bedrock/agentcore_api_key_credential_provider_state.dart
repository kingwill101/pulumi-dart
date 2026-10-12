// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_api_key_credential_provider_api_key_secret_arn.dart';
import 'agentcore_api_key_credential_provider_api_key_secret_config.dart';

/// Input properties used for looking up and filtering AgentcoreApiKeyCredentialProvider resources.
class AgentcoreApiKeyCredentialProviderState {
  /// API key value. Conflicts with `apiKeyWo` and `apiKeySecretConfig`. This value will be visible in pulumi preview outputs and logs.
  final pulumi.Input<String?>? apiKey;
  /// ARN of the AWS Secrets Manager secret containing the API key.
  final pulumi.Input<List<AgentcoreApiKeyCredentialProviderApiKeySecretArn>?>? apiKeySecretArns;
  /// Reference to a customer-managed AWS Secrets Manager secret that stores the API key. Requires `apiKeySecretSource = "EXTERNAL"`. See below.
  final pulumi.Input<AgentcoreApiKeyCredentialProviderApiKeySecretConfig?>? apiKeySecretConfig;
  /// Source of the secret backing the credential provider. Valid values are `MANAGED` (AgentCore creates and manages the secret from the supplied `apiKey`) and `EXTERNAL` (the provider references a customer-managed AWS Secrets Manager secret via `apiKeySecretConfig`). Changing between `MANAGED` and `EXTERNAL` forces replacement of the resource.
  final pulumi.Input<String?>? apiKeySecretSource;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only API key value. Conflicts with `apiKey` and `apiKeySecretConfig`. If set, requires `apiKeyWoVersion` to be set.
  final pulumi.Input<String?>? apiKeyWo;
  /// Required when `apiKeyWo` is set. Changing this value triggers an update to `apiKeyWo`.
  final pulumi.Input<int?>? apiKeyWoVersion;
  /// ARN of the API Key credential provider.
  final pulumi.Input<String?>? credentialProviderArn;
  /// Name of the API Key credential provider. Forces replacement when changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [AgentcoreApiKeyCredentialProviderState].
  /// [apiKey] API key value. Conflicts with `apiKeyWo` and `apiKeySecretConfig`. This value will be visible in pulumi preview outputs and logs.
  /// [apiKeySecretArns] ARN of the AWS Secrets Manager secret containing the API key.
  /// [apiKeySecretConfig] Reference to a customer-managed AWS Secrets Manager secret that stores the API key. Requires `apiKeySecretSource = "EXTERNAL"`. See below.
  /// [apiKeySecretSource] Source of the secret backing the credential provider. Valid values are `MANAGED` (AgentCore creates and manages the secret from the supplied `apiKey`) and `EXTERNAL` (the provider references a customer-managed AWS Secrets Manager secret via `apiKeySecretConfig`). Changing between `MANAGED` and `EXTERNAL` forces replacement of the resource.
  /// [apiKeyWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [apiKeyWoVersion] Required when `apiKeyWo` is set. Changing this value triggers an update to `apiKeyWo`.
  /// [credentialProviderArn] ARN of the API Key credential provider.
  /// [name] Name of the API Key credential provider. Forces replacement when changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const AgentcoreApiKeyCredentialProviderState({
    this.apiKey,
    this.apiKeySecretArns,
    this.apiKeySecretConfig,
    this.apiKeySecretSource,
    this.apiKeyWo,
    this.apiKeyWoVersion,
    this.credentialProviderArn,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'apiKeySecretArns': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreApiKeyCredentialProviderApiKeySecretArn>, List<Map<String, dynamic>>>(apiKeySecretArns, (value) => pulumi.Input.encodeList<AgentcoreApiKeyCredentialProviderApiKeySecretArn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeySecretConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreApiKeyCredentialProviderApiKeySecretConfig, Map<String, dynamic>>(apiKeySecretConfig, (value) => value.toMap()),
      'apiKeySecretSource': ?apiKeySecretSource,
      'apiKeyWo': ?apiKeyWo,
      'apiKeyWoVersion': ?apiKeyWoVersion,
      'credentialProviderArn': ?credentialProviderArn,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AgentcoreApiKeyCredentialProviderState.fromMap(Map<String, dynamic> map) {
    return AgentcoreApiKeyCredentialProviderState(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKeySecretArns: (() { final guardedValue = map['apiKeySecretArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreApiKeyCredentialProviderApiKeySecretArn>(guardedValue, (value) => AgentcoreApiKeyCredentialProviderApiKeySecretArn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiKeySecretConfig: (() { final guardedValue = map['apiKeySecretConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreApiKeyCredentialProviderApiKeySecretConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apiKeySecretSource: (() { final guardedValue = map['apiKeySecretSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKeyWo: (() { final guardedValue = map['apiKeyWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKeyWoVersion: (() { final guardedValue = map['apiKeyWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      credentialProviderArn: (() { final guardedValue = map['credentialProviderArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
