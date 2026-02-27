// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../link_link_configuration/link_link_configuration.dart';

/// The set of arguments for Link.
class LinkOamArgs {
  /// Human-readable name to use to identify this source account when you are viewing data from it in the monitoring account.
  final pulumi.Input<String> labelTemplate;

  /// Configuration for creating filters that specify that only some metric namespaces or log groups are to be shared from the source account to the monitoring account. See `link_configuration` Block for details.
  final pulumi.Input<LinkLinkConfiguration>? linkConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Types of data that the source account shares with the monitoring account.
  final pulumi.Input<List<String>> resourceTypes;

  /// Identifier of the sink to use to create this link.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> sinkIdentifier;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  LinkOamArgs({
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
      map['linkConfiguration'] = pulumi.Input.mapOptionalInputValue<
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

  factory LinkOamArgs.fromMap(Map<String, dynamic> map) {
    return LinkOamArgs(
      labelTemplate: pulumi.Input.asInput<String>(map['labelTemplate']),
      linkConfiguration: pulumi.Input.asOptionalInput<LinkLinkConfiguration>(
          map['linkConfiguration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceTypes: pulumi.Input.asInput<List<String>>(map['resourceTypes']),
      sinkIdentifier: pulumi.Input.asInput<String>(map['sinkIdentifier']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
