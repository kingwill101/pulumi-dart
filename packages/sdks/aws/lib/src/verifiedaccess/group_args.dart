// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_sse_configuration.dart';

/// {@template pulumi_verifiedaccess_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_verifiedaccess_group_group_args_doc}
class GroupArgs {
  /// Description of the verified access group.
  final pulumi.Input<String>? description;
  /// The policy document that is associated with this resource.
  final pulumi.Input<String>? policyDocument;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block to use KMS keys for server-side encryption.
  final pulumi.Input<GroupSseConfiguration>? sseConfiguration;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The id of the verified access instance this group is associated with.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> verifiedaccessInstanceId;

  /// Creates a new [GroupArgs].
  /// [description] Description of the verified access group.
  /// [policyDocument] The policy document that is associated with this resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sseConfiguration] Configuration block to use KMS keys for server-side encryption.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [verifiedaccessInstanceId] The id of the verified access instance this group is associated with.
  const GroupArgs({
    this.description,
    this.policyDocument,
    this.region,
    this.sseConfiguration,
    this.tags,
    required this.verifiedaccessInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'policyDocument': ?policyDocument,
      'region': ?region,
      'sseConfiguration': ?pulumi.Input.mapOptionalInputValue<GroupSseConfiguration, Map<String, dynamic>>(sseConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'verifiedaccessInstanceId': verifiedaccessInstanceId,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyDocument: (() { final guardedValue = map['policyDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sseConfiguration: (() { final guardedValue = map['sseConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupSseConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      verifiedaccessInstanceId: pulumi.Input.fromValue(map['verifiedaccessInstanceId'] as String),
    );
  }
}
