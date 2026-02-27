// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AgentcoreApiKeyCredentialProvider.
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

  AgentcoreApiKeyCredentialProviderArgs({
    this.apiKey,
    this.apiKeyWo,
    this.apiKeyWoVersion,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiKeyValue = apiKey;
    if (apiKeyValue != null) {
      map['apiKey'] = apiKeyValue;
    }
    final apiKeyWoValue = apiKeyWo;
    if (apiKeyWoValue != null) {
      map['apiKeyWo'] = apiKeyWoValue;
    }
    final apiKeyWoVersionValue = apiKeyWoVersion;
    if (apiKeyWoVersionValue != null) {
      map['apiKeyWoVersion'] = apiKeyWoVersionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AgentcoreApiKeyCredentialProviderArgs.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreApiKeyCredentialProviderArgs(
      apiKey: pulumi.Input.asOptionalInput<String>(map['apiKey']),
      apiKeyWo: pulumi.Input.asOptionalInput<String>(map['apiKeyWo']),
      apiKeyWoVersion:
          pulumi.Input.asOptionalInput<int>(map['apiKeyWoVersion']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
