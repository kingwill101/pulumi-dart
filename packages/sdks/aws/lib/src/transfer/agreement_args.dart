// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_transfer_agreement_agreement_args_doc}
/// The set of arguments for Agreement.
/// {@endtemplate}
/// {@macro pulumi_transfer_agreement_agreement_args_doc}
class AgreementArgs {
  /// IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  final pulumi.Input<String> accessRole;
  /// Landing directory for the files transferred by using the AS2 protocol.
  final pulumi.Input<String> baseDirectory;
  /// Optional description of the transdfer.
  final pulumi.Input<String?>? description;
  /// Unique identifier for the AS2 local profile.
  final pulumi.Input<String> localProfileId;
  /// Unique identifier for the AS2 partner profile.
  final pulumi.Input<String> partnerProfileId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Unique server identifier for the server instance. This is the specific server the agreement uses.
  final pulumi.Input<String> serverId;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AgreementArgs].
  /// [accessRole] IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  /// [baseDirectory] Landing directory for the files transferred by using the AS2 protocol.
  /// [description] Optional description of the transdfer.
  /// [localProfileId] Unique identifier for the AS2 local profile.
  /// [partnerProfileId] Unique identifier for the AS2 partner profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverId] Unique server identifier for the server instance. This is the specific server the agreement uses.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const AgreementArgs({
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
      accessRole: pulumi.Input.fromValue(map['accessRole'] as String),
      baseDirectory: pulumi.Input.fromValue(map['baseDirectory'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localProfileId: pulumi.Input.fromValue(map['localProfileId'] as String),
      partnerProfileId: pulumi.Input.fromValue(map['partnerProfileId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
