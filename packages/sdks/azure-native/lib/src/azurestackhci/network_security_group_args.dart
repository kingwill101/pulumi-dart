// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_azurestackhci_network_security_group_args_doc}
/// The set of arguments for NetworkSecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_network_security_group_args_doc}
class NetworkSecurityGroupArgs {
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of the network security group
  final pulumi.Input<String>? networkSecurityGroupName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkSecurityGroupArgs].
  /// [extendedLocation] The extendedLocation of the resource.
  /// [location] The geo-location where the resource lives
  /// [networkSecurityGroupName] Name of the network security group
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  NetworkSecurityGroupArgs({
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<String>? location,
    pulumi.Output<String>? networkSecurityGroupName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkSecurityGroupName = pulumi.Input.asOptionalInput<String>(networkSecurityGroupName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'networkSecurityGroupName': ?networkSecurityGroupName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityGroupArgs(
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkSecurityGroupName: map['networkSecurityGroupName'] == null ? null : pulumi.Output.create<String>(map['networkSecurityGroupName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

