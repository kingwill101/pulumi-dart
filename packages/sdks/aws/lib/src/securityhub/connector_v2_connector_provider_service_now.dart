// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorV2ConnectorProviderServiceNow {
  /// Status of the authorization between ServiceNow and the service.
  final pulumi.Input<String>? authStatus;
  /// Instance name of ServiceNow ITSM.
  final pulumi.Input<String> instanceName;
  /// Amazon Resource Name (ARN) of the AWS Secrets Manager secret that contains the ServiceNow credentials.
  final pulumi.Input<String> secretArn;

  /// Creates a new [ConnectorV2ConnectorProviderServiceNow].
  /// [authStatus] Status of the authorization between ServiceNow and the service.
  /// [instanceName] Instance name of ServiceNow ITSM.
  /// [secretArn] Amazon Resource Name (ARN) of the AWS Secrets Manager secret that contains the ServiceNow credentials.
  const ConnectorV2ConnectorProviderServiceNow({
    this.authStatus,
    required this.instanceName,
    required this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authStatus': ?authStatus,
      'instanceName': instanceName,
      'secretArn': secretArn,
    };
  }

  factory ConnectorV2ConnectorProviderServiceNow.fromMap(Map<String, dynamic> map) {
    return ConnectorV2ConnectorProviderServiceNow(
      authStatus: (() { final guardedValue = map['authStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      secretArn: pulumi.Input.fromValue(map['secretArn'] as String),
    );
  }
}
