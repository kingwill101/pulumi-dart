// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gtm_instances_instance_alert_config.dart';

class GetGtmInstancesInstance {
  /// The alert notification methods.
  final pulumi.Input<List<GetGtmInstancesInstanceAlertConfig>> alertConfigs;
  /// The alert group.
  final pulumi.Input<List<String>> alertGroups;
  /// The access type of the CNAME domain name.
  final pulumi.Input<String> cnameType;
  /// The CreateTime of the Gtm Instance.
  final pulumi.Input<String> createTime;
  /// The ExpireTime of the Gtm Instance.
  final pulumi.Input<String> expireTime;
  /// The ID of the Gtm Instance.
  final pulumi.Input<String> id;
  /// The ID of the Gtm Instance.
  final pulumi.Input<String> instanceId;
  /// The name of the Gtm Instance.
  final pulumi.Input<String> instanceName;
  /// The version of the instance.
  final pulumi.Input<String> packageEdition;
  /// The paymentype of the resource.
  final pulumi.Input<String> paymentType;
  /// The Public Network domain name access method.
  final pulumi.Input<String> publicCnameMode;
  /// The CNAME access domain name.
  final pulumi.Input<String> publicRr;
  /// The website domain name that the user uses on the Internet.
  final pulumi.Input<String> publicUserDomainName;
  /// The domain name that is used to access GTM over the Internet.
  final pulumi.Input<String> publicZoneName;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// The type of the access policy.
  final pulumi.Input<String> strategyMode;
  /// The global time to live.
  final pulumi.Input<int> ttl;

  /// Creates a new [GetGtmInstancesInstance].
  /// [alertConfigs] The alert notification methods.
  /// [alertGroups] The alert group.
  /// [cnameType] The access type of the CNAME domain name.
  /// [createTime] The CreateTime of the Gtm Instance.
  /// [expireTime] The ExpireTime of the Gtm Instance.
  /// [id] The ID of the Gtm Instance.
  /// [instanceId] The ID of the Gtm Instance.
  /// [instanceName] The name of the Gtm Instance.
  /// [packageEdition] The version of the instance.
  /// [paymentType] The paymentype of the resource.
  /// [publicCnameMode] The Public Network domain name access method.
  /// [publicRr] The CNAME access domain name.
  /// [publicUserDomainName] The website domain name that the user uses on the Internet.
  /// [publicZoneName] The domain name that is used to access GTM over the Internet.
  /// [resourceGroupId] The ID of the resource group.
  /// [strategyMode] The type of the access policy.
  /// [ttl] The global time to live.
  GetGtmInstancesInstance({
    required this.alertConfigs,
    required this.alertGroups,
    required this.cnameType,
    required this.createTime,
    required this.expireTime,
    required this.id,
    required this.instanceId,
    required this.instanceName,
    required this.packageEdition,
    required this.paymentType,
    required this.publicCnameMode,
    required this.publicRr,
    required this.publicUserDomainName,
    required this.publicZoneName,
    required this.resourceGroupId,
    required this.strategyMode,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertConfigs': pulumi.Input.mapInputValue<List<GetGtmInstancesInstanceAlertConfig>, List<Map<String, dynamic>>>(alertConfigs, (value) => pulumi.Input.encodeList<GetGtmInstancesInstanceAlertConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'alertGroups': alertGroups,
      'cnameType': cnameType,
      'createTime': createTime,
      'expireTime': expireTime,
      'id': id,
      'instanceId': instanceId,
      'instanceName': instanceName,
      'packageEdition': packageEdition,
      'paymentType': paymentType,
      'publicCnameMode': publicCnameMode,
      'publicRr': publicRr,
      'publicUserDomainName': publicUserDomainName,
      'publicZoneName': publicZoneName,
      'resourceGroupId': resourceGroupId,
      'strategyMode': strategyMode,
      'ttl': ttl,
    };
  }

  factory GetGtmInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetGtmInstancesInstance(
      alertConfigs: (pulumi.Input.decodeList<GetGtmInstancesInstanceAlertConfig>(map['alertConfigs'], (value) => GetGtmInstancesInstanceAlertConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      alertGroups: ((map['alertGroups'] as List).cast<String>()).input(),
      cnameType: (map['cnameType'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      expireTime: (map['expireTime'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceName: (map['instanceName'] as String).input(),
      packageEdition: (map['packageEdition'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      publicCnameMode: (map['publicCnameMode'] as String).input(),
      publicRr: (map['publicRr'] as String).input(),
      publicUserDomainName: (map['publicUserDomainName'] as String).input(),
      publicZoneName: (map['publicZoneName'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      strategyMode: (map['strategyMode'] as String).input(),
      ttl: (map['ttl'] as int).input(),
    );
  }
}

