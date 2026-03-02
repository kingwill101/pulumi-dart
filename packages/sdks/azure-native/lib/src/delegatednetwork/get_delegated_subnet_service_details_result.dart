// ignore_for_file: unused_element, unnecessary_cast

import 'controller_details_response.dart';
import 'subnet_details_response.dart';

/// Result data returned by getDelegatedSubnetServiceDetails.
class GetDelegatedSubnetServiceDetailsResult {
  /// Defines prefix size of CIDR blocks allocated to nodes in VnetBlock Mode.
  /// Delegated subnet's prefix size should be smaller than this by a minimum of 3.
  final int? allocationBlockPrefixSize;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Properties of the controller.
  final ControllerDetailsResponse? controllerDetails;
  /// An identifier that represents the resource.
  final String id;
  /// Location of the resource.
  final String? location;
  /// The name of the resource.
  final String name;
  /// The current state of dnc delegated subnet resource.
  final String provisioningState;
  /// Resource guid.
  final String resourceGuid;
  /// subnet details
  final SubnetDetailsResponse? subnetDetails;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The type of resource.
  final String type;

  /// Creates a new [GetDelegatedSubnetServiceDetailsResult].
  /// [allocationBlockPrefixSize] Defines prefix size of CIDR blocks allocated to nodes in VnetBlock Mode.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [controllerDetails] Properties of the controller.
  /// [id] An identifier that represents the resource.
  /// [location] Location of the resource.
  /// [name] The name of the resource.
  /// [provisioningState] The current state of dnc delegated subnet resource.
  /// [resourceGuid] Resource guid.
  /// [subnetDetails] subnet details
  /// [tags] The resource tags.
  /// [type] The type of resource.
  GetDelegatedSubnetServiceDetailsResult({
    this.allocationBlockPrefixSize,
    required this.azureApiVersion,
    this.controllerDetails,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.resourceGuid,
    this.subnetDetails,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationBlockPrefixSize': ?allocationBlockPrefixSize,
      'azureApiVersion': azureApiVersion,
      'controllerDetails': ?controllerDetails == null ? null : controllerDetails!.toMap(),
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'subnetDetails': ?subnetDetails == null ? null : subnetDetails!.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDelegatedSubnetServiceDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetDelegatedSubnetServiceDetailsResult(
      allocationBlockPrefixSize: map['allocationBlockPrefixSize'] == null ? null : map['allocationBlockPrefixSize']! as int,
      azureApiVersion: map['azureApiVersion'] as String,
      controllerDetails: map['controllerDetails'] == null ? null : ControllerDetailsResponse.fromMap((map['controllerDetails']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      subnetDetails: map['subnetDetails'] == null ? null : SubnetDetailsResponse.fromMap((map['subnetDetails']! as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

