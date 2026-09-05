// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Agreement resources.
class AgreementState {
  /// IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  final pulumi.Input<String?>? accessRole;
  /// Unique identifier for the AS2 agreement.
  final pulumi.Input<String?>? agreementId;
  /// ARN of the agreement.
  final pulumi.Input<String?>? arn;
  /// Landing directory for the files transferred by using the AS2 protocol.
  final pulumi.Input<String?>? baseDirectory;
  /// Optional description of the transdfer.
  final pulumi.Input<String?>? description;
  /// Unique identifier for the AS2 local profile.
  final pulumi.Input<String?>? localProfileId;
  /// Unique identifier for the AS2 partner profile.
  final pulumi.Input<String?>? partnerProfileId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Unique server identifier for the server instance. This is the specific server the agreement uses.
  final pulumi.Input<String?>? serverId;
  /// Status of the agreement which is either ACTIVE or INACTIVE.
  final pulumi.Input<String?>? status;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [AgreementState].
  /// [accessRole] IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  /// [agreementId] Unique identifier for the AS2 agreement.
  /// [arn] ARN of the agreement.
  /// [baseDirectory] Landing directory for the files transferred by using the AS2 protocol.
  /// [description] Optional description of the transdfer.
  /// [localProfileId] Unique identifier for the AS2 local profile.
  /// [partnerProfileId] Unique identifier for the AS2 partner profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverId] Unique server identifier for the server instance. This is the specific server the agreement uses.
  /// [status] Status of the agreement which is either ACTIVE or INACTIVE.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  const AgreementState({
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
      accessRole: (() { final guardedValue = map['accessRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agreementId: (() { final guardedValue = map['agreementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      baseDirectory: (() { final guardedValue = map['baseDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localProfileId: (() { final guardedValue = map['localProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerProfileId: (() { final guardedValue = map['partnerProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
