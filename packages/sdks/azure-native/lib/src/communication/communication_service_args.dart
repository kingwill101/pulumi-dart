// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';

/// {@template pulumi_communication_communication_service_args_doc}
/// The set of arguments for CommunicationService.
/// {@endtemplate}
/// {@macro pulumi_communication_communication_service_args_doc}
class CommunicationServiceArgs {
  /// The name of the CommunicationService resource.
  final pulumi.Input<String?>? communicationServiceName;
  /// The location where the communication service stores its data at rest.
  final pulumi.Input<String> dataLocation;
  /// Disable local authentication for the CommunicationService.
  final pulumi.Input<bool?>? disableLocalAuth;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// List of email Domain resource Ids.
  final pulumi.Input<List<String>?>? linkedDomains;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Allow, disallow, or let network security perimeter configuration control public network access to the protected resource. Value is optional but if passed in, it must be 'Enabled', 'Disabled' or 'SecuredByPerimeter'.
  final pulumi.Input<dynamic>? publicNetworkAccess;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [CommunicationServiceArgs].
  /// [communicationServiceName] The name of the CommunicationService resource.
  /// [dataLocation] The location where the communication service stores its data at rest.
  /// [disableLocalAuth] Disable local authentication for the CommunicationService.
  /// [identity] The managed service identities assigned to this resource.
  /// [linkedDomains] List of email Domain resource Ids.
  /// [location] The geo-location where the resource lives
  /// [publicNetworkAccess] Allow, disallow, or let network security perimeter configuration control public network access to the protected resource. Value is optional but if passed in, it must be 'Enabled', 'Disabled' or 'SecuredByPerimeter'.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const CommunicationServiceArgs({
    this.communicationServiceName,
    required this.dataLocation,
    this.disableLocalAuth,
    this.identity,
    this.linkedDomains,
    this.location,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communicationServiceName': ?communicationServiceName,
      'dataLocation': dataLocation,
      'disableLocalAuth': ?disableLocalAuth,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'linkedDomains': ?linkedDomains,
      'location': ?location,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory CommunicationServiceArgs.fromMap(Map<String, dynamic> map) {
    return CommunicationServiceArgs(
      communicationServiceName: (() { final guardedValue = map['communicationServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataLocation: pulumi.Input.fromValue(map['dataLocation'] as String),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedDomains: (() { final guardedValue = map['linkedDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
