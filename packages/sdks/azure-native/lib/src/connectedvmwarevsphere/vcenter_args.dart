// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'vicredential.dart';

/// {@template pulumi_connectedvmwarevsphere_vcenter_args_doc}
/// The set of arguments for VCenter.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_vcenter_args_doc}
class VCenterArgs {
  /// Username / Password Credentials to connect to vcenter.
  final pulumi.Input<VICredential>? credentials;
  /// Gets or sets the extended location.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Gets or sets the FQDN/IPAddress of the vCenter.
  final pulumi.Input<String> fqdn;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final pulumi.Input<String>? kind;
  /// Gets or sets the location.
  final pulumi.Input<String>? location;
  /// Gets or sets the port of the vCenter.
  final pulumi.Input<int>? port;
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the vCenter.
  final pulumi.Input<String>? vcenterName;

  /// Creates a new [VCenterArgs].
  /// [credentials] Username / Password Credentials to connect to vcenter.
  /// [extendedLocation] Gets or sets the extended location.
  /// [fqdn] Gets or sets the FQDN/IPAddress of the vCenter.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] Gets or sets the location.
  /// [port] Gets or sets the port of the vCenter.
  /// [resourceGroupName] The Resource Group Name.
  /// [tags] Gets or sets the Resource tags.
  /// [vcenterName] Name of the vCenter.
  VCenterArgs({
    this.credentials,
    this.extendedLocation,
    required this.fqdn,
    this.kind,
    this.location,
    this.port,
    required this.resourceGroupName,
    this.tags,
    this.vcenterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': ?pulumi.Input.mapOptionalInputValue<VICredential, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'fqdn': fqdn,
      'kind': ?kind,
      'location': ?location,
      'port': ?port,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vcenterName': ?vcenterName,
    };
  }

  factory VCenterArgs.fromMap(Map<String, dynamic> map) {
    return VCenterArgs(
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VICredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vcenterName: (() { final guardedValue = map['vcenterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

