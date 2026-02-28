// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_transfer_agreement_agreement_args_doc}
/// The set of arguments for Agreement.
/// {@endtemplate}
/// {@macro pulumi_transfer_agreement_agreement_args_doc}
class AgreementArgs {
  /// The IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  final pulumi.Input<String> accessRole;

  /// The landing directory for the files transferred by using the AS2 protocol.
  final pulumi.Input<String> baseDirectory;

  /// The Optional description of the transdfer.
  final pulumi.Input<String>? description;

  /// The unique identifier for the AS2 local profile.
  final pulumi.Input<String> localProfileId;

  /// The unique identifier for the AS2 partner profile.
  final pulumi.Input<String> partnerProfileId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The unique server identifier for the server instance. This is the specific server the agreement uses.
  final pulumi.Input<String> serverId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AgreementArgs].
  /// [accessRole] The IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  /// [baseDirectory] The landing directory for the files transferred by using the AS2 protocol.
  /// [description] The Optional description of the transdfer.
  /// [localProfileId] The unique identifier for the AS2 local profile.
  /// [partnerProfileId] The unique identifier for the AS2 partner profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverId] The unique server identifier for the server instance. This is the specific server the agreement uses.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AgreementArgs({
    required String accessRole,
    required String baseDirectory,
    String? description,
    required String localProfileId,
    required String partnerProfileId,
    String? region,
    required String serverId,
    Map<String, String>? tags,
  })  : accessRole = pulumi.Input.asInput<String>(accessRole),
        baseDirectory = pulumi.Input.asInput<String>(baseDirectory),
        description = pulumi.Input.asOptionalInput<String>(description),
        localProfileId = pulumi.Input.asInput<String>(localProfileId),
        partnerProfileId = pulumi.Input.asInput<String>(partnerProfileId),
        region = pulumi.Input.asOptionalInput<String>(region),
        serverId = pulumi.Input.asInput<String>(serverId),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessRole'] = accessRole;
    map['baseDirectory'] = baseDirectory;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['localProfileId'] = localProfileId;
    map['partnerProfileId'] = partnerProfileId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serverId'] = serverId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AgreementArgs.fromMap(Map<String, dynamic> map) {
    return AgreementArgs(
      accessRole: map['accessRole'] as String,
      baseDirectory: map['baseDirectory'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      localProfileId: map['localProfileId'] as String,
      partnerProfileId: map['partnerProfileId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serverId: map['serverId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
