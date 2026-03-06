// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of a hostname derived from a domain.
class HostNameResponse {
  /// Name of the Azure resource the hostname is assigned to. If it is assigned to a Traffic Manager then it will be the Traffic Manager name otherwise it will be the app name.
  final pulumi.Input<String>? azureResourceName;
  /// Type of the Azure resource the hostname is assigned to.
  final pulumi.Input<String>? azureResourceType;
  /// Type of the DNS record.
  final pulumi.Input<String>? customHostNameDnsRecordType;
  /// Type of the hostname.
  final pulumi.Input<String>? hostNameType;
  /// Name of the hostname.
  final pulumi.Input<String>? name;
  /// List of apps the hostname is assigned to. This list will have more than one app only if the hostname is pointing to a Traffic Manager.
  final pulumi.Input<List<String>>? siteNames;

  /// Creates a new [HostNameResponse].
  /// [azureResourceName] Name of the Azure resource the hostname is assigned to. If it is assigned to a Traffic Manager then it will be the Traffic Manager name otherwise it will be the app name.
  /// [azureResourceType] Type of the Azure resource the hostname is assigned to.
  /// [customHostNameDnsRecordType] Type of the DNS record.
  /// [hostNameType] Type of the hostname.
  /// [name] Name of the hostname.
  /// [siteNames] List of apps the hostname is assigned to. This list will have more than one app only if the hostname is pointing to a Traffic Manager.
  const HostNameResponse({
    this.azureResourceName,
    this.azureResourceType,
    this.customHostNameDnsRecordType,
    this.hostNameType,
    this.name,
    this.siteNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureResourceName': ?azureResourceName,
      'azureResourceType': ?azureResourceType,
      'customHostNameDnsRecordType': ?customHostNameDnsRecordType,
      'hostNameType': ?hostNameType,
      'name': ?name,
      'siteNames': ?siteNames,
    };
  }

  factory HostNameResponse.fromMap(Map<String, dynamic> map) {
    return HostNameResponse(
      azureResourceName: (() { final guardedValue = map['azureResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureResourceType: (() { final guardedValue = map['azureResourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customHostNameDnsRecordType: (() { final guardedValue = map['customHostNameDnsRecordType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostNameType: (() { final guardedValue = map['hostNameType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteNames: (() { final guardedValue = map['siteNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

