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
    required this.accessRole,
    required this.baseDirectory,
    this.description,
    required this.localProfileId,
    required this.partnerProfileId,
    this.region,
    required this.serverId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRole': accessRole,
      'baseDirectory': baseDirectory,
      'description': ?description,
      'localProfileId': localProfileId,
      'partnerProfileId': partnerProfileId,
      'region': ?region,
      'serverId': serverId,
      'tags': ?tags,
    };
  }

  factory AgreementArgs.fromMap(Map<String, dynamic> map) {
    return AgreementArgs(
      accessRole: (map['accessRole'] as String).input(),
      baseDirectory: (map['baseDirectory'] as String).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      localProfileId: (map['localProfileId'] as String).input(),
      partnerProfileId: (map['partnerProfileId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      serverId: (map['serverId'] as String).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

