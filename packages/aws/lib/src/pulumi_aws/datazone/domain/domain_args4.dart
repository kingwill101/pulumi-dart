// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_single_sign_on/domain_single_sign_on.dart';
import '../domain_timeouts/domain_timeouts.dart';

/// The set of arguments for Domain.
class DomainArgs4 {
  /// Description of the Domain.
  final Input<String>? description;

  /// ARN of the role used by DataZone to configure the Domain.
  ///
  /// The following arguments are optional:
  final Input<String> domainExecutionRole;

  /// Version of the Domain. Valid values are `V1` and `V2`. Defaults to `V1`.
  final Input<String>? domainVersion;

  /// ARN of the KMS key used to encrypt the Amazon DataZone domain, metadata and reporting data.
  final Input<String>? kmsKeyIdentifier;

  /// Name of the Domain.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the service role used by DataZone. Required when <span pulumi-lang-nodejs="`domainVersion`" pulumi-lang-dotnet="`DomainVersion`" pulumi-lang-go="`domainVersion`" pulumi-lang-python="`domain_version`" pulumi-lang-yaml="`domainVersion`" pulumi-lang-java="`domainVersion`">`domain_version`</span> is set to `V2`.
  final Input<String>? serviceRole;

  /// Single sign on options, used to [enable AWS IAM Identity Center](https://docs.aws.amazon.com/datazone/latest/userguide/enable-IAM-identity-center-for-datazone.html) for DataZone.
  final Input<DomainSingleSignOn>? singleSignOn;

  /// Whether to skip the deletion check for the Domain.
  final Input<bool>? skipDeletionCheck;
  final Input<Map<String, String>>? tags;
  final Input<DomainTimeouts>? timeouts;

  DomainArgs4({
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
      map['singleSignOn'] =
          Input.mapOptionalInputValue<DomainSingleSignOn, Map<String, dynamic>>(
              singleSignOnValue, (value) => value.toMap());
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
      map['timeouts'] =
          Input.mapOptionalInputValue<DomainTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DomainArgs4.fromMap(Map<String, dynamic> map) {
    return DomainArgs4(
      description: Input.asOptionalInput<String>(map['description']),
      domainExecutionRole: Input.asInput<String>(map['domainExecutionRole']),
      domainVersion: Input.asOptionalInput<String>(map['domainVersion']),
      kmsKeyIdentifier: Input.asOptionalInput<String>(map['kmsKeyIdentifier']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceRole: Input.asOptionalInput<String>(map['serviceRole']),
      singleSignOn:
          Input.asOptionalInput<DomainSingleSignOn>(map['singleSignOn']),
      skipDeletionCheck: Input.asOptionalInput<bool>(map['skipDeletionCheck']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<DomainTimeouts>(map['timeouts']),
    );
  }
}
