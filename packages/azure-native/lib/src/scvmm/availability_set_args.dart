// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_scvmm_availability_set_args_doc}
/// The set of arguments for AvailabilitySet.
/// {@endtemplate}
/// {@macro pulumi_scvmm_availability_set_args_doc}
class AvailabilitySetArgs {
  /// Name of the availability set.
  final pulumi.Input<String>? availabilitySetName;
  /// The extended location.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Gets or sets the location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// ARM Id of the vmmServer resource in which this resource resides.
  final pulumi.Input<String>? vmmServerId;

  /// Creates a new [AvailabilitySetArgs].
  /// [availabilitySetName] Name of the availability set.
  /// [extendedLocation] The extended location.
  /// [location] Gets or sets the location.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags
  /// [vmmServerId] ARM Id of the vmmServer resource in which this resource resides.
  AvailabilitySetArgs({
    String? availabilitySetName,
    ExtendedLocation? extendedLocation,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
    String? vmmServerId,
  }) :
      availabilitySetName = pulumi.Input.asOptionalInput<String>(availabilitySetName),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vmmServerId = pulumi.Input.asOptionalInput<String>(vmmServerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': ?availabilitySetName,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vmmServerId': ?vmmServerId,
    };
  }

  factory AvailabilitySetArgs.fromMap(Map<String, dynamic> map) {
    return AvailabilitySetArgs(
      availabilitySetName: map['availabilitySetName'] == null ? null : map['availabilitySetName'] as String,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vmmServerId: map['vmmServerId'] == null ? null : map['vmmServerId'] as String,
    );
  }
}

