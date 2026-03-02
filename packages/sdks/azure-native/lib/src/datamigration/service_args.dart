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
  ServiceArgs({
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
      autoStopDelay: map['autoStopDelay'] == null ? null : (map['autoStopDelay'] as String).input(),
      deleteResourcesOnStop: map['deleteResourcesOnStop'] == null ? null : (map['deleteResourcesOnStop'] as bool).input(),
      groupName: (map['groupName'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      publicKey: map['publicKey'] == null ? null : (map['publicKey'] as String).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName'] as String).input(),
      sku: map['sku'] == null ? null : (ServiceSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      virtualNicId: map['virtualNicId'] == null ? null : (map['virtualNicId'] as String).input(),
      virtualSubnetId: map['virtualSubnetId'] == null ? null : (map['virtualSubnetId'] as String).input(),
    );
  }
}

