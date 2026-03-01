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
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [verifiedaccessInstanceId] The id of the verified access instance this group is associated with.
  GroupArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? policyDocument,
    pulumi.Output<String>? region,
    pulumi.Output<GroupSseConfiguration>? sseConfiguration,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> verifiedaccessInstanceId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      policyDocument = pulumi.Input.asOptionalInput<String>(policyDocument),
      region = pulumi.Input.asOptionalInput<String>(region),
      sseConfiguration = pulumi.Input.asOptionalInput<GroupSseConfiguration>(sseConfiguration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      verifiedaccessInstanceId = pulumi.Input.asInput<String>(verifiedaccessInstanceId);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      policyDocument: map['policyDocument'] == null ? null : pulumi.Output.create<String>(map['policyDocument'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sseConfiguration: map['sseConfiguration'] == null ? null : pulumi.Output.create<GroupSseConfiguration>(GroupSseConfiguration.fromMap((map['sseConfiguration'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      verifiedaccessInstanceId: pulumi.Output.create<String>(map['verifiedaccessInstanceId'] as String),
    );
  }
}

