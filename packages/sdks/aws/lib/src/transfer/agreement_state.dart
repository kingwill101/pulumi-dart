// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Agreement resources.
class AgreementState {
  /// The IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  final pulumi.Input<String>? accessRole;
  /// The unique identifier for the AS2 agreement.
  final pulumi.Input<String>? agreementId;
  /// The ARN of the agreement.
  final pulumi.Input<String>? arn;
  /// The landing directory for the files transferred by using the AS2 protocol.
  final pulumi.Input<String>? baseDirectory;
  /// The Optional description of the transdfer.
  final pulumi.Input<String>? description;
  /// The unique identifier for the AS2 local profile.
  final pulumi.Input<String>? localProfileId;
  /// The unique identifier for the AS2 partner profile.
  final pulumi.Input<String>? partnerProfileId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The unique server identifier for the server instance. This is the specific server the agreement uses.
  final pulumi.Input<String>? serverId;
  final pulumi.Input<String>? status;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AgreementState].
  /// [accessRole] The IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  /// [agreementId] The unique identifier for the AS2 agreement.
  /// [arn] The ARN of the agreement.
  /// [baseDirectory] The landing directory for the files transferred by using the AS2 protocol.
  /// [description] The Optional description of the transdfer.
  /// [localProfileId] The unique identifier for the AS2 local profile.
  /// [partnerProfileId] The unique identifier for the AS2 partner profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverId] The unique server identifier for the server instance. This is the specific server the agreement uses.
  /// [status] Optional.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  AgreementState({
    pulumi.Output<String>? accessRole,
    pulumi.Output<String>? agreementId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? baseDirectory,
    pulumi.Output<String>? description,
    pulumi.Output<String>? localProfileId,
    pulumi.Output<String>? partnerProfileId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serverId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      accessRole = pulumi.Input.asOptionalInput<String>(accessRole),
      agreementId = pulumi.Input.asOptionalInput<String>(agreementId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      baseDirectory = pulumi.Input.asOptionalInput<String>(baseDirectory),
      description = pulumi.Input.asOptionalInput<String>(description),
      localProfileId = pulumi.Input.asOptionalInput<String>(localProfileId),
      partnerProfileId = pulumi.Input.asOptionalInput<String>(partnerProfileId),
      region = pulumi.Input.asOptionalInput<String>(region),
      serverId = pulumi.Input.asOptionalInput<String>(serverId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRole': ?accessRole,
      'agreementId': ?agreementId,
      'arn': ?arn,
      'baseDirectory': ?baseDirectory,
      'description': ?description,
      'localProfileId': ?localProfileId,
      'partnerProfileId': ?partnerProfileId,
      'region': ?region,
      'serverId': ?serverId,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AgreementState.fromMap(Map<String, dynamic> map) {
    return AgreementState(
      accessRole: map['accessRole'] == null ? null : pulumi.Output.create<String>(map['accessRole'] as String),
      agreementId: map['agreementId'] == null ? null : pulumi.Output.create<String>(map['agreementId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      baseDirectory: map['baseDirectory'] == null ? null : pulumi.Output.create<String>(map['baseDirectory'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      localProfileId: map['localProfileId'] == null ? null : pulumi.Output.create<String>(map['localProfileId'] as String),
      partnerProfileId: map['partnerProfileId'] == null ? null : pulumi.Output.create<String>(map['partnerProfileId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<String>(map['serverId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

