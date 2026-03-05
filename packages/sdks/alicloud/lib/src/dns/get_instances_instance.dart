// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  /// DNS security level.
  final pulumi.Input<String> dnsSecurity;
  final pulumi.Input<String> domain;
  /// Number of domain names bound.
  final pulumi.Input<String> domainNumbers;
  /// Id of the instance.
  final pulumi.Input<String> id;
  /// Id of the instance resource.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> paymentType;
  /// Paid package version.
  final pulumi.Input<String> versionCode;
  /// Paid package version name.
  final pulumi.Input<String> versionName;

  /// Creates a new [GetInstancesInstance].
  /// [dnsSecurity] DNS security level.
  /// [domain] Required.
  /// [domainNumbers] Number of domain names bound.
  /// [id] Id of the instance.
  /// [instanceId] Id of the instance resource.
  /// [paymentType] Required.
  /// [versionCode] Paid package version.
  /// [versionName] Paid package version name.
  GetInstancesInstance({
    required this.dnsSecurity,
    required this.domain,
    required this.domainNumbers,
    required this.id,
    required this.instanceId,
    required this.paymentType,
    required this.versionCode,
    required this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsSecurity': dnsSecurity,
      'domain': domain,
      'domainNumbers': domainNumbers,
      'id': id,
      'instanceId': instanceId,
      'paymentType': paymentType,
      'versionCode': versionCode,
      'versionName': versionName,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      dnsSecurity: pulumi.Input.fromValue(map['dnsSecurity'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      domainNumbers: pulumi.Input.fromValue(map['domainNumbers'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      versionCode: pulumi.Input.fromValue(map['versionCode'] as String),
      versionName: pulumi.Input.fromValue(map['versionName'] as String),
    );
  }
}

