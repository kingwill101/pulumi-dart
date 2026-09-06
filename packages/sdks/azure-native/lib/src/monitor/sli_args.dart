// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'sli_resource.dart';

/// {@template pulumi_monitor_sli_args_doc}
/// The set of arguments for Sli.
/// {@endtemplate}
/// {@macro pulumi_monitor_sli_args_doc}
class SliArgs {
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// The resource-specific properties for this resource.
  final pulumi.Input<SliResource?>? properties;
  /// The name of the service group.
  final pulumi.Input<String> serviceGroupName;
  /// Name of the SLI that is given by the user.
  final pulumi.Input<String?>? sliName;

  /// Creates a new [SliArgs].
  /// [identity] The managed service identities assigned to this resource.
  /// [properties] The resource-specific properties for this resource.
  /// [serviceGroupName] The name of the service group.
  /// [sliName] Name of the SLI that is given by the user.
  const SliArgs({
    this.identity,
    this.properties,
    required this.serviceGroupName,
    this.sliName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<SliResource, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'serviceGroupName': serviceGroupName,
      'sliName': ?sliName,
    };
  }

  factory SliArgs.fromMap(Map<String, dynamic> map) {
    return SliArgs(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SliResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceGroupName: pulumi.Input.fromValue(map['serviceGroupName'] as String),
      sliName: (() { final guardedValue = map['sliName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
