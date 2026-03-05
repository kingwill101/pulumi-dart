// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_api_key_credential_provider_api_key_secret_arn.dart';

/// Input properties used for looking up and filtering AgentcoreApiKeyCredentialProvider resources.
class AgentcoreApiKeyCredentialProviderState {
  /// API key value. Cannot be used with `api_key_wo`. This value will be visible in pulumi preview outputs and logs.
  ///
  /// **Write-Only API Key (choose one approach):**
  final pulumi.Input<String>? apiKey;
  /// ARN of the AWS Secrets Manager secret containing the API key.
  final pulumi.Input<List<AgentcoreApiKeyCredentialProviderApiKeySecretArn>>? apiKeySecretArns;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only API key value. Cannot be used with `api_key`. Must be used together with `api_key_wo_version`.
  final pulumi.Input<String>? apiKeyWo;
  /// Used together with `api_key_wo` to trigger an update. Increment this value when an update to `api_key_wo` is required.
  final pulumi.Input<int>? apiKeyWoVersion;
  /// ARN of the API Key credential provider.
  final pulumi.Input<String>? credentialProviderArn;
  /// Name of the API Key credential provider. Forces replacement when changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ///
  /// **Standard API Key (choose one approach):**
  final pulumi.Input<String>? region;

  /// Creates a new [AgentcoreApiKeyCredentialProviderState].
  /// [apiKey] API key value. Cannot be used with `api_key_wo`. This value will be visible in pulumi preview outputs and logs.
  /// [apiKeySecretArns] ARN of the AWS Secrets Manager secret containing the API key.
  /// [apiKeyWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [apiKeyWoVersion] Used together with `api_key_wo` to trigger an update. Increment this value when an update to `api_key_wo` is required.
  /// [credentialProviderArn] ARN of the API Key credential provider.
  /// [name] Name of the API Key credential provider. Forces replacement when changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AgentcoreApiKeyCredentialProviderState({
    this.apiKey,
    this.apiKeySecretArns,
    this.apiKeyWo,
    this.apiKeyWoVersion,
    this.credentialProviderArn,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'apiKeySecretArns': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreApiKeyCredentialProviderApiKeySecretArn>, List<Map<String, dynamic>>>(apiKeySecretArns, (value) => pulumi.Input.encodeList<AgentcoreApiKeyCredentialProviderApiKeySecretArn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeyWo': ?apiKeyWo,
      'apiKeyWoVersion': ?apiKeyWoVersion,
      'credentialProviderArn': ?credentialProviderArn,
      'name': ?name,
      'region': ?region,
    };
  }

  factory AgentcoreApiKeyCredentialProviderState.fromMap(Map<String, dynamic> map) {
    return AgentcoreApiKeyCredentialProviderState(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKeySecretArns: (() { final guardedValue = map['apiKeySecretArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreApiKeyCredentialProviderApiKeySecretArn>(guardedValue, (value) => AgentcoreApiKeyCredentialProviderApiKeySecretArn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiKeyWo: (() { final guardedValue = map['apiKeyWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKeyWoVersion: (() { final guardedValue = map['apiKeyWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      credentialProviderArn: (() { final guardedValue = map['credentialProviderArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

