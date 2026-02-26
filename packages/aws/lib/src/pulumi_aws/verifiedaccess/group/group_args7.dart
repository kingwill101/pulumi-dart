// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../group_sse_configuration/group_sse_configuration.dart';

/// The set of arguments for Group.
class GroupArgs7 {
  /// Description of the verified access group.
  final Input<String>? description;

  /// The policy document that is associated with this resource.
  final Input<String>? policyDocument;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block to use KMS keys for server-side encryption.
  final Input<GroupSseConfiguration>? sseConfiguration;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The id of the verified access instance this group is associated with.
  ///
  /// The following arguments are optional:
  final Input<String> verifiedaccessInstanceId;

  GroupArgs7({
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
      map['sseConfiguration'] = Input.mapOptionalInputValue<
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

  factory GroupArgs7.fromMap(Map<String, dynamic> map) {
    return GroupArgs7(
      description: Input.asOptionalInput<String>(map['description']),
      policyDocument: Input.asOptionalInput<String>(map['policyDocument']),
      region: Input.asOptionalInput<String>(map['region']),
      sseConfiguration:
          Input.asOptionalInput<GroupSseConfiguration>(map['sseConfiguration']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      verifiedaccessInstanceId:
          Input.asInput<String>(map['verifiedaccessInstanceId']),
    );
  }
}
