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
    required pulumi.Output<String> accessRole,
    required pulumi.Output<String> baseDirectory,
    pulumi.Output<String>? description,
    required pulumi.Output<String> localProfileId,
    required pulumi.Output<String> partnerProfileId,
    pulumi.Output<String>? region,
    required pulumi.Output<String> serverId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accessRole = pulumi.Input.asInput<String>(accessRole),
      baseDirectory = pulumi.Input.asInput<String>(baseDirectory),
      description = pulumi.Input.asOptionalInput<String>(description),
      localProfileId = pulumi.Input.asInput<String>(localProfileId),
      partnerProfileId = pulumi.Input.asInput<String>(partnerProfileId),
      region = pulumi.Input.asOptionalInput<String>(region),
      serverId = pulumi.Input.asInput<String>(serverId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      accessRole: pulumi.Output.create<String>(map['accessRole'] as String),
      baseDirectory: pulumi.Output.create<String>(map['baseDirectory'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      localProfileId: pulumi.Output.create<String>(map['localProfileId'] as String),
      partnerProfileId: pulumi.Output.create<String>(map['partnerProfileId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serverId: pulumi.Output.create<String>(map['serverId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

