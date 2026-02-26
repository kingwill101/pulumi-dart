// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AgentcoreApiKeyCredentialProvider.
class AgentcoreApiKeyCredentialProviderArgs {
  /// API key value. Cannot be used with <span pulumi-lang-nodejs="`apiKeyWo`" pulumi-lang-dotnet="`ApiKeyWo`" pulumi-lang-go="`apiKeyWo`" pulumi-lang-python="`api_key_wo`" pulumi-lang-yaml="`apiKeyWo`" pulumi-lang-java="`apiKeyWo`">`api_key_wo`</span>. This value will be visible in pulumi preview outputs and logs.
  ///
  /// **Write-Only API Key (choose one approach):**
  final Input<String>? apiKey;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only API key value. Cannot be used with <span pulumi-lang-nodejs="`apiKey`" pulumi-lang-dotnet="`ApiKey`" pulumi-lang-go="`apiKey`" pulumi-lang-python="`api_key`" pulumi-lang-yaml="`apiKey`" pulumi-lang-java="`apiKey`">`api_key`</span>. Must be used together with <span pulumi-lang-nodejs="`apiKeyWoVersion`" pulumi-lang-dotnet="`ApiKeyWoVersion`" pulumi-lang-go="`apiKeyWoVersion`" pulumi-lang-python="`api_key_wo_version`" pulumi-lang-yaml="`apiKeyWoVersion`" pulumi-lang-java="`apiKeyWoVersion`">`api_key_wo_version`</span>.
  final Input<String>? apiKeyWo;

  /// Used together with <span pulumi-lang-nodejs="`apiKeyWo`" pulumi-lang-dotnet="`ApiKeyWo`" pulumi-lang-go="`apiKeyWo`" pulumi-lang-python="`api_key_wo`" pulumi-lang-yaml="`apiKeyWo`" pulumi-lang-java="`apiKeyWo`">`api_key_wo`</span> to trigger an update. Increment this value when an update to <span pulumi-lang-nodejs="`apiKeyWo`" pulumi-lang-dotnet="`ApiKeyWo`" pulumi-lang-go="`apiKeyWo`" pulumi-lang-python="`api_key_wo`" pulumi-lang-yaml="`apiKeyWo`" pulumi-lang-java="`apiKeyWo`">`api_key_wo`</span> is required.
  final Input<int>? apiKeyWoVersion;

  /// Name of the API Key credential provider. Forces replacement when changed.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ///
  /// **Standard API Key (choose one approach):**
  final Input<String>? region;

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
      apiKey: Input.asOptionalInput<String>(map['apiKey']),
      apiKeyWo: Input.asOptionalInput<String>(map['apiKeyWo']),
      apiKeyWoVersion: Input.asOptionalInput<int>(map['apiKeyWoVersion']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
