// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  /// DNS security level.
  final String dnsSecurity;
  final String domain;
  /// Number of domain names bound.
  final String domainNumbers;
  /// Id of the instance.
  final String id;
  /// Id of the instance resource.
  final String instanceId;
  final String paymentType;
  /// Paid package version.
  final String versionCode;
  /// Paid package version name.
  final String versionName;

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
      dnsSecurity: map['dnsSecurity'] as String,
      domain: map['domain'] as String,
      domainNumbers: map['domainNumbers'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      paymentType: map['paymentType'] as String,
      versionCode: map['versionCode'] as String,
      versionName: map['versionName'] as String,
    );
  }
}

