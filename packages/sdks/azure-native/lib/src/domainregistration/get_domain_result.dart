// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_name_response.dart';

/// Result data returned by getDomain.
class GetDomainResult {
  final String? authCode;
  /// &lt;code&gt;true&lt;/code&gt; if the domain should be automatically renewed; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final bool? autoRenew;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Domain creation timestamp.
  final String? createdTime;
  /// Current DNS type
  final String? dnsType;
  /// Azure DNS Zone to use
  final String? dnsZoneId;
  /// Reasons why domain is not renewable.
  final List<String>? domainNotRenewableReasons;
  /// Domain expiration timestamp.
  final String? expirationTime;
  /// Resource Id.
  final String? id;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final String? kind;
  /// Timestamp when the domain was renewed last time.
  final String? lastRenewedTime;
  /// Resource Location.
  final String? location;
  /// All hostnames derived from the domain and assigned to Azure resources.
  final List<HostNameResponse>? managedHostNames;
  /// Resource Name.
  final String? name;
  /// Name servers.
  final List<String>? nameServers;
  /// &lt;code&gt;true&lt;/code&gt; if domain privacy is enabled for this domain; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final bool? privacy;
  /// Domain provisioning state.
  final String? provisioningState;
  /// &lt;code&gt;true&lt;/code&gt; if Azure can assign this domain to App Service apps; otherwise, &lt;code&gt;false&lt;/code&gt;. This value will be &lt;code&gt;true&lt;/code&gt; if domain registration status is active and
  /// it is hosted on name servers Azure has programmatic access to.
  final bool? readyForDnsRecordManagement;
  /// Domain registration status.
  final String? registrationStatus;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Target DNS type (would be used for migration)
  final String? targetDnsType;
  /// Resource type.
  final String? type;

  /// Creates a new [GetDomainResult].
  /// [authCode] Optional.
  /// [autoRenew] &lt;code&gt;true&lt;/code&gt; if the domain should be automatically renewed; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdTime] Domain creation timestamp.
  /// [dnsType] Current DNS type
  /// [dnsZoneId] Azure DNS Zone to use
  /// [domainNotRenewableReasons] Reasons why domain is not renewable.
  /// [expirationTime] Domain expiration timestamp.
  /// [id] Resource Id.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [lastRenewedTime] Timestamp when the domain was renewed last time.
  /// [location] Resource Location.
  /// [managedHostNames] All hostnames derived from the domain and assigned to Azure resources.
  /// [name] Resource Name.
  /// [nameServers] Name servers.
  /// [privacy] &lt;code&gt;true&lt;/code&gt; if domain privacy is enabled for this domain; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [provisioningState] Domain provisioning state.
  /// [readyForDnsRecordManagement] &lt;code&gt;true&lt;/code&gt; if Azure can assign this domain to App Service apps; otherwise, &lt;code&gt;false&lt;/code&gt;. This value will be &lt;code&gt;true&lt;/code&gt; if domain registration status is active and
  /// [registrationStatus] Domain registration status.
  /// [tags] Resource tags.
  /// [targetDnsType] Target DNS type (would be used for migration)
  /// [type] Resource type.
  GetDomainResult({
    this.authCode,
    bool? autoRenew,
    this.azureApiVersion,
    this.createdTime,
    this.dnsType,
    this.dnsZoneId,
    this.domainNotRenewableReasons,
    this.expirationTime,
    this.id,
    this.kind,
    this.lastRenewedTime,
    this.location,
    this.managedHostNames,
    this.name,
    this.nameServers,
    this.privacy,
    this.provisioningState,
    this.readyForDnsRecordManagement,
    this.registrationStatus,
    this.tags,
    this.targetDnsType,
    this.type,
  }) : autoRenew = autoRenew ?? true;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authCode': ?authCode,
      'autoRenew': ?autoRenew,
      'azureApiVersion': ?azureApiVersion,
      'createdTime': ?createdTime,
      'dnsType': ?dnsType,
      'dnsZoneId': ?dnsZoneId,
      'domainNotRenewableReasons': ?domainNotRenewableReasons,
      'expirationTime': ?expirationTime,
      'id': ?id,
      'kind': ?kind,
      'lastRenewedTime': ?lastRenewedTime,
      'location': ?location,
      'managedHostNames': ?(() { final guardedValue = managedHostNames; if (guardedValue == null) return null; return pulumi.Input.encodeList<HostNameResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'nameServers': ?nameServers,
      'privacy': ?privacy,
      'provisioningState': ?provisioningState,
      'readyForDnsRecordManagement': ?readyForDnsRecordManagement,
      'registrationStatus': ?registrationStatus,
      'tags': ?tags,
      'targetDnsType': ?targetDnsType,
      'type': ?type,
    };
  }

  factory GetDomainResult.fromMap(Map<String, dynamic> map) {
    return GetDomainResult(
      authCode: (() { final guardedValue = map['authCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsType: (() { final guardedValue = map['dnsType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsZoneId: (() { final guardedValue = map['dnsZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainNotRenewableReasons: (() { final guardedValue = map['domainNotRenewableReasons']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastRenewedTime: (() { final guardedValue = map['lastRenewedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedHostNames: (() { final guardedValue = map['managedHostNames']; if (guardedValue == null) return null; return pulumi.Input.decodeList<HostNameResponse>(guardedValue, (value) => HostNameResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameServers: (() { final guardedValue = map['nameServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      privacy: (() { final guardedValue = map['privacy']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      readyForDnsRecordManagement: (() { final guardedValue = map['readyForDnsRecordManagement']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      registrationStatus: (() { final guardedValue = map['registrationStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetDnsType: (() { final guardedValue = map['targetDnsType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
