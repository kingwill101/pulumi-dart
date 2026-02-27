// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'internal_range_overlaps_item_networkconnectivity_v1alpha1.dart';
import 'internal_range_peering_networkconnectivity_v1alpha1.dart';
import 'internal_range_usage_networkconnectivity_v1alpha1.dart';

/// The set of arguments for InternalRange.
class InternalRangeNetworkconnectivityV1alpha1Args {
  /// Time when the internal range was created.
  final pulumi.Input<String>? createTime;

  /// A description of this resource.
  final pulumi.Input<String>? description;

  /// Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/internalRanges/foo') See https://google.aip.dev/122#resource-id-segments Unique per location.
  final pulumi.Input<String>? internalRangeId;

  /// IP range that this internal range defines.
  final pulumi.Input<String>? ipCidrRange;

  /// User-defined labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Immutable. The name of an internal range. Format: projects/{project}/locations/{location}/internalRanges/{internal_range} See: https://google.aip.dev/122#fields-representing-resource-names
  final pulumi.Input<String>? name;

  /// The URL or resource ID of the network in which to reserve the internal range. The network cannot be deleted if there are any reserved internal ranges referring to it. Legacy networks are not supported. This can only be specified for a global internal address. Example: - URL: /compute/v1/projects/{project}/global/networks/{resourceId} - ID: network123
  final pulumi.Input<String>? network;

  /// Optional. Types of resources that are allowed to overlap with the current internal range.
  final pulumi
      .Input<List<InternalRangeOverlapsItemNetworkconnectivityV1alpha1>>?
      overlaps;

  /// The type of peering set for this internal range.
  final pulumi.Input<InternalRangePeeringNetworkconnectivityV1alpha1>? peering;

  /// An alternative to ip_cidr_range. Can be set when trying to create a reservation that automatically finds a free range of the given size. If both ip_cidr_range and prefix_length are set, there is an error if the range sizes do not match. Can also be used during updates to change the range size.
  final pulumi.Input<int>? prefixLength;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if the original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Optional. Can be set to narrow down or pick a different address space while searching for a free range. If not set, defaults to the "10.0.0.0/8" address space. This can be used to search in other rfc-1918 address spaces like "172.16.0.0/12" and "192.168.0.0/16" or non-rfc-1918 address spaces used in the VPC.
  final pulumi.Input<List<String>>? targetCidrRange;

  /// Time when the internal range was updated.
  final pulumi.Input<String>? updateTime;

  /// The type of usage set for this internal range.
  final pulumi.Input<InternalRangeUsageNetworkconnectivityV1alpha1>? usage;

  InternalRangeNetworkconnectivityV1alpha1Args({
    this.createTime,
    this.description,
    this.internalRangeId,
    this.ipCidrRange,
    this.labels,
    this.location,
    this.name,
    this.network,
    this.overlaps,
    this.peering,
    this.prefixLength,
    this.project,
    this.requestId,
    this.targetCidrRange,
    this.updateTime,
    this.usage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final internalRangeIdValue = internalRangeId;
    if (internalRangeIdValue != null) {
      map['internalRangeId'] = internalRangeIdValue;
    }
    final ipCidrRangeValue = ipCidrRange;
    if (ipCidrRangeValue != null) {
      map['ipCidrRange'] = ipCidrRangeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final overlapsValue = overlaps;
    if (overlapsValue != null) {
      map['overlaps'] = pulumi.Input.mapOptionalInputValue<
              List<InternalRangeOverlapsItemNetworkconnectivityV1alpha1>,
              List<String>>(
          overlapsValue,
          (value) => pulumi.Input.encodeList<
              InternalRangeOverlapsItemNetworkconnectivityV1alpha1,
              String>(value, (value) => value.value));
    }
    final peeringValue = peering;
    if (peeringValue != null) {
      map['peering'] = pulumi.Input.mapOptionalInputValue<
          InternalRangePeeringNetworkconnectivityV1alpha1,
          String>(peeringValue, (value) => value.value);
    }
    final prefixLengthValue = prefixLength;
    if (prefixLengthValue != null) {
      map['prefixLength'] = prefixLengthValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final targetCidrRangeValue = targetCidrRange;
    if (targetCidrRangeValue != null) {
      map['targetCidrRange'] = targetCidrRangeValue;
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    final usageValue = usage;
    if (usageValue != null) {
      map['usage'] = pulumi.Input.mapOptionalInputValue<
          InternalRangeUsageNetworkconnectivityV1alpha1,
          String>(usageValue, (value) => value.value);
    }
    return map;
  }

  factory InternalRangeNetworkconnectivityV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return InternalRangeNetworkconnectivityV1alpha1Args(
      createTime: pulumi.Input.asOptionalInput<String>(map['createTime']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      internalRangeId:
          pulumi.Input.asOptionalInput<String>(map['internalRangeId']),
      ipCidrRange: pulumi.Input.asOptionalInput<String>(map['ipCidrRange']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      overlaps: pulumi.Input.asOptionalInput<
              List<InternalRangeOverlapsItemNetworkconnectivityV1alpha1>>(
          map['overlaps']),
      peering: pulumi.Input.asOptionalInput<
          InternalRangePeeringNetworkconnectivityV1alpha1>(map['peering']),
      prefixLength: pulumi.Input.asOptionalInput<int>(map['prefixLength']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      targetCidrRange:
          pulumi.Input.asOptionalInput<List<String>>(map['targetCidrRange']),
      updateTime: pulumi.Input.asOptionalInput<String>(map['updateTime']),
      usage: pulumi.Input.asOptionalInput<
          InternalRangeUsageNetworkconnectivityV1alpha1>(map['usage']),
    );
  }
}
