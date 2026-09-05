// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metering_policy_timeouts.dart';

/// Input properties used for looking up and filtering MeteringPolicy resources.
class MeteringPolicyState {
  /// EC2 Transit Gateway Metering Policy ARN.
  final pulumi.Input<String?>? arn;
  /// Set of Transit Gateway attachment IDs to designate as middlebox attachments for this metering policy.
  final pulumi.Input<List<String>?>? middleboxAttachmentIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value tags for the EC2 Transit Gateway Metering Policy. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<MeteringPolicyTimeouts?>? timeouts;
  /// EC2 Transit Gateway identifier.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? transitGatewayId;
  /// EC2 Transit Gateway Metering Policy identifier.
  final pulumi.Input<String?>? transitGatewayMeteringPolicyId;

  /// Creates a new [MeteringPolicyState].
  /// [arn] EC2 Transit Gateway Metering Policy ARN.
  /// [middleboxAttachmentIds] Set of Transit Gateway attachment IDs to designate as middlebox attachments for this metering policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway Metering Policy. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [transitGatewayId] EC2 Transit Gateway identifier.
  /// [transitGatewayMeteringPolicyId] EC2 Transit Gateway Metering Policy identifier.
  const MeteringPolicyState({
    this.arn,
    this.middleboxAttachmentIds,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.transitGatewayId,
    this.transitGatewayMeteringPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'middleboxAttachmentIds': ?middleboxAttachmentIds,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<MeteringPolicyTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'transitGatewayId': ?transitGatewayId,
      'transitGatewayMeteringPolicyId': ?transitGatewayMeteringPolicyId,
    };
  }

  factory MeteringPolicyState.fromMap(Map<String, dynamic> map) {
    return MeteringPolicyState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      middleboxAttachmentIds: (() { final guardedValue = map['middleboxAttachmentIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MeteringPolicyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitGatewayMeteringPolicyId: (() { final guardedValue = map['transitGatewayMeteringPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
