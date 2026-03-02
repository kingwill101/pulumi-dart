// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlidnsInstancesInstance {
  /// DNS security level.
  final pulumi.Input<String> dnsSecurity;
  /// (Available in 1.124.1+) The domain name.
  final pulumi.Input<String> domain;
  /// Number of domain names bound.
  final pulumi.Input<String> domainNumbers;
  /// Id of the instance.
  final pulumi.Input<String> id;
  /// Id of the instance resource.
  final pulumi.Input<String> instanceId;
  /// (Available in 1.124.1+) The payment type of alidns instance.
  final pulumi.Input<String> paymentType;
  /// Paid package version.
  final pulumi.Input<String> versionCode;
  /// Paid package version name.
  final pulumi.Input<String> versionName;

  /// Creates a new [GetAlidnsInstancesInstance].
  /// [dnsSecurity] DNS security level.
  /// [domain] (Available in 1.124.1+) The domain name.
  /// [domainNumbers] Number of domain names bound.
  /// [id] Id of the instance.
  /// [instanceId] Id of the instance resource.
  /// [paymentType] (Available in 1.124.1+) The payment type of alidns instance.
  /// [versionCode] Paid package version.
  /// [versionName] Paid package version name.
  GetAlidnsInstancesInstance({
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

  factory GetAlidnsInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetAlidnsInstancesInstance(
      dnsSecurity: (map['dnsSecurity'] as String).input(),
      domain: (map['domain'] as String).input(),
      domainNumbers: (map['domainNumbers'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      versionCode: (map['versionCode'] as String).input(),
      versionName: (map['versionName'] as String).input(),
    );
  }
}

