// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';

/// {@template pulumi_communication_communication_service_args_doc}
/// The set of arguments for CommunicationService.
/// {@endtemplate}
/// {@macro pulumi_communication_communication_service_args_doc}
class CommunicationServiceArgs {
  /// The name of the CommunicationService resource.
  final pulumi.Input<String>? communicationServiceName;
  /// The location where the communication service stores its data at rest.
  final pulumi.Input<String> dataLocation;
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// List of email Domain resource Ids.
  final pulumi.Input<List<String>>? linkedDomains;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CommunicationServiceArgs].
  /// [communicationServiceName] The name of the CommunicationService resource.
  /// [dataLocation] The location where the communication service stores its data at rest.
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [linkedDomains] List of email Domain resource Ids.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  CommunicationServiceArgs({
    this.communicationServiceName,
    required this.dataLocation,
    this.identity,
    this.linkedDomains,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communicationServiceName': ?communicationServiceName,
      'dataLocation': dataLocation,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'linkedDomains': ?linkedDomains,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory CommunicationServiceArgs.fromMap(Map<String, dynamic> map) {
    return CommunicationServiceArgs(
      communicationServiceName: (() { final guardedValue = map['communicationServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataLocation: pulumi.Input.fromValue(map['dataLocation'] as String),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedDomains: (() { final guardedValue = map['linkedDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

