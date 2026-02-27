// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_single_sign_on/domain_single_sign_on.dart';
import '../domain_timeouts/domain_timeouts.dart';

/// The set of arguments for Domain.
class DomainDatazoneArgs {
  /// Description of the Domain.
  final pulumi.Input<String>? description;

  /// ARN of the role used by DataZone to configure the Domain.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> domainExecutionRole;

  /// Version of the Domain. Valid values are `V1` and `V2`. Defaults to `V1`.
  final pulumi.Input<String>? domainVersion;

  /// ARN of the KMS key used to encrypt the Amazon DataZone domain, metadata and reporting data.
  final pulumi.Input<String>? kmsKeyIdentifier;

  /// Name of the Domain.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the service role used by DataZone. Required when `domain_version` is set to `V2`.
  final pulumi.Input<String>? serviceRole;

  /// Single sign on options, used to [enable AWS IAM Identity Center](https://docs.aws.amazon.com/datazone/latest/userguide/enable-IAM-identity-center-for-datazone.html) for DataZone.
  final pulumi.Input<DomainSingleSignOn>? singleSignOn;

  /// Whether to skip the deletion check for the Domain.
  final pulumi.Input<bool>? skipDeletionCheck;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<DomainTimeouts>? timeouts;

  DomainDatazoneArgs({
    this.description,
    required this.domainExecutionRole,
    this.domainVersion,
    this.kmsKeyIdentifier,
    this.name,
    this.region,
    this.serviceRole,
    this.singleSignOn,
    this.skipDeletionCheck,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['domainExecutionRole'] = domainExecutionRole;
    final domainVersionValue = domainVersion;
    if (domainVersionValue != null) {
      map['domainVersion'] = domainVersionValue;
    }
    final kmsKeyIdentifierValue = kmsKeyIdentifier;
    if (kmsKeyIdentifierValue != null) {
      map['kmsKeyIdentifier'] = kmsKeyIdentifierValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serviceRoleValue = serviceRole;
    if (serviceRoleValue != null) {
      map['serviceRole'] = serviceRoleValue;
    }
    final singleSignOnValue = singleSignOn;
    if (singleSignOnValue != null) {
      map['singleSignOn'] = pulumi.Input.mapOptionalInputValue<
          DomainSingleSignOn,
          Map<String, dynamic>>(singleSignOnValue, (value) => value.toMap());
    }
    final skipDeletionCheckValue = skipDeletionCheck;
    if (skipDeletionCheckValue != null) {
      map['skipDeletionCheck'] = skipDeletionCheckValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<DomainTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DomainDatazoneArgs.fromMap(Map<String, dynamic> map) {
    return DomainDatazoneArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      domainExecutionRole:
          pulumi.Input.asInput<String>(map['domainExecutionRole']),
      domainVersion: pulumi.Input.asOptionalInput<String>(map['domainVersion']),
      kmsKeyIdentifier:
          pulumi.Input.asOptionalInput<String>(map['kmsKeyIdentifier']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceRole: pulumi.Input.asOptionalInput<String>(map['serviceRole']),
      singleSignOn:
          pulumi.Input.asOptionalInput<DomainSingleSignOn>(map['singleSignOn']),
      skipDeletionCheck:
          pulumi.Input.asOptionalInput<bool>(map['skipDeletionCheck']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<DomainTimeouts>(map['timeouts']),
    );
  }
}
