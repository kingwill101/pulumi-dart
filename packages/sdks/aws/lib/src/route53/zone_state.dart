// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_vpc.dart';

/// Input properties used for looking up and filtering Zone resources.
class ZoneState {
  /// The Amazon Resource Name (ARN) of the Hosted Zone.
  final pulumi.Input<String>? arn;
  /// A comment for the hosted zone. Defaults to 'Managed by Pulumi'.
  final pulumi.Input<String>? comment;
  /// The ID of the reusable delegation set whose NS records you want to assign to the hosted zone. Conflicts with `vpc` as delegation sets can only be used for public zones.
  final pulumi.Input<String>? delegationSetId;
  /// Boolean to indicate whether to enable accelerated recovery for the hosted zone. Defaults to `false`. Once set, switching to `false` requires explicitly specifying `false` rather than removing the argument.
  final pulumi.Input<bool>? enableAcceleratedRecovery;
  /// Whether to destroy all records (possibly managed outside of this provider) in the zone when destroying the zone.
  final pulumi.Input<bool>? forceDestroy;
  /// This is the name of the hosted zone.
  final pulumi.Input<String>? name;
  /// A list of name servers in associated (or default) delegation set.
  /// Find more about delegation sets in [AWS docs](https://docs.aws.amazon.com/Route53/latest/APIReference/actions-on-reusable-delegation-sets.html).
  final pulumi.Input<List<String>>? nameServers;
  /// The Route 53 name server that created the SOA record.
  final pulumi.Input<String>? primaryNameServer;
  /// A mapping of tags to assign to the zone. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration block(s) specifying VPC(s) to associate with a private hosted zone. Conflicts with the `delegation_set_id` argument in this resource and any `aws.route53.ZoneAssociation` resource specifying the same zone ID. Detailed below.
  final pulumi.Input<List<ZoneVpc>>? vpcs;
  /// The Hosted Zone ID. This can be referenced by zone records.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ZoneState].
  /// [arn] The Amazon Resource Name (ARN) of the Hosted Zone.
  /// [comment] A comment for the hosted zone. Defaults to 'Managed by Pulumi'.
  /// [delegationSetId] The ID of the reusable delegation set whose NS records you want to assign to the hosted zone. Conflicts with `vpc` as delegation sets can only be used for public zones.
  /// [enableAcceleratedRecovery] Boolean to indicate whether to enable accelerated recovery for the hosted zone. Defaults to `false`. Once set, switching to `false` requires explicitly specifying `false` rather than removing the argument.
  /// [forceDestroy] Whether to destroy all records (possibly managed outside of this provider) in the zone when destroying the zone.
  /// [name] This is the name of the hosted zone.
  /// [nameServers] A list of name servers in associated (or default) delegation set.
  /// [primaryNameServer] The Route 53 name server that created the SOA record.
  /// [tags] A mapping of tags to assign to the zone. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcs] Configuration block(s) specifying VPC(s) to associate with a private hosted zone. Conflicts with the `delegation_set_id` argument in this resource and any `aws.route53.ZoneAssociation` resource specifying the same zone ID. Detailed below.
  /// [zoneId] The Hosted Zone ID. This can be referenced by zone records.
  ZoneState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? comment,
    pulumi.Output<String>? delegationSetId,
    pulumi.Output<bool>? enableAcceleratedRecovery,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? nameServers,
    pulumi.Output<String>? primaryNameServer,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<ZoneVpc>>? vpcs,
    pulumi.Output<String>? zoneId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      comment = pulumi.Input.asOptionalInput<String>(comment),
      delegationSetId = pulumi.Input.asOptionalInput<String>(delegationSetId),
      enableAcceleratedRecovery = pulumi.Input.asOptionalInput<bool>(enableAcceleratedRecovery),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      name = pulumi.Input.asOptionalInput<String>(name),
      nameServers = pulumi.Input.asOptionalInput<List<String>>(nameServers),
      primaryNameServer = pulumi.Input.asOptionalInput<String>(primaryNameServer),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcs = pulumi.Input.asOptionalInput<List<ZoneVpc>>(vpcs),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'comment': ?comment,
      'delegationSetId': ?delegationSetId,
      'enableAcceleratedRecovery': ?enableAcceleratedRecovery,
      'forceDestroy': ?forceDestroy,
      'name': ?name,
      'nameServers': ?nameServers,
      'primaryNameServer': ?primaryNameServer,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcs': ?pulumi.Input.mapOptionalInputValue<List<ZoneVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<ZoneVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory ZoneState.fromMap(Map<String, dynamic> map) {
    return ZoneState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      delegationSetId: map['delegationSetId'] == null ? null : pulumi.Output.create<String>(map['delegationSetId'] as String),
      enableAcceleratedRecovery: map['enableAcceleratedRecovery'] == null ? null : pulumi.Output.create<bool>(map['enableAcceleratedRecovery'] as bool),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nameServers: map['nameServers'] == null ? null : pulumi.Output.create<List<String>>((map['nameServers'] as List).cast<String>()),
      primaryNameServer: map['primaryNameServer'] == null ? null : pulumi.Output.create<String>(map['primaryNameServer'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcs: map['vpcs'] == null ? null : pulumi.Output.create<List<ZoneVpc>>(pulumi.Input.decodeList<ZoneVpc>(map['vpcs'], (value) => ZoneVpc.fromMap((value as Map).cast<String, dynamic>()))),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

