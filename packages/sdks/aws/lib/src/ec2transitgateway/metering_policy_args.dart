// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metering_policy_timeouts.dart';

/// {@template pulumi_ec2transitgateway_metering_policy_metering_policy_args_doc}
/// The set of arguments for MeteringPolicy.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_metering_policy_metering_policy_args_doc}
class MeteringPolicyArgs {
  /// Set of Transit Gateway attachment IDs to designate as middlebox attachments for this metering policy.
  final pulumi.Input<List<String>>? middleboxAttachmentIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the EC2 Transit Gateway Metering Policy. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<MeteringPolicyTimeouts>? timeouts;
  /// EC2 Transit Gateway identifier.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> transitGatewayId;

  /// Creates a new [MeteringPolicyArgs].
  /// [middleboxAttachmentIds] Set of Transit Gateway attachment IDs to designate as middlebox attachments for this metering policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway Metering Policy. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [transitGatewayId] EC2 Transit Gateway identifier.
  const MeteringPolicyArgs({
    this.middleboxAttachmentIds,
    this.region,
    this.tags,
    this.timeouts,
    required this.transitGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'middleboxAttachmentIds': ?middleboxAttachmentIds,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<MeteringPolicyTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'transitGatewayId': transitGatewayId,
    };
  }

  factory MeteringPolicyArgs.fromMap(Map<String, dynamic> map) {
    return MeteringPolicyArgs(
      middleboxAttachmentIds: (() { final guardedValue = map['middleboxAttachmentIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MeteringPolicyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transitGatewayId: pulumi.Input.fromValue(map['transitGatewayId'] as String),
    );
  }
}
