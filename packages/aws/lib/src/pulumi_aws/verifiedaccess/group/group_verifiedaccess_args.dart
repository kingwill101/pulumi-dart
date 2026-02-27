// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../group_sse_configuration/group_sse_configuration.dart';

/// The set of arguments for Group.
class GroupVerifiedaccessArgs {
  /// Description of the verified access group.
  final pulumi.Input<String>? description;

  /// The policy document that is associated with this resource.
  final pulumi.Input<String>? policyDocument;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block to use KMS keys for server-side encryption.
  final pulumi.Input<GroupSseConfiguration>? sseConfiguration;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The id of the verified access instance this group is associated with.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> verifiedaccessInstanceId;

  GroupVerifiedaccessArgs({
    this.description,
    this.policyDocument,
    this.region,
    this.sseConfiguration,
    this.tags,
    required this.verifiedaccessInstanceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final policyDocumentValue = policyDocument;
    if (policyDocumentValue != null) {
      map['policyDocument'] = policyDocumentValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sseConfigurationValue = sseConfiguration;
    if (sseConfigurationValue != null) {
      map['sseConfiguration'] = pulumi.Input.mapOptionalInputValue<
              GroupSseConfiguration, Map<String, dynamic>>(
          sseConfigurationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['verifiedaccessInstanceId'] = verifiedaccessInstanceId;
    return map;
  }

  factory GroupVerifiedaccessArgs.fromMap(Map<String, dynamic> map) {
    return GroupVerifiedaccessArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      policyDocument:
          pulumi.Input.asOptionalInput<String>(map['policyDocument']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sseConfiguration: pulumi.Input.asOptionalInput<GroupSseConfiguration>(
          map['sseConfiguration']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      verifiedaccessInstanceId:
          pulumi.Input.asInput<String>(map['verifiedaccessInstanceId']),
    );
  }
}
