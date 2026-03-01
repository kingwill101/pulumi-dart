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
    pulumi.Output<String>? apiKey,
    pulumi.Output<List<AgentcoreApiKeyCredentialProviderApiKeySecretArn>>? apiKeySecretArns,
    pulumi.Output<String>? apiKeyWo,
    pulumi.Output<int>? apiKeyWoVersion,
    pulumi.Output<String>? credentialProviderArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      apiKey = pulumi.Input.asOptionalInput<String>(apiKey),
      apiKeySecretArns = pulumi.Input.asOptionalInput<List<AgentcoreApiKeyCredentialProviderApiKeySecretArn>>(apiKeySecretArns),
      apiKeyWo = pulumi.Input.asOptionalInput<String>(apiKeyWo),
      apiKeyWoVersion = pulumi.Input.asOptionalInput<int>(apiKeyWoVersion),
      credentialProviderArn = pulumi.Input.asOptionalInput<String>(credentialProviderArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      apiKey: map['apiKey'] == null ? null : pulumi.Output.create<String>(map['apiKey'] as String),
      apiKeySecretArns: map['apiKeySecretArns'] == null ? null : pulumi.Output.create<List<AgentcoreApiKeyCredentialProviderApiKeySecretArn>>(pulumi.Input.decodeList<AgentcoreApiKeyCredentialProviderApiKeySecretArn>(map['apiKeySecretArns'], (value) => AgentcoreApiKeyCredentialProviderApiKeySecretArn.fromMap((value as Map).cast<String, dynamic>()))),
      apiKeyWo: map['apiKeyWo'] == null ? null : pulumi.Output.create<String>(map['apiKeyWo'] as String),
      apiKeyWoVersion: map['apiKeyWoVersion'] == null ? null : pulumi.Output.create<int>(map['apiKeyWoVersion'] as int),
      credentialProviderArn: map['credentialProviderArn'] == null ? null : pulumi.Output.create<String>(map['credentialProviderArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

