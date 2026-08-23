// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ConnectorConfigResponse
class ConnectorConfigResponseResponse {
  /// &lt;p&gt;A unique code associated with the cluster for registration purposes.&lt;/p&gt;
  final pulumi.Input<String>? activationCode;
  /// &lt;p&gt;The expiration time of the connected cluster. The cluster's YAML file must be applied through the native provider.&lt;/p&gt;
  final pulumi.Input<String>? activationExpiry;
  /// &lt;p&gt;A unique ID associated with the cluster for registration purposes.&lt;/p&gt;
  final pulumi.Input<String>? activationId;
  /// &lt;p&gt;The cluster's cloud service provider.&lt;/p&gt;
  final pulumi.Input<String>? provider;
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the role to communicate with services from the connected Kubernetes cluster.&lt;/p&gt;
  final pulumi.Input<String>? roleArn;

  /// Creates a new [ConnectorConfigResponseResponse].
  /// [activationCode] &lt;p&gt;A unique code associated with the cluster for registration purposes.&lt;/p&gt;
  /// [activationExpiry] &lt;p&gt;The expiration time of the connected cluster. The cluster's YAML file must be applied through the native provider.&lt;/p&gt;
  /// [activationId] &lt;p&gt;A unique ID associated with the cluster for registration purposes.&lt;/p&gt;
  /// [provider] &lt;p&gt;The cluster's cloud service provider.&lt;/p&gt;
  /// [roleArn] &lt;p&gt;The Amazon Resource Name (ARN) of the role to communicate with services from the connected Kubernetes cluster.&lt;/p&gt;
  const ConnectorConfigResponseResponse({
    this.activationCode,
    this.activationExpiry,
    this.activationId,
    this.provider,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationCode': ?activationCode,
      'activationExpiry': ?activationExpiry,
      'activationId': ?activationId,
      'provider': ?provider,
      'roleArn': ?roleArn,
    };
  }

  factory ConnectorConfigResponseResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorConfigResponseResponse(
      activationCode: (() { final guardedValue = map['activationCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      activationExpiry: (() { final guardedValue = map['activationExpiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      activationId: (() { final guardedValue = map['activationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
