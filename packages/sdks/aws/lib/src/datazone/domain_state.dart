// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_single_sign_on.dart';
import 'domain_timeouts.dart';

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  /// ARN of the Domain.
  final pulumi.Input<String>? arn;
  /// Description of the Domain.
  final pulumi.Input<String>? description;
  /// ARN of the role used by DataZone to configure the Domain.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? domainExecutionRole;
  /// Version of the Domain. Valid values are `V1` and `V2`. Defaults to `V1`.
  final pulumi.Input<String>? domainVersion;
  /// ARN of the KMS key used to encrypt the Amazon DataZone domain, metadata and reporting data.
  final pulumi.Input<String>? kmsKeyIdentifier;
  /// Name of the Domain.
  final pulumi.Input<String>? name;
  /// URL of the data portal for the Domain.
  final pulumi.Input<String>? portalUrl;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the root domain unit.
  final pulumi.Input<String>? rootDomainUnitId;
  /// ARN of the service role used by DataZone. Required when `domain_version` is set to `V2`.
  final pulumi.Input<String>? serviceRole;
  /// Single sign on options, used to [enable AWS IAM Identity Center](https://docs.aws.amazon.com/datazone/latest/userguide/enable-IAM-identity-center-for-datazone.html) for DataZone.
  final pulumi.Input<DomainSingleSignOn>? singleSignOn;
  /// Whether to skip the deletion check for the Domain.
  final pulumi.Input<bool>? skipDeletionCheck;
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<DomainTimeouts>? timeouts;

  /// Creates a new [DomainState].
  /// [arn] ARN of the Domain.
  /// [description] Description of the Domain.
  /// [domainExecutionRole] ARN of the role used by DataZone to configure the Domain.
  /// [domainVersion] Version of the Domain. Valid values are `V1` and `V2`. Defaults to `V1`.
  /// [kmsKeyIdentifier] ARN of the KMS key used to encrypt the Amazon DataZone domain, metadata and reporting data.
  /// [name] Name of the Domain.
  /// [portalUrl] URL of the data portal for the Domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootDomainUnitId] ID of the root domain unit.
  /// [serviceRole] ARN of the service role used by DataZone. Required when `domain_version` is set to `V2`.
  /// [singleSignOn] Single sign on options, used to [enable AWS IAM Identity Center](https://docs.aws.amazon.com/datazone/latest/userguide/enable-IAM-identity-center-for-datazone.html) for DataZone.
  /// [skipDeletionCheck] Whether to skip the deletion check for the Domain.
  /// [tags] Optional.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  DomainState({
    this.arn,
    this.description,
    this.domainExecutionRole,
    this.domainVersion,
    this.kmsKeyIdentifier,
    this.name,
    this.portalUrl,
    this.region,
    this.rootDomainUnitId,
    this.serviceRole,
    this.singleSignOn,
    this.skipDeletionCheck,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'domainExecutionRole': ?domainExecutionRole,
      'domainVersion': ?domainVersion,
      'kmsKeyIdentifier': ?kmsKeyIdentifier,
      'name': ?name,
      'portalUrl': ?portalUrl,
      'region': ?region,
      'rootDomainUnitId': ?rootDomainUnitId,
      'serviceRole': ?serviceRole,
      'singleSignOn': ?pulumi.Input.mapOptionalInputValue<DomainSingleSignOn, Map<String, dynamic>>(singleSignOn, (value) => value.toMap()),
      'skipDeletionCheck': ?skipDeletionCheck,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DomainTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      domainExecutionRole: map['domainExecutionRole'] == null ? null : (map['domainExecutionRole'] as String).input(),
      domainVersion: map['domainVersion'] == null ? null : (map['domainVersion'] as String).input(),
      kmsKeyIdentifier: map['kmsKeyIdentifier'] == null ? null : (map['kmsKeyIdentifier'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      portalUrl: map['portalUrl'] == null ? null : (map['portalUrl'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      rootDomainUnitId: map['rootDomainUnitId'] == null ? null : (map['rootDomainUnitId'] as String).input(),
      serviceRole: map['serviceRole'] == null ? null : (map['serviceRole'] as String).input(),
      singleSignOn: map['singleSignOn'] == null ? null : (DomainSingleSignOn.fromMap((map['singleSignOn'] as Map).cast<String, dynamic>())).input(),
      skipDeletionCheck: map['skipDeletionCheck'] == null ? null : (map['skipDeletionCheck'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (DomainTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

