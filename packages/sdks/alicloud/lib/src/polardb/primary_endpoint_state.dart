// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrimaryEndpoint resources.
class PrimaryEndpointState {
  /// Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  final pulumi.Input<String>? connectionPrefix;
  /// The Id of cluster that can run database.
  final pulumi.Input<String>? dbClusterId;
  /// The name of the endpoint.
  final pulumi.Input<String>? dbEndpointDescription;
  /// The ID of the cluster endpoint.
  final pulumi.Input<String>? dbEndpointId;
  /// Type of endpoint.
  final pulumi.Input<String>? endpointType;
  /// The network type of the endpoint address.
  final pulumi.Input<String>? netType;
  /// Port of the specified endpoint. Valid values: 3000 to 5999.
  final pulumi.Input<String>? port;
  /// Specifies whether automatic rotation of SSL certificates is enabled. Valid values: `Enable`,`Disable`.
  /// **NOTE:** For a PolarDB for MySQL cluster, this parameter is required, and only one connection string in each endpoint can enable the ssl, for other notes, see [Configure SSL encryption](https://www.alibabacloud.com/help/doc-detail/153182.htm).
  /// For a PolarDB for PostgreSQL cluster or a PolarDB-O cluster, this parameter is not required, by default, SSL encryption is enabled for all endpoints.
  final pulumi.Input<String>? sslAutoRotate;
  /// The specifies SSL certificate download link.
  final pulumi.Input<String>? sslCertificateUrl;
  /// The SSL connection string.
  final pulumi.Input<String>? sslConnectionString;
  /// Specifies how to modify the SSL encryption status. Valid values: `Disable`, `Enable`, `Update`.
  final pulumi.Input<String>? sslEnabled;
  /// The time when the SSL certificate expires. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String>? sslExpireTime;

  /// Creates a new [PrimaryEndpointState].
  /// [connectionPrefix] Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  /// [dbClusterId] The Id of cluster that can run database.
  /// [dbEndpointDescription] The name of the endpoint.
  /// [dbEndpointId] The ID of the cluster endpoint.
  /// [endpointType] Type of endpoint.
  /// [netType] The network type of the endpoint address.
  /// [port] Port of the specified endpoint. Valid values: 3000 to 5999.
  /// [sslAutoRotate] Specifies whether automatic rotation of SSL certificates is enabled. Valid values: `Enable`,`Disable`.
  /// [sslCertificateUrl] The specifies SSL certificate download link.
  /// [sslConnectionString] The SSL connection string.
  /// [sslEnabled] Specifies how to modify the SSL encryption status. Valid values: `Disable`, `Enable`, `Update`.
  /// [sslExpireTime] The time when the SSL certificate expires. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  PrimaryEndpointState({
    this.connectionPrefix,
    this.dbClusterId,
    this.dbEndpointDescription,
    this.dbEndpointId,
    this.endpointType,
    this.netType,
    this.port,
    this.sslAutoRotate,
    this.sslCertificateUrl,
    this.sslConnectionString,
    this.sslEnabled,
    this.sslExpireTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPrefix': ?connectionPrefix,
      'dbClusterId': ?dbClusterId,
      'dbEndpointDescription': ?dbEndpointDescription,
      'dbEndpointId': ?dbEndpointId,
      'endpointType': ?endpointType,
      'netType': ?netType,
      'port': ?port,
      'sslAutoRotate': ?sslAutoRotate,
      'sslCertificateUrl': ?sslCertificateUrl,
      'sslConnectionString': ?sslConnectionString,
      'sslEnabled': ?sslEnabled,
      'sslExpireTime': ?sslExpireTime,
    };
  }

  factory PrimaryEndpointState.fromMap(Map<String, dynamic> map) {
    return PrimaryEndpointState(
      connectionPrefix: (() { final guardedValue = map['connectionPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterId: (() { final guardedValue = map['dbClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbEndpointDescription: (() { final guardedValue = map['dbEndpointDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbEndpointId: (() { final guardedValue = map['dbEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointType: (() { final guardedValue = map['endpointType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      netType: (() { final guardedValue = map['netType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslAutoRotate: (() { final guardedValue = map['sslAutoRotate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslCertificateUrl: (() { final guardedValue = map['sslCertificateUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslConnectionString: (() { final guardedValue = map['sslConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslEnabled: (() { final guardedValue = map['sslEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslExpireTime: (() { final guardedValue = map['sslExpireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

