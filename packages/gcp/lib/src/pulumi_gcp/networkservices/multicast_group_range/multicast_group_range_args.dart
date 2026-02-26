// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../multicast_group_range_log_config/multicast_group_range_log_config.dart';

/// The set of arguments for MulticastGroupRange.
class MulticastGroupRangeArgs {
  /// A list of consumer projects that are allowed to subscribe to the multicast
  /// IP addresses within the range defined by this MulticastGroupRange. The
  /// project can be specified using its project ID or project number. If left
  /// empty, then all consumer projects are allowed (unless<span pulumi-lang-nodejs="
  /// requireExplicitAccept " pulumi-lang-dotnet="
  /// RequireExplicitAccept " pulumi-lang-go="
  /// requireExplicitAccept " pulumi-lang-python="
  /// require_explicit_accept " pulumi-lang-yaml="
  /// requireExplicitAccept " pulumi-lang-java="
  /// requireExplicitAccept ">
  /// require_explicit_accept </span>is set to true) once they have VPC networks
  /// associated to the multicast domain. The current max length of the accept
  /// list is 100.
  final Input<List<String>>? consumerAcceptLists;

  /// An optional text description of the multicast group range.
  final Input<String>? description;

  /// Multicast group range's distribution scope. Intra-zone or intra-region
  /// cross-zone is supported, with default value being intra-region. Cross
  /// region distribution is not supported.
  /// Possible values:
  /// INTRA_ZONE
  /// INTRA_REGION
  final Input<String>? distributionScope;

  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The logging configuration.
  /// Structure is documented below.
  final Input<MulticastGroupRangeLogConfig>? logConfig;

  /// The resource name of the multicast domain in which to create this
  /// multicast group range.
  /// Use the following format:
  /// `projects/*/locations/global/multicastDomains/*`.
  final Input<String> multicastDomain;

  /// A unique name for the multicast group range.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final Input<String> multicastGroupRangeId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Whether an empty<span pulumi-lang-nodejs=" consumerAcceptList " pulumi-lang-dotnet=" ConsumerAcceptList " pulumi-lang-go=" consumerAcceptList " pulumi-lang-python=" consumer_accept_list " pulumi-lang-yaml=" consumerAcceptList " pulumi-lang-java=" consumerAcceptList "> consumer_accept_list </span>will deny all consumer projects.
  final Input<bool>? requireExplicitAccept;

  /// The resource name of the internal range reserved for this
  /// multicast group range.
  /// The internal range must be a Class D address (224.0.0.0 to 239.255.255.255)
  /// and have a prefix length >= 23.
  /// Use the following format:
  /// `projects/*/locations/global/internalRanges/*`.
  final Input<String> reservedInternalRange;

  MulticastGroupRangeArgs({
    this.consumerAcceptLists,
    this.description,
    this.distributionScope,
    this.labels,
    required this.location,
    this.logConfig,
    required this.multicastDomain,
    required this.multicastGroupRangeId,
    this.project,
    this.requireExplicitAccept,
    required this.reservedInternalRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consumerAcceptListsValue = consumerAcceptLists;
    if (consumerAcceptListsValue != null) {
      map['consumerAcceptLists'] = consumerAcceptListsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final distributionScopeValue = distributionScope;
    if (distributionScopeValue != null) {
      map['distributionScope'] = distributionScopeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = Input.mapOptionalInputValue<
          MulticastGroupRangeLogConfig,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
    }
    map['multicastDomain'] = multicastDomain;
    map['multicastGroupRangeId'] = multicastGroupRangeId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requireExplicitAcceptValue = requireExplicitAccept;
    if (requireExplicitAcceptValue != null) {
      map['requireExplicitAccept'] = requireExplicitAcceptValue;
    }
    map['reservedInternalRange'] = reservedInternalRange;
    return map;
  }

  factory MulticastGroupRangeArgs.fromMap(Map<String, dynamic> map) {
    return MulticastGroupRangeArgs(
      consumerAcceptLists:
          Input.asOptionalInput<List<String>>(map['consumerAcceptLists']),
      description: Input.asOptionalInput<String>(map['description']),
      distributionScope:
          Input.asOptionalInput<String>(map['distributionScope']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      logConfig:
          Input.asOptionalInput<MulticastGroupRangeLogConfig>(map['logConfig']),
      multicastDomain: Input.asInput<String>(map['multicastDomain']),
      multicastGroupRangeId:
          Input.asInput<String>(map['multicastGroupRangeId']),
      project: Input.asOptionalInput<String>(map['project']),
      requireExplicitAccept:
          Input.asOptionalInput<bool>(map['requireExplicitAccept']),
      reservedInternalRange:
          Input.asInput<String>(map['reservedInternalRange']),
    );
  }
}
