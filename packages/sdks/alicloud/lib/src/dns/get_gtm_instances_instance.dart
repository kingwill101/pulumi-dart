// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gtm_instances_instance_alert_config.dart';

class GetGtmInstancesInstance {
  /// The alert notification methods.
  final List<GetGtmInstancesInstanceAlertConfig> alertConfigs;
  /// The alert group.
  final List<String> alertGroups;
  /// The access type of the CNAME domain name.
  final String cnameType;
  /// The CreateTime of the Gtm Instance.
  final String createTime;
  /// The ExpireTime of the Gtm Instance.
  final String expireTime;
  /// The ID of the Gtm Instance.
  final String id;
  /// The ID of the Gtm Instance.
  final String instanceId;
  /// The name of the Gtm Instance.
  final String instanceName;
  /// The version of the instance.
  final String packageEdition;
  /// The paymentype of the resource.
  final String paymentType;
  /// The Public Network domain name access method.
  final String publicCnameMode;
  /// The CNAME access domain name.
  final String publicRr;
  /// The website domain name that the user uses on the Internet.
  final String publicUserDomainName;
  /// The domain name that is used to access GTM over the Internet.
  final String publicZoneName;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The type of the access policy.
  final String strategyMode;
  /// The global time to live.
  final int ttl;

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
      'alertConfigs': pulumi.Input.encodeList<GetGtmInstancesInstanceAlertConfig, Map<String, dynamic>>(alertConfigs, (value) => value.toMap()),
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
      alertConfigs: pulumi.Input.decodeList<GetGtmInstancesInstanceAlertConfig>(map['alertConfigs'], (value) => GetGtmInstancesInstanceAlertConfig.fromMap((value as Map).cast<String, dynamic>())),
      alertGroups: (map['alertGroups'] as List).cast<String>(),
      cnameType: map['cnameType'] as String,
      createTime: map['createTime'] as String,
      expireTime: map['expireTime'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      packageEdition: map['packageEdition'] as String,
      paymentType: map['paymentType'] as String,
      publicCnameMode: map['publicCnameMode'] as String,
      publicRr: map['publicRr'] as String,
      publicUserDomainName: map['publicUserDomainName'] as String,
      publicZoneName: map['publicZoneName'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      strategyMode: map['strategyMode'] as String,
      ttl: map['ttl'] as int,
    );
  }
}

