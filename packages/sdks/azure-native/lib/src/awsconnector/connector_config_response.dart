// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ConnectorConfigResponse
class ConnectorConfigResponse {
  /// <p>A unique code associated with the cluster for registration purposes.</p>
  final pulumi.Input<String>? activationCode;
  /// <p>The expiration time of the connected cluster. The cluster's YAML file must be applied through the native provider.</p>
  final pulumi.Input<String>? activationExpiry;
  /// <p>A unique ID associated with the cluster for registration purposes.</p>
  final pulumi.Input<String>? activationId;
  /// <p>The cluster's cloud service provider.</p>
  final pulumi.Input<String>? provider;
  /// <p>The Amazon Resource Name (ARN) of the role to communicate with services from the connected Kubernetes cluster.</p>
  final pulumi.Input<String>? roleArn;

  /// Creates a new [ConnectorConfigResponse].
  /// [activationCode] <p>A unique code associated with the cluster for registration purposes.</p>
  /// [activationExpiry] <p>The expiration time of the connected cluster. The cluster's YAML file must be applied through the native provider.</p>
  /// [activationId] <p>A unique ID associated with the cluster for registration purposes.</p>
  /// [provider] <p>The cluster's cloud service provider.</p>
  /// [roleArn] <p>The Amazon Resource Name (ARN) of the role to communicate with services from the connected Kubernetes cluster.</p>
  ConnectorConfigResponse({
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

  factory ConnectorConfigResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorConfigResponse(
      activationCode: map['activationCode'] == null ? null : (map['activationCode'] as String).input(),
      activationExpiry: map['activationExpiry'] == null ? null : (map['activationExpiry'] as String).input(),
      activationId: map['activationId'] == null ? null : (map['activationId'] as String).input(),
      provider: map['provider'] == null ? null : (map['provider'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
    );
  }
}

