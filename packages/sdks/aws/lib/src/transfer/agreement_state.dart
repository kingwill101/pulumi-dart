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
    this.accessRole,
    this.agreementId,
    this.arn,
    this.baseDirectory,
    this.description,
    this.localProfileId,
    this.partnerProfileId,
    this.region,
    this.serverId,
    this.status,
    this.tags,
    this.tagsAll,
  });

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
      accessRole: map['accessRole'] == null ? null : ((map['accessRole'] as String).input()).input(),
      agreementId: map['agreementId'] == null ? null : ((map['agreementId'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      baseDirectory: map['baseDirectory'] == null ? null : ((map['baseDirectory'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      localProfileId: map['localProfileId'] == null ? null : ((map['localProfileId'] as String).input()).input(),
      partnerProfileId: map['partnerProfileId'] == null ? null : ((map['partnerProfileId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      serverId: map['serverId'] == null ? null : ((map['serverId'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

