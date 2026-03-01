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
    int? allocationBlockPrefixSize,
    ControllerDetailsDelegatednetwork? controllerDetails,
    String? location,
    required String resourceGroupName,
    String? resourceName,
    SubnetDetails? subnetDetails,
    Map<String, String>? tags,
  }) :
      allocationBlockPrefixSize = pulumi.Input.asOptionalInput<int>(allocationBlockPrefixSize),
      controllerDetails = pulumi.Input.asOptionalInput<ControllerDetailsDelegatednetwork>(controllerDetails),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      subnetDetails = pulumi.Input.asOptionalInput<SubnetDetails>(subnetDetails),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationBlockPrefixSize': ?allocationBlockPrefixSize,
      'controllerDetails': ?controllerDetails,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'subnetDetails': ?pulumi.Input.mapOptionalInputValue<SubnetDetails, Map<String, dynamic>>(subnetDetails, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory DelegatedSubnetServiceDetailsArgs.fromMap(Map<String, dynamic> map) {
    return DelegatedSubnetServiceDetailsArgs(
      allocationBlockPrefixSize: map['allocationBlockPrefixSize'] == null ? null : map['allocationBlockPrefixSize'] as int,
      controllerDetails: map['controllerDetails'] == null ? null : map['controllerDetails'] as ControllerDetailsDelegatednetwork,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
      subnetDetails: map['subnetDetails'] == null ? null : SubnetDetails.fromMap((map['subnetDetails'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

