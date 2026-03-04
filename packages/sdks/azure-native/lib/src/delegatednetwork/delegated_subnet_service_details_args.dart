// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'controller_details_delegatednetwork.dart';
import 'subnet_details.dart';

/// {@template pulumi_delegatednetwork_delegated_subnet_service_details_args_doc}
/// The set of arguments for DelegatedSubnetServiceDetails.
/// {@endtemplate}
/// {@macro pulumi_delegatednetwork_delegated_subnet_service_details_args_doc}
class DelegatedSubnetServiceDetailsArgs {
  /// Defines prefix size of CIDR blocks allocated to nodes in VnetBlock Mode.
  /// Delegated subnet's prefix size should be smaller than this by a minimum of 3.
  final pulumi.Input<int>? allocationBlockPrefixSize;

  /// Properties of the controller.
  final pulumi.Input<ControllerDetailsDelegatednetwork>? controllerDetails;

  /// Location of the resource.
  final pulumi.Input<String>? location;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the resource. It must be a minimum of 3 characters, and a maximum of 63.
  final pulumi.Input<String>? resourceName;

  /// subnet details
  final pulumi.Input<SubnetDetails>? subnetDetails;

  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DelegatedSubnetServiceDetailsArgs].
  /// [allocationBlockPrefixSize] Defines prefix size of CIDR blocks allocated to nodes in VnetBlock Mode.
  /// [controllerDetails] Properties of the controller.
  /// [location] Location of the resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource. It must be a minimum of 3 characters, and a maximum of 63.
  /// [subnetDetails] subnet details
  /// [tags] The resource tags.
  DelegatedSubnetServiceDetailsArgs({
    this.allocationBlockPrefixSize,
    this.controllerDetails,
    this.location,
    required this.resourceGroupName,
    this.resourceName,
    this.subnetDetails,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationBlockPrefixSize': ?allocationBlockPrefixSize,
      'controllerDetails': ?controllerDetails,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'subnetDetails':
          ?pulumi.Input.mapOptionalInputValue<
            SubnetDetails,
            Map<String, dynamic>
          >(subnetDetails, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory DelegatedSubnetServiceDetailsArgs.fromMap(Map<String, dynamic> map) {
    return DelegatedSubnetServiceDetailsArgs(
      allocationBlockPrefixSize: (() {
        final guardedValue = map['allocationBlockPrefixSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      controllerDetails: (() {
        final guardedValue = map['controllerDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          guardedValue as ControllerDetailsDelegatednetwork,
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: (() {
        final guardedValue = map['resourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetDetails: (() {
        final guardedValue = map['subnetDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubnetDetails.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
