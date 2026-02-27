// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../internal_range_allocation_options/internal_range_allocation_options.dart';
import '../internal_range_migration/internal_range_migration.dart';

/// The set of arguments for InternalRange.
class InternalRangeArgs {
  /// Options for automatically allocating a free range with a size given by prefixLength.
  /// Structure is documented below.
  final Input<InternalRangeAllocationOptions>? allocationOptions;

  /// An optional description of this resource.
  final Input<String>? description;

  /// Optional. List of IP CIDR ranges to be excluded. Resulting reserved Internal Range will not overlap with any CIDR blocks mentioned in this list.
  /// Only IPv4 CIDR ranges are supported.
  final Input<List<String>>? excludeCidrRanges;

  /// Immutable ranges cannot have their fields modified, except for labels and description.
  final Input<bool>? immutable;

  /// The IP range that this internal range defines.
  /// NOTE: IPv6 ranges are limited to usage=EXTERNAL_TO_VPC and peering=FOR_SELF
  /// NOTE: For IPv6 Ranges this field is compulsory, i.e. the address range must be specified explicitly.
  final Input<String>? ipCidrRange;

  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Specification for migration with source and target resource names.
  /// Structure is documented below.
  final Input<InternalRangeMigration>? migration;

  /// The name of the policy based route.
  final Input<String>? name;

  /// Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  final Input<String> network;

  /// Optional. Types of resources that are allowed to overlap with the current internal range.
  /// Each value may be one of: `OVERLAP_ROUTE_RANGE`, `OVERLAP_EXISTING_SUBNET_RANGE`.
  final Input<List<String>>? overlaps;

  /// The type of peering set for this internal range.
  /// Possible values are: `FOR_SELF`, `FOR_PEER`, `NOT_SHARED`.
  final Input<String> peering;

  /// An alternate to ipCidrRange. Can be set when trying to create a reservation that automatically finds a free range of the given size.
  /// If both ipCidrRange and prefixLength are set, there is an error if the range sizes do not match. Can also be used during updates to change the range size.
  /// NOTE: For IPv6 this field only works if ip_cidr_range is set as well, and both fields must match. In other words, with IPv6 this field only works as
  /// a redundant parameter.
  final Input<int>? prefixLength;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Optional. Can be set to narrow down or pick a different address space while searching for a free range.
  /// If not set, defaults to the "10.0.0.0/8" address space. This can be used to search in other rfc-1918 address spaces like "172.16.0.0/12" and "192.168.0.0/16" or non-rfc-1918 address spaces used in the VPC.
  final Input<List<String>>? targetCidrRanges;

  /// The type of usage set for this InternalRange.
  /// Possible values are: `FOR_VPC`, `EXTERNAL_TO_VPC`, `FOR_MIGRATION`.
  final Input<String> usage;

  InternalRangeArgs({
    this.allocationOptions,
    this.description,
    this.excludeCidrRanges,
    this.immutable,
    this.ipCidrRange,
    this.labels,
    this.migration,
    this.name,
    required this.network,
    this.overlaps,
    required this.peering,
    this.prefixLength,
    this.project,
    this.targetCidrRanges,
    required this.usage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allocationOptionsValue = allocationOptions;
    if (allocationOptionsValue != null) {
      map['allocationOptions'] = Input.mapOptionalInputValue<
              InternalRangeAllocationOptions, Map<String, dynamic>>(
          allocationOptionsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final excludeCidrRangesValue = excludeCidrRanges;
    if (excludeCidrRangesValue != null) {
      map['excludeCidrRanges'] = excludeCidrRangesValue;
    }
    final immutableValue = immutable;
    if (immutableValue != null) {
      map['immutable'] = immutableValue;
    }
    final ipCidrRangeValue = ipCidrRange;
    if (ipCidrRangeValue != null) {
      map['ipCidrRange'] = ipCidrRangeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final migrationValue = migration;
    if (migrationValue != null) {
      map['migration'] = Input.mapOptionalInputValue<InternalRangeMigration,
          Map<String, dynamic>>(migrationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['network'] = network;
    final overlapsValue = overlaps;
    if (overlapsValue != null) {
      map['overlaps'] = overlapsValue;
    }
    map['peering'] = peering;
    final prefixLengthValue = prefixLength;
    if (prefixLengthValue != null) {
      map['prefixLength'] = prefixLengthValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final targetCidrRangesValue = targetCidrRanges;
    if (targetCidrRangesValue != null) {
      map['targetCidrRanges'] = targetCidrRangesValue;
    }
    map['usage'] = usage;
    return map;
  }

  factory InternalRangeArgs.fromMap(Map<String, dynamic> map) {
    return InternalRangeArgs(
      allocationOptions: Input.asOptionalInput<InternalRangeAllocationOptions>(
          map['allocationOptions']),
      description: Input.asOptionalInput<String>(map['description']),
      excludeCidrRanges:
          Input.asOptionalInput<List<String>>(map['excludeCidrRanges']),
      immutable: Input.asOptionalInput<bool>(map['immutable']),
      ipCidrRange: Input.asOptionalInput<String>(map['ipCidrRange']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      migration:
          Input.asOptionalInput<InternalRangeMigration>(map['migration']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asInput<String>(map['network']),
      overlaps: Input.asOptionalInput<List<String>>(map['overlaps']),
      peering: Input.asInput<String>(map['peering']),
      prefixLength: Input.asOptionalInput<int>(map['prefixLength']),
      project: Input.asOptionalInput<String>(map['project']),
      targetCidrRanges:
          Input.asOptionalInput<List<String>>(map['targetCidrRanges']),
      usage: Input.asInput<String>(map['usage']),
    );
  }
}
