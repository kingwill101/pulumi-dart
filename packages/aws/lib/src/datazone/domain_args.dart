// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_single_sign_on.dart';
import 'domain_timeouts.dart';

/// {@template pulumi_datazone_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_datazone_domain_domain_args_doc}
class DomainArgs {
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

  /// Creates a new [DomainArgs].
  /// [description] Description of the Domain.
  /// [domainExecutionRole] ARN of the role used by DataZone to configure the Domain.
  /// [domainVersion] Version of the Domain. Valid values are `V1` and `V2`. Defaults to `V1`.
  /// [kmsKeyIdentifier] ARN of the KMS key used to encrypt the Amazon DataZone domain, metadata and reporting data.
  /// [name] Name of the Domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceRole] ARN of the service role used by DataZone. Required when `domain_version` is set to `V2`.
  /// [singleSignOn] Single sign on options, used to [enable AWS IAM Identity Center](https://docs.aws.amazon.com/datazone/latest/userguide/enable-IAM-identity-center-for-datazone.html) for DataZone.
  /// [skipDeletionCheck] Whether to skip the deletion check for the Domain.
  /// [tags] Optional.
  /// [timeouts] Optional.
  DomainArgs({
    String? description,
    required String domainExecutionRole,
    String? domainVersion,
    String? kmsKeyIdentifier,
    String? name,
    String? region,
    String? serviceRole,
    DomainSingleSignOn? singleSignOn,
    bool? skipDeletionCheck,
    Map<String, String>? tags,
    DomainTimeouts? timeouts,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        domainExecutionRole = pulumi.Input.asInput<String>(domainExecutionRole),
        domainVersion = pulumi.Input.asOptionalInput<String>(domainVersion),
        kmsKeyIdentifier =
            pulumi.Input.asOptionalInput<String>(kmsKeyIdentifier),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        serviceRole = pulumi.Input.asOptionalInput<String>(serviceRole),
        singleSignOn =
            pulumi.Input.asOptionalInput<DomainSingleSignOn>(singleSignOn),
        skipDeletionCheck =
            pulumi.Input.asOptionalInput<bool>(skipDeletionCheck),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timeouts = pulumi.Input.asOptionalInput<DomainTimeouts>(timeouts);

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

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      domainExecutionRole: map['domainExecutionRole'] as String,
      domainVersion:
          map['domainVersion'] == null ? null : map['domainVersion'] as String,
      kmsKeyIdentifier: map['kmsKeyIdentifier'] == null
          ? null
          : map['kmsKeyIdentifier'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serviceRole:
          map['serviceRole'] == null ? null : map['serviceRole'] as String,
      singleSignOn: map['singleSignOn'] == null
          ? null
          : DomainSingleSignOn.fromMap(
              (map['singleSignOn'] as Map).cast<String, dynamic>()),
      skipDeletionCheck: map['skipDeletionCheck'] == null
          ? null
          : map['skipDeletionCheck'] as bool,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : DomainTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
