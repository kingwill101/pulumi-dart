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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? domainExecutionRole,
    pulumi.Output<String>? domainVersion,
    pulumi.Output<String>? kmsKeyIdentifier,
    pulumi.Output<String>? name,
    pulumi.Output<String>? portalUrl,
    pulumi.Output<String>? region,
    pulumi.Output<String>? rootDomainUnitId,
    pulumi.Output<String>? serviceRole,
    pulumi.Output<DomainSingleSignOn>? singleSignOn,
    pulumi.Output<bool>? skipDeletionCheck,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<DomainTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      domainExecutionRole = pulumi.Input.asOptionalInput<String>(domainExecutionRole),
      domainVersion = pulumi.Input.asOptionalInput<String>(domainVersion),
      kmsKeyIdentifier = pulumi.Input.asOptionalInput<String>(kmsKeyIdentifier),
      name = pulumi.Input.asOptionalInput<String>(name),
      portalUrl = pulumi.Input.asOptionalInput<String>(portalUrl),
      region = pulumi.Input.asOptionalInput<String>(region),
      rootDomainUnitId = pulumi.Input.asOptionalInput<String>(rootDomainUnitId),
      serviceRole = pulumi.Input.asOptionalInput<String>(serviceRole),
      singleSignOn = pulumi.Input.asOptionalInput<DomainSingleSignOn>(singleSignOn),
      skipDeletionCheck = pulumi.Input.asOptionalInput<bool>(skipDeletionCheck),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<DomainTimeouts>(timeouts);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domainExecutionRole: map['domainExecutionRole'] == null ? null : pulumi.Output.create<String>(map['domainExecutionRole'] as String),
      domainVersion: map['domainVersion'] == null ? null : pulumi.Output.create<String>(map['domainVersion'] as String),
      kmsKeyIdentifier: map['kmsKeyIdentifier'] == null ? null : pulumi.Output.create<String>(map['kmsKeyIdentifier'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      portalUrl: map['portalUrl'] == null ? null : pulumi.Output.create<String>(map['portalUrl'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rootDomainUnitId: map['rootDomainUnitId'] == null ? null : pulumi.Output.create<String>(map['rootDomainUnitId'] as String),
      serviceRole: map['serviceRole'] == null ? null : pulumi.Output.create<String>(map['serviceRole'] as String),
      singleSignOn: map['singleSignOn'] == null ? null : pulumi.Output.create<DomainSingleSignOn>(DomainSingleSignOn.fromMap((map['singleSignOn'] as Map).cast<String, dynamic>())),
      skipDeletionCheck: map['skipDeletionCheck'] == null ? null : pulumi.Output.create<bool>(map['skipDeletionCheck'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<DomainTimeouts>(DomainTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

