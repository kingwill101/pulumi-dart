// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_response.dart';

/// Definition of EncryptionConfig
class EncryptionConfigResponse {
  /// &lt;p&gt;Key Management Service (KMS) key. Either the ARN or the alias can be used.&lt;/p&gt;
  final pulumi.Input<ProviderResponse>? provider;
  /// &lt;p&gt;Specifies the resources to be encrypted. The only supported value is &lt;code&gt;secrets&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<List<String>>? resources;

  /// Creates a new [EncryptionConfigResponse].
  /// [provider] &lt;p&gt;Key Management Service (KMS) key. Either the ARN or the alias can be used.&lt;/p&gt;
  /// [resources] &lt;p&gt;Specifies the resources to be encrypted. The only supported value is &lt;code&gt;secrets&lt;/code&gt;.&lt;/p&gt;
  EncryptionConfigResponse({
    this.provider,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provider': ?pulumi.Input.mapOptionalInputValue<ProviderResponse, Map<String, dynamic>>(provider, (value) => value.toMap()),
      'resources': ?resources,
    };
  }

  factory EncryptionConfigResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigResponse(
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

