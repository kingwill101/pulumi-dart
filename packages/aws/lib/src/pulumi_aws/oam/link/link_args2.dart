// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../link_link_configuration/link_link_configuration.dart';

/// The set of arguments for Link.
class LinkArgs2 {
  /// Human-readable name to use to identify this source account when you are viewing data from it in the monitoring account.
  final Input<String> labelTemplate;

  /// Configuration for creating filters that specify that only some metric namespaces or log groups are to be shared from the source account to the monitoring account. See `link_configuration` Block for details.
  final Input<LinkLinkConfiguration>? linkConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Types of data that the source account shares with the monitoring account.
  final Input<List<String>> resourceTypes;

  /// Identifier of the sink to use to create this link.
  ///
  /// The following arguments are optional:
  final Input<String> sinkIdentifier;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  LinkArgs2({
    required this.labelTemplate,
    this.linkConfiguration,
    this.region,
    required this.resourceTypes,
    required this.sinkIdentifier,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labelTemplate'] = labelTemplate;
    final linkConfigurationValue = linkConfiguration;
    if (linkConfigurationValue != null) {
      map['linkConfiguration'] = Input.mapOptionalInputValue<
              LinkLinkConfiguration, Map<String, dynamic>>(
          linkConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceTypes'] = resourceTypes;
    map['sinkIdentifier'] = sinkIdentifier;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LinkArgs2.fromMap(Map<String, dynamic> map) {
    return LinkArgs2(
      labelTemplate: Input.asInput<String>(map['labelTemplate']),
      linkConfiguration: Input.asOptionalInput<LinkLinkConfiguration>(
          map['linkConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceTypes: Input.asInput<List<String>>(map['resourceTypes']),
      sinkIdentifier: Input.asInput<String>(map['sinkIdentifier']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
