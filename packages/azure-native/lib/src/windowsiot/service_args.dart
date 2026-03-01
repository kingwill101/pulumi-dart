// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_windowsiot_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_windowsiot_service_args_doc}
class ServiceArgs {
  /// Windows IoT Device Service OEM AAD domain
  final pulumi.Input<String>? adminDomainName;
  /// Windows IoT Device Service ODM AAD domain
  final pulumi.Input<String>? billingDomainName;
  /// The name of the Windows IoT Device Service.
  final pulumi.Input<String>? deviceName;
  /// The Azure Region where the resource lives
  final pulumi.Input<String>? location;
  /// Windows IoT Device Service notes.
  final pulumi.Input<String>? notes;
  /// Windows IoT Device Service device allocation,
  final pulumi.Input<double>? quantity;
  /// The name of the resource group that contains the Windows IoT Device Service.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceArgs].
  /// [adminDomainName] Windows IoT Device Service OEM AAD domain
  /// [billingDomainName] Windows IoT Device Service ODM AAD domain
  /// [deviceName] The name of the Windows IoT Device Service.
  /// [location] The Azure Region where the resource lives
  /// [notes] Windows IoT Device Service notes.
  /// [quantity] Windows IoT Device Service device allocation,
  /// [resourceGroupName] The name of the resource group that contains the Windows IoT Device Service.
  /// [tags] Resource tags.
  ServiceArgs({
    String? adminDomainName,
    String? billingDomainName,
    String? deviceName,
    String? location,
    String? notes,
    double? quantity,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      adminDomainName = pulumi.Input.asOptionalInput<String>(adminDomainName),
      billingDomainName = pulumi.Input.asOptionalInput<String>(billingDomainName),
      deviceName = pulumi.Input.asOptionalInput<String>(deviceName),
      location = pulumi.Input.asOptionalInput<String>(location),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      quantity = pulumi.Input.asOptionalInput<double>(quantity),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminDomainName': ?adminDomainName,
      'billingDomainName': ?billingDomainName,
      'deviceName': ?deviceName,
      'location': ?location,
      'notes': ?notes,
      'quantity': ?quantity,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      adminDomainName: map['adminDomainName'] == null ? null : map['adminDomainName'] as String,
      billingDomainName: map['billingDomainName'] == null ? null : map['billingDomainName'] as String,
      deviceName: map['deviceName'] == null ? null : map['deviceName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      notes: map['notes'] == null ? null : map['notes'] as String,
      quantity: map['quantity'] == null ? null : map['quantity'] as double,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

