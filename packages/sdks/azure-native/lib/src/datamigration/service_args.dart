// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_sku.dart';

/// {@template pulumi_datamigration_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_datamigration_service_args_doc}
class ServiceArgs {
  /// The time delay before the service is auto-stopped when idle.
  final pulumi.Input<String>? autoStopDelay;
  /// Whether service resources should be deleted when stopped. (Turned on by default)
  final pulumi.Input<bool>? deleteResourcesOnStop;
  /// Name of the resource group
  final pulumi.Input<String> groupName;
  /// The resource kind. Only 'vm' (the default) is supported.
  final pulumi.Input<String>? kind;
  final pulumi.Input<String>? location;
  /// The public key of the service, used to encrypt secrets sent to the service
  final pulumi.Input<String>? publicKey;
  /// Name of the service
  final pulumi.Input<String>? serviceName;
  /// Service SKU
  final pulumi.Input<ServiceSku>? sku;
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Microsoft.Network/networkInterfaces resource which the service have
  final pulumi.Input<String>? virtualNicId;
  /// The ID of the Microsoft.Network/virtualNetworks/subnets resource to which the service should be joined
  final pulumi.Input<String>? virtualSubnetId;

  /// Creates a new [ServiceArgs].
  /// [autoStopDelay] The time delay before the service is auto-stopped when idle.
  /// [deleteResourcesOnStop] Whether service resources should be deleted when stopped. (Turned on by default)
  /// [groupName] Name of the resource group
  /// [kind] The resource kind. Only 'vm' (the default) is supported.
  /// [location] Optional.
  /// [publicKey] The public key of the service, used to encrypt secrets sent to the service
  /// [serviceName] Name of the service
  /// [sku] Service SKU
  /// [tags] Optional.
  /// [virtualNicId] The ID of the Microsoft.Network/networkInterfaces resource which the service have
  /// [virtualSubnetId] The ID of the Microsoft.Network/virtualNetworks/subnets resource to which the service should be joined
  const ServiceArgs({
    this.autoStopDelay,
    this.deleteResourcesOnStop,
    required this.groupName,
    this.kind,
    this.location,
    this.publicKey,
    this.serviceName,
    this.sku,
    this.tags,
    this.virtualNicId,
    this.virtualSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoStopDelay': ?autoStopDelay,
      'deleteResourcesOnStop': ?deleteResourcesOnStop,
      'groupName': groupName,
      'kind': ?kind,
      'location': ?location,
      'publicKey': ?publicKey,
      'serviceName': ?serviceName,
      'sku': ?pulumi.Input.mapOptionalInputValue<ServiceSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'virtualNicId': ?virtualNicId,
      'virtualSubnetId': ?virtualSubnetId,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      autoStopDelay: (() { final guardedValue = map['autoStopDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteResourcesOnStop: (() { final guardedValue = map['deleteResourcesOnStop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualNicId: (() { final guardedValue = map['virtualNicId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualSubnetId: (() { final guardedValue = map['virtualSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

