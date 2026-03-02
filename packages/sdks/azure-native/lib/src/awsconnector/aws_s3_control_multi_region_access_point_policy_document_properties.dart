// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'established_multi_region_access_point_policy.dart';
import 'proposed_multi_region_access_point_policy.dart';

/// Definition of awsS3ControlMultiRegionAccessPointPolicyDocument
class AwsS3ControlMultiRegionAccessPointPolicyDocumentProperties {
  /// <p>The last established policy for the Multi-Region Access Point.</p>
  final pulumi.Input<EstablishedMultiRegionAccessPointPolicy>? established;
  /// <p>The proposed policy for the Multi-Region Access Point.</p>
  final pulumi.Input<ProposedMultiRegionAccessPointPolicy>? proposed;

  /// Creates a new [AwsS3ControlMultiRegionAccessPointPolicyDocumentProperties].
  /// [established] <p>The last established policy for the Multi-Region Access Point.</p>
  /// [proposed] <p>The proposed policy for the Multi-Region Access Point.</p>
  AwsS3ControlMultiRegionAccessPointPolicyDocumentProperties({
    this.established,
    this.proposed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'established': ?pulumi.Input.mapOptionalInputValue<EstablishedMultiRegionAccessPointPolicy, Map<String, dynamic>>(established, (value) => value.toMap()),
      'proposed': ?pulumi.Input.mapOptionalInputValue<ProposedMultiRegionAccessPointPolicy, Map<String, dynamic>>(proposed, (value) => value.toMap()),
    };
  }

  factory AwsS3ControlMultiRegionAccessPointPolicyDocumentProperties.fromMap(Map<String, dynamic> map) {
    return AwsS3ControlMultiRegionAccessPointPolicyDocumentProperties(
      established: map['established'] == null ? null : (EstablishedMultiRegionAccessPointPolicy.fromMap((map['established'] as Map).cast<String, dynamic>())).input(),
      proposed: map['proposed'] == null ? null : (ProposedMultiRegionAccessPointPolicy.fromMap((map['proposed'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

